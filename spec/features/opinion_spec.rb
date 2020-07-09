require_relative '../rails_helper'

RSpec.feature 'Create Opinion', type: :feature do
  before :each do
    user = User.create(FullName: 'Nama Muan', Username: 'nama')
    opinion = user.opinions.build(Text: 'Test opinion')
    opinion.save
    visit root_path
    page.fill_in 'Username', with: 'nama'
    click_button 'Log In'
  end

  scenario 'Opinion creation', type: :feature do
    expect(page.current_path).to eq '/opinions'
    page.fill_in 'opinion[Text]', with: 'Test opinion'
    click_button 'commit'
    expect(page).to have_text 'Test opinion'
  end
end
