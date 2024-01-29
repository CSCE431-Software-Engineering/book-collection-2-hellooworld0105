# rspec spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'creating a book', type: :feature do
  scenario 'valid inputs' do
    visit addbook_path
    fill_in 'title', with: 'Harry Potter'
    click_on 'Add Book'
    expect(page).to have_content("Created Book: Harry Potter")
  end

  scenario 'creating a book with a blank title' do
    visit addbook_path
    fill_in 'title', with: '' 
    click_on 'Add Book'
    expect(page).to have_content("[Recent Activity]")
  end
end

RSpec.describe 'creating a book', type: :feature do
    scenario 'new attributes - author' do
      visit addbook_path
      fill_in 'title', with: 'Harry Potter'
      fill_in 'author', with: 'J.K. Rowling'
      fill_in 'price', with: '29.99'
      fill_in 'published_date', with: Date.today.strftime('%Y-%m-%d')
      click_on 'Add Book'
      expect(page).to have_content('Created Book: Harry Potter')
    end

    scenario 'new attributes - price' do
        visit addbook_path
        fill_in 'title', with: 'New Way'
        fill_in 'author', with: 'Nahi Soh'
        fill_in 'price', with: '9.99'
        fill_in 'published_date', with: Date.today.strftime('%Y-%m-%d')
        click_on 'Add Book'
        expect(page).to have_content('Created Book: New Way')
    end

    scenario 'new attributes - published_date' do
        visit addbook_path
        fill_in 'title', with: 'Stars'
        fill_in 'author', with: 'Twinkle Sar'
        fill_in 'price', with: '12.99'
        fill_in 'published_date', with: Date.today.strftime('%Y-%m-%d')
        click_on 'Add Book'
        expect(page).to have_content('Created Book: Stars')
    end

end