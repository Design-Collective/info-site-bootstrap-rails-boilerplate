class PagesController < ActionController::Base

  def index
    @pages = Page.all
    render layout: 'pages'
  end

  def show
    @page = Page.find(params[:id])
    render layout: 'pages'
  end

  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to @page
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to :action => 'index'
  end

  private

  def page_params
    params.require(:page).permit(:meta_title, :meta_description, :page_title, :header_image, :body)
  end
end