require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      orderTotal: "9.99",
      customer_id: 1,
      store_id: 1,
      line_item_id: 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[orderTotal]"

      assert_select "input[name=?]", "order[customer_id]"

      assert_select "input[name=?]", "order[store_id]"

      assert_select "input[name=?]", "order[line_item_id]"
    end
  end
end
