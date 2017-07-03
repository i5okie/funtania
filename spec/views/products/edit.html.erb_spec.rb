require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :shortdescription => "MyString",
      :longdescription => "MyString",
      :manufacturer => "MyString",
      :partnumber => "MyString",
      :sku => 1
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[shortdescription]"

      assert_select "input[name=?]", "product[longdescription]"

      assert_select "input[name=?]", "product[manufacturer]"

      assert_select "input[name=?]", "product[partnumber]"

      assert_select "input[name=?]", "product[sku]"
    end
  end
end
