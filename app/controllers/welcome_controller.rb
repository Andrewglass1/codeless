class WelcomeController < ApplicationController
  def index
    meta_tags
  end

private

  def meta_tags
    @meta = {:title => "Build Without Code",
             :description => "Find the best ways to build websites without using code"
    }
  end
end
