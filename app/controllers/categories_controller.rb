class CategoriesController < ApplicationController
  VALID_CATEGORIES = ["e-commerce", "portfolios", "mobile", "brick-and-mortar"]

  def show
    redirect_to root_path unless VALID_CATEGORIES.include?(params["id"])
    title_and_description
    @listings = Listing.send(params['id'].underscore)
  end

private

  def title_and_description
    case params['id']
    when 'brick-and-mortar'
      @category_title = "Brick and Mortar"
      @category_description = "Find the best ways to build a website for your brick and mortar business.  Great for restaurant, doctor's pratices, etc"
    when "fff"
      @category_title = "Brick and Mortar"
      @category_description = "Find the best ways to build a website for your brick and mortar business.  Great for restaurant, doctor's pratices, etc"
    end
  end
end
