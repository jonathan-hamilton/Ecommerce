require 'rails_helper'

RSpec.describe "stores/index", type: :view do
  before(:each) do
    assign(:stores, [
      Store.create!(
        storeName: "Store Name"
      ),
      Store.create!(
        storeName: "Store Name"
      )
    ])
  end

  it "renders a list of stores" do
    render
    assert_select "tr>td", text: "Store Name".to_s, count: 2
  end
end
