require 'rails_helper'

feature 'Home :' do
  scenario 'When I go to the root I can see the homepage' do
    visit '/'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Dev Environment Setup'
  end
end
