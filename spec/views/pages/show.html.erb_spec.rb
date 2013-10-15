require 'spec_helper'

describe "pages/show" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :meta_title => "Meta Title",
      :meta_description => "Meta Description",
      :title => "Page Title",
      :header_image => "Header Image",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Meta Title/)
    rendered.should match(/Meta Description/)
    rendered.should match(/Page Title/)
    rendered.should match(/Header Image/)
    rendered.should match(/MyText/)
  end
end
