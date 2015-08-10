require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('processes the user entry and returns the total shipping cost') do
    visit('/')
    fill_in('length', :with => 2)
    fill_in('width', :with => 2)
    fill_in('depth', :with => 2)
    fill_in('weight', :with => 2)
    fill_in('distance', :with => 100)
    select('5', :from => 'speed')
    click_button('CALCULATE COST')
    expect(page).to have_content('30')
  end
end
