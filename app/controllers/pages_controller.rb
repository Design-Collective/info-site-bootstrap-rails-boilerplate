class PagesController < ActionController::Base

  def index
    @pages = Page.all
    render layout: 'pages'
  end

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
      flash[:success] = "Done"
      redirect_to @page
    else
      render 'new'
      flash[:error] = "Action failed"
    end
  end
  
  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
   
    if @page.update(page_params)
      redirect_to @page
    else
      render 'edit'
      flash[:error] = "Action failed"
    end
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