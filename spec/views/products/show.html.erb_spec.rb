require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :shortdescription => "Shortdescription",
      :longdescription => "Longdescription",
      :manufacturer => "Manufacturer",
      :partnumber => "Partnumber",
      :sku => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Shortdescription/)
    expect(rendered).to match(/Longdescription/)
    expect(rendered).to match(/Manufacturer/)
    expect(rendered).to match(/Partnumber/)
    expect(rendered).to match(/2/)
  end
end
