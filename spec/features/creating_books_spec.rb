require 'rails_helper'

RSpec.feature 'Users can create new books' do
	scenario 'with valid attributes' do
		visit '/'
		click_link 'New Book'
		fill_in 'Title', with: 'Sample Title'
		fill_in 'Author', with: 'Sample Author'
		click_button 'Create Book'

		expect(page).to have_content 'Book has been created.'
	end
end