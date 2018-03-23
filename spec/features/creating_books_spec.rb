require 'rails_helper'

RSpec.feature 'Users can create new books' do
  let(:book) { FactoryBot.create(:book) }
  let(:user) { FactoryBot.create(:user) }

  scenario 'with valid attributes' do
    visit '/'
    click_link 'New Book'
    fill_in 'Title', with: book.title
    fill_in 'Author', with: book.author
    click_button 'Create Book'
    expect(page).to have_current_path(book_path(new_book))
  end

  scenario 'cannot create book when title is taken' do
    fill_in 'Title', with: book.title
    fill_in 'TItle', with: book.title
    book.save
    click_button 'Create Book'
    expect(page).to have_content('Title is already taken.')
  end
end
