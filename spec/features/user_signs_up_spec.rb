  scenario 'provide valid registration information' do
    visit new_user_registration_path

    fill_in 'User Name', with: 'getschomp'
    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    expect(page).to have_content("can't be blank")
    expect(page).to_not have_content('Sign Out')
   end

  scenario 'user enters a username that is already in the database' do
    @user = FactoryGirl.build(:user)
    sign_up(@user)
    click_on "Sign Out"
    sign_up(@user)
    save_and_open_page
    expect(page).to have_content("Username has already been taken")
    expect(page).to have_content('Email has already been taken')
    save_and_open_page
  end

 end
