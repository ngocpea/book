require 'rails_helper'

RSpec.feature 'Signed-in users can sign out' do
  let!(:user) { FactoryBot.create(:user) }

  before do
    login_as(user)
  end

  scenario 'when logged in' do
	  visit '/'
	  click_link 'Sign out'
	  expect(page).to have_link('Sign up')
    end
end