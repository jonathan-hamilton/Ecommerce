require 'rails_helper'

RSpec.describe "line_items/index", type: :view do
  before(:each) do
    assign(:line_items, [
      LineItem.create!(
        quantity: ""
      ),
      LineItem.create!(
        quantity: ""
      )
    ])
  end

  it "renders a list of line_items" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
