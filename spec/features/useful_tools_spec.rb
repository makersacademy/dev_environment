feature 'Useful tool page' do

  scenario 'A user can select the Iterm' do
    visit '/mac/useful-tools'
    click_link 'Iterm'
    expect(current_path).to eq ('/mac/useful-tools/install/iterm')
    expect(page).to have_content 'Iterm Set Up'
  end

  scenario 'A user can select Atom' do
    visit '/mac/useful-tools'
    click_link 'Atom'
    expect(current_path).to eq ('/mac/useful-tools/install/atom')
    expect(page).to have_content 'Atom Set Up'
  end

  scenario 'A user can select the Vim' do
    visit '/mac/useful-tools'
    click_link 'Vim'
    expect(current_path).to eq ('/mac/useful-tools/install/vim')
    expect(page).to have_content 'Vim Set Up'
  end

  scenario 'A user can select the Google Chorme' do
    visit '/mac/useful-tools'
    click_link 'Google Chrome'
    expect(current_path).to eq ('/mac/useful-tools/install/google-chrome')
    expect(page).to have_content 'Google Chrome Set Up'
  end

  scenario 'A user can select the GitBook' do
    visit '/mac/useful-tools'
    click_link 'Git Book'
    expect(current_path).to eq ('/mac/useful-tools/install/git-book')
    expect(page).to have_content 'Git Book Set Up'
  end

end
