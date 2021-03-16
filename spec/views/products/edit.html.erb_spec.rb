require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      featured: false,
      productName: "MyString",
      description: "MyString",
      price: "9.99",
      category_id: 1,
      type_id: 1,
      brand_id: 1
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

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
