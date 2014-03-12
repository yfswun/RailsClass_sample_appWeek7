require 'test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest

  @@titleMain = 'Ruby on Rails Tutorial Sample App'

  test "Home page should have the content 'Sample App'" do
    get '/static_pages/home'
    assert response.body.include?('Sample App')
  end

  test "Home page should have the title 'Home'" do
    get '/static_pages/home'
    assert_select 'title', "#{@@titleMain} | Home"
  end

  test "Help page should have the content 'Help'" do
    get '/static_pages/help'
    assert response.body.include?('Help')
  end

  test "Help page should have the title 'Help'" do
    get '/static_pages/help'
    assert_select 'title', "#{@@titleMain} | Help"
  end

  test "About page should have the content 'About Us'" do
    get '/static_pages/about'
    assert response.body.include?('About Us')
  end

  test "About page should have the title 'About Us'" do
    get '/static_pages/about'
    assert_select 'title', "#{@@titleMain} | About Us"
  end

end
