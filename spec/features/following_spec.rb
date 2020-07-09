RSpec.feature 'Following', type: :feature do
  before :each do
    @user = User.create(FullName: 'Nama Muan', Username: 'nama')
    @user = User.create(FullName: 'Chumbaa Phylis', Username: 'chumbaa')
  end
  it 'Should be able to follow a user' do
    visit root_path
    fill_in 'Username', with: 'nama'
    click_button 'Log In'
    click_on 'chumbaa'
    first(:css, '.btn-primary').click
    expect(page).to have_content('LOGOUT')
  end

  it 'Should be able to unfollow a user' do
    visit root_path
    fill_in 'Username', with: 'nama'
    click_button 'Log In'
    click_on 'chumbaa'
    first(:css, '.btn-primary').click
    first(:css, '.btn').click
    expect(page).to have_content('LOGOUT')
  end
end
