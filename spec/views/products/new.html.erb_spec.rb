require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :shortdescription => "MyString",
      :longdescription => "MyString",
      :manufacturer => "MyString",
      :partnumber => "MyString",
      :sku => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[shortdescription]"

      assert_select "input[name=?]", "product[longdescription]"

      assert_select "input[name=?]", "product[manufacturer]"

      assert_select "input[name=?]", "product[partnumber]"

      assert_select "input[name=?]", "product[sku]"
    end
  end
end
