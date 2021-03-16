require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        featured: false,
        productName: "Product Name",
        description: "Description",
        price: "9.99",
        category_id: 2,
        type_id: 3,
        brand_id: 4
      ),
      Product.create!(
        featured: false,
        productName: "Product Name",
        description: "Description",
        price: "9.99",
        category_id: 2,
        type_id: 3,
        brand_id: 4
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Product Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
