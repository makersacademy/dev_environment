require 'rails_helper'

feature 'Home :' do
  scenario 'When I go to the root I can see the homepage' do
    visit '/'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Dev Environment Setup'
  end

  scenario 'When I click on the link of the col 1 I go to the right page' do
    visit '/'
    click_link('Set up Xcode')
    expect(page).to have_content('Xcode Set Up')
  end

  scenario 'When I click on the link of the col 2 I go to the right page' do
    visit '/'
    click_link('Set up Ruby')
    expect(page).to have_content('Ruby & Rvm Set Up')
  end

  scenario 'When I click on the link of the col 3 I go to the right page' do
    visit '/'
    click_link('Set up Pry')
    expect(page).to have_content('Pry Set Up')
  end

  scenario 'When I click on the link of the col 4 I go to the right page' do
    visit '/'
    click_link('Set up Heroku')
    expect(page).to have_content('Heroku Set Up')
  end

  scenario 'When I click on the link of the col 5 I go to the right page' do
    visit '/'
    click_link('Set up Git')
    expect(page).to have_content('Git Set Up')
  end

  scenario 'When I hover a column, it add the right class', js: :true do
    visit '/'
    find('.home__col--1').hover
    find '.home__col--hover'
      expect(page).to have_css('.home__col--hover')
      expect(page).to have_css('.home__col--other')
  end

end
