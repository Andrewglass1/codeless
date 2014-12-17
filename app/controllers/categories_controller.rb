class CategoriesController < ApplicationController
  VALID_CATEGORIES = ["e-commerce", "portfolios", "mobile", "brick-and-mortar", "blogs", "subscription_ecommerce"]

  def show
    redirect_to root_path and return unless VALID_CATEGORIES.include?(params["id"])
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
      @category_title = "Portfolios"
      @category_description = "Find the best ways to build a website for your portfolio.  Great for artists, designers, musicians, etc."
    when "mobile"
      @category_title = "Mobile apps & websites"
      @category_description = "Find the best ways to build a mobile app or website.  Great for iOS iPhone apps, Android apps and responsive websites."
    when "e-commerce"
      @category_title = "eCommerce"
      @category_description = "Find the best ways to build a website for your eCommerce business.  Great for selling products via an online storefront."
    when "blogs"
      @category_title = "Blogs"
      @category_description = "Find the best ways to build a blog.  Great for writers, bloggers and existing businesses looking to publish content on the web."
    when "subscription_ecommerce"
      @category_title = "Subscription eCommerce"
      @category_description = "Find the best ways....."

    end
  end

  def meta_tags
    @meta = {:title => "Build without code: Build #{params['id'].titleize} websites",
             :description => "Find the best ways to build #{params['id'].titleize} websites without using code"}
  end
end
