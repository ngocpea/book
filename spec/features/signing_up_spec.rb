require 'rails_helper'

RSpec.feature 'Users can sign in' do
  let!(:user) { FactoryBot.create(:user) }

  scenario 'when providing valid details' do
    visit '/'
    click_link 'Sign up'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'
    expect(page).to have_content("Welcome, #{user.email}")
  end
end