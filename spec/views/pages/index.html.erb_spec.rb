require 'spec_helper'

describe "pages/index" do
  before(:each) do
    assign(:pages, [
      stub_model(Page,
        :meta_title => "Meta Title",
        :meta_description => "Meta Description",
        :title => "Page Title",
        :header_image => "Header Image",
        :body => "MyText"
      ),
      stub_model(Page,
        :meta_title => "Meta Title",
        :meta_description => "Meta Description",
        :title => "Page Title",
        :header_image => "Header Image",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Meta Title".to_s, :count => 2
    assert_select "tr>td", :text => "Meta Description".to_s, :count => 2
    assert_select "tr>td", :text => "Page Title".to_s, :count => 2
    assert_select "tr>td", :text => "Header Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
