require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcels_path', {:type => :feature}) do
  it('searches the result page for the volume of the parcel') do
    visit('/')
    fill_in('height', :with => '5')
    fill_in('width', :with => '6')
    fill_in('depth', :with => '7')
    fill_in('weight', :with => '7')
    fill_in('distance', :with => '7')
    check('fast_delivery')
    click_button('Tell Me!')
    expect(page).to have_content("210")
  end

  it('searches the result page for the volume of the parcel') do
    visit('/')
    fill_in('height', :with => '5')
    fill_in('width', :with => '6')
    fill_in('depth', :with => '7')
    fill_in('weight', :with => '7')
    fill_in('distance', :with => '7')
    check('fast_delivery')
    click_button('Tell Me!')
    expect(page).to have_content("210")
  end

end
