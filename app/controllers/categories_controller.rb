class CategoriesController < ApplicationController

  #@featured_category = Category.where(name: 'Featured on Home') rescue nil
  before_filter :find_category

  def index
    @categories = Category.all
    render layout: 'pages'
  end

  def show
    @category = Category.friendly.find(params[:id])
    render layout: 'pages'
  end

  def find_category
    @category = Category.find params[:id]

    # If an old id or a numeric id was used to find the record, then
    # the request path will not match the post_path, and we should do
    # a 301 redirect that uses the current friendly id.
    if request.path != category_path(@category)
      return redirect_to @category, :status => :moved_permanently
    end
  end

end
