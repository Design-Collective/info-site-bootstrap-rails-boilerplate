class PagesController < ActionController::Base
  include ActionView::Helpers::TextHelper

  def index
    @pages = Page.all
    #@featured_home = Page.category.find(params[:id])
    render layout: 'pages'
  end

  #def self.category(category)
  #  where(:categories => categories)
  #end

  def show
    @page = Page.find(params[:id])
    render layout: 'pages'
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      flash[:success] = "Page Successfully Saved"
      redirect_to @page
    else
      render 'new'
      flash[:error] = "Save Failed"
    end
  end
  
  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
   
    if @page.update(page_params)
      redirect_to @page
      flash[:error] = "Page Successfully Updated"
    else
      render 'edit'
      flash[:error] = "Update Failed"
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to :action => 'index'
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
    params.require(:page).permit(:meta_title, :meta_description, :title, :header_image, :body)
  end
end