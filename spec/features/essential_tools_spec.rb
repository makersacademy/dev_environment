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
    expect(page).to have_content 'Heroku & Git Set Up'
  end

end
