require 'rails_helper'

RSpec.describe "stores/index", type: :view do
  before(:each) do
    assign(:stores, [
      Store.create!(
        storeName: "Store Name",
        location_id: 2
      ),
      Store.create!(
        storeName: "Store Name",
        location_id: 2
      )
    ])
  end

  it "renders a list of stores" do
    render
    assert_select "tr>td", text: "Store Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
