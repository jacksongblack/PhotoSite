require 'spec_helper'

describe "images/new.html.erb" do
  before(:each) do
    assign(:image, stub_model(Image,
      :photo => "MyString",
      :theme_id => 1,
      :describer => "MyString"
    ).as_new_record)
  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => images_path, :method => "post" do
      assert_select "input#image_photo", :name => "image[photo]"
      assert_select "input#image_theme_id", :name => "image[theme_id]"
      assert_select "input#image_describer", :name => "image[describer]"
    end
  end
end
