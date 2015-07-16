require 'rails_helper'
#save_and_open_page
feature 'Home :' do
  scenario 'I can click on essential tool' do
    visit '/'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Essential tools'

    click_link 'Essential tools'
  end

end
