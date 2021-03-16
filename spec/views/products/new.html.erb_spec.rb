require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      featured: false,
      productName: "MyString",
      description: "MyString",
      price: "9.99",
      category_id: 1,
      type_id: 1,
      brand_id: 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[featured]"

      assert_select "input[name=?]", "product[productName]"

      assert_select "input[name=?]", "product[description]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[category_id]"

      assert_select "input[name=?]", "product[type_id]"

      assert_select "input[name=?]", "product[brand_id]"
    end
  end
end
