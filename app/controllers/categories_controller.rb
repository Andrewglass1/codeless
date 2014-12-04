class CategoriesController < ApplicationController
  VALID_CATEGORIES = ["e-commerce", "portfolios", "mobile", "brick-and-mortar"]

  def show
    redirect_to root_path unless VALID_CATEGORIES.include?(params["id"])
    title_and_description
    @listings = Listing.send(params['id'].underscore)
    meta_tags
  end

private

  def title_and_description
    case params['id']
    when 'brick-and-mortar'
      @category_title = "Brick and Mortar"
      @category_description = "Find the best ways to build a website for your brick and mortar business.  Great for restaurant, doctor's pratices, etc"
    when "portfolios"
      @category_title = "Brick and Mortar"
      @category_description = "Find the best ways to build a website for your portfolio.  Great for artists, designers, musicians, etc."
    when "mobile"
      @category_title = "Mobile apps and websites"
      @category_description = "Find the best ways to build a mobile app or website.  Great for iOS iPhone apps, Android apps and responsive websites."
    when "e-commerce"
      @category_title = "eCommerce"
      @category_description = "Find the best ways to build a website for your eCommerce business.  Great for selling products via an online storefront."
    end
  end

  def meta_tags
    @meta = {:title => "Build without code: Build #{params['id'].titleize} websites",
             :description => "Find the best ways to build #{params['id'].titleize} websites without using code"}
  end
end