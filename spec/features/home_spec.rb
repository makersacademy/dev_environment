require 'rails_helper'
#save_and_open_page
feature 'Home :' do
  scenario 'When I go to the root I can see the homepage' do
    visit '/'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Dev Environment Setup'
    expect(page).to have_content 'Welcome'
    click_link("Let's start")
    expect(page).to have_content('Pick up your OS')
  end
end


feature 'page is called with AJAX' do
  xscenario 'the user click on a link' do
    visit ('/')
    click_link "Let's start"
    using_wait_time 10 do
      page.should have_content("Mac")
    end
  end
end
