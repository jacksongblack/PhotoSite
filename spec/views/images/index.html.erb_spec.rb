require 'spec_helper'

describe "images/index.html.erb" do
  before(:each) do
    assign(:images, [
      stub_model(Image,
        :photo => "Photo",
        :theme_id => 1,
        :describer => "Describer"
      ),
      stub_model(Image,
        :photo => "Photo",
        :theme_id => 1,
        :describer => "Describer"
      )
    ])
  end

  it "renders a list of images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Describer".to_s, :count => 2
  end
end
