class PagesController < ActionController::Base
  layout 'application'

  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(page_params)
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
  end

  private

  def page_params
    params.require(:page).permit(:meta_title, :meta_description, :page_title, :header_image, :body)
  end
end