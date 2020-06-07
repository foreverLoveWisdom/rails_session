class HomeController < ApplicationController
  def set_cookies
    # cookies[:user] = 'Smith'
    # cookies[:customer_number] = '123457890'
    # Set cookies longer than browser session
    cookies.permanent.signed[:user] = 'Smith'
    cookies.permanent.signed[:customer_number] = '1234567890'
  end

  def show_cookies
    @user_name = cookies.signed[:user]
    @customer_number = cookies.signed[:customer_number]
  end

  def delete_cookies
    cookies.delete :user
    cookies.delete :customer_number
  end
end
