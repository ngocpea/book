
require 'rails_helper'
require 'pry'

RSpec.feature 'Users can create new books' do
  let(:book) { FactoryBot.build(:book) }
  let(:user) { FactoryBot.create(:user) }

  # sign in user
  context "when logged in" do
    before do
      login_as(user, scope: :user)
      visit '/'
    end

    scenario 'with valid attributes' do
      visit '/'
      click_link 'New Book'
      fill_in 'Title', with: book[:title]
      fill_in 'Author', with: book[:author]
      click_button 'Create Book'
      expect(page).to have_content(book[:title])
      expect(page).to have_content(book[:author])
    end

    scenario 'cannot create book when title is taken' do
      book.save!
      visit '/'
      click_link 'New Book'
      fill_in 'Title', with: book[:title]
      click_button 'Create Book'
      expect(page).to have_content('Title is already taken')
      #save_and_open_page
      end
    end
end
