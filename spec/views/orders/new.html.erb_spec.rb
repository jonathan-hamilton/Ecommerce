require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      orderTotal: "9.99",
      customer_id: 1,
      store_id: 1,
      line_item_id: 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[orderTotal]"

      assert_select "input[name=?]", "order[customer_id]"

      assert_select "input[name=?]", "order[store_id]"

      assert_select "input[name=?]", "order[line_item_id]"
    end
  end
end
