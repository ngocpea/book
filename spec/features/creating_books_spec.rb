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
end

