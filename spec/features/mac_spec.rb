require 'rails_helper'
#save_and_open_page

feature 'Choose Essential || Useful tools' do

  scenario 'A user can select the essential tool' do
    visit '/mac/'
    expect(page).to have_content('Essential tools')
    click_link 'Essential tools'
    expect(current_path).to eq ('/mac/essential-tools')
  end

  scenario 'A user can select the useful tool' do
    visit '/mac/'
    expect(page).to have_content('Useful tools')
    click_link 'Useful tools'
    expect(current_path).to eq ('/mac/useful-tools')
  end

end

feature 'Esential tool page' do

  scenario 'A user can select the Xcode' do
    visit '/mac/essential-tools'
    click_link 'Xcode'
    expect(current_path).to eq ('/mac/essential-tools/install/xcode')
    expect(page).to have_content 'Xcode Set Up'
  end

  scenario 'A user can select Homebrew' do
    visit '/mac/essential-tools'
    click_link 'Homebrew'
    expect(current_path).to eq ('/mac/essential-tools/install/homebrew')
    expect(page).to have_content 'Homebrew Set Up'
  end

  scenario 'A user can select the Ruby' do
    visit '/mac/essential-tools'
    click_link 'Ruby'
    expect(current_path).to eq ('/mac/essential-tools/install/ruby-and-rvm')
    expect(page).to have_content 'Ruby & Rvm Set Up'
  end

  scenario 'A user can select the Pry' do
    visit '/mac/essential-tools'
    click_link 'Pry'
    expect(current_path).to eq ('/mac/essential-tools/install/pry')
    expect(page).to have_content 'Pry Set Up'
  end

  scenario 'A user can select the Heroku' do
    visit '/mac/essential-tools'
    click_link 'Heroku'
    expect(current_path).to eq ('/mac/essential-tools/install/heroku')
    expect(page).to have_content 'Heroku Set Up'
  end

end

feature 'Essential Tools JS testes' do

  xscenario 'When I hover a column, it add the hover class', js: :true do
    visit '/essential-tools'
    #save_and_open_page
    find ('.home__col--1').hover
    find ('.home__col--hover')
    expect(page).to have_css('.home__col--hover')
    expect(page).to have_css('.home__col--other')
  end

end
