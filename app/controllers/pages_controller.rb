class PagesController < ActionController::Base
  include ActionView::Helpers::TextHelper


  slides = Slide.page

  def index
    @pages = Page.all
    render layout: 'pages'
  end

  def show
    @page = Page.find(params[:id])
    @slides = Slide.page
    render layout: 'pages'
  end

  def find_page
    @page = Page.find params[:id]

    # If an old id or a numeric id was used to find the record, then
    # the request path will not match the post_path, and we should do
    # a 301 redirect that uses the current friendly id.
    if request.path != page_path(@page)
      return redirect_to @page, :status => :moved_permanently
    end
  end

  private

  def page_params
    params.require(:page).permit(:meta_title, :meta_description, :title, :header_image, :body, :parent_id)
  end
end