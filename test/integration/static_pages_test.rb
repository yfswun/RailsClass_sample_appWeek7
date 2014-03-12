require 'test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest
  test "Home page should have the content 'Sample App'" do
    get '/static_pages/home'
    assert_response :success
    assert_select 'body', /Sample App/
  end
  test "Help page should have the content 'Help'" do
    get '/static_pages/help'
    assert_response :success
    assert_select 'body', /Help/
  end
  test "About page should have the content 'About Us'" do
    get '/static_pages/about'
    assert_response :success
    assert_select 'body', /About Us/
  end
  test "Home page should have the title 'Home'" do
    get '/static_pages/home'
    assert_response :success
    assert_select 'title', 'Ruby on Rails Tutorial Sample App | Home'
  end
  test "Help page should have the title 'Help'" do
    get '/static_pages/help'
    assert_response :success
    assert_select 'title', 'Ruby on Rails Tutorial Sample App | Help'
  end
  test "About page should have the title 'About Us'" do
    get '/static_pages/about'
    assert_response :success
    assert_select 'title', 'Ruby on Rails Tutorial Sample App | About Us'
  end
end
