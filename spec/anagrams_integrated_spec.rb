require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application

describe ('anagram path', {:type =>:feature}) do
  it('It inputs a word and returns an anagram') do
    visit ('/')
    fill_in('word1', :with => 'dog')
    fill_in('word2', :with => 'god')
    click_button('Send')
    expect(page).to have_content("god")
  end
end
