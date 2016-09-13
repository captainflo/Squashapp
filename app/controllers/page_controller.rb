class PageController < ApplicationController
  def home
  end

  def about
      @companies = Company.all
  end

  def contact
    @companies = Company.all
  end
end
