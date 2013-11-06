require 'spec_helper'

describe "images/error.html.erb" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :photo => "Photo",
      :theme_id => 1,
      :describer => "Describer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Describer/)
  end
end
