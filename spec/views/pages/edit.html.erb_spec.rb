require 'spec_helper'

describe "pages/edit" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :meta_title => "MyString",
      :meta_description => "MyString",
      :title => "MyString",
      :header_image => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", page_path(@page), "post" do
      assert_select "input#page_meta_title[name=?]", "page[meta_title]"
      assert_select "input#page_meta_description[name=?]", "page[meta_description]"
      assert_select "input#title[name=?]", "page[title]"
      assert_select "input#page_header_image[name=?]", "page[header_image]"
      assert_select "textarea#page_body[name=?]", "page[body]"
    end
  end
end
