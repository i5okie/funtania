require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :shortdescription => "Shortdescription",
        :longdescription => "Longdescription",
        :manufacturer => "Manufacturer",
        :partnumber => "Partnumber",
        :sku => 2
      ),
      Product.create!(
        :shortdescription => "Shortdescription",
        :longdescription => "Longdescription",
        :manufacturer => "Manufacturer",
        :partnumber => "Partnumber",
        :sku => 2
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Shortdescription".to_s, :count => 2
    assert_select "tr>td", :text => "Longdescription".to_s, :count => 2
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    assert_select "tr>td", :text => "Partnumber".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
