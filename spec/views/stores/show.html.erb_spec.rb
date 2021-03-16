require 'rails_helper'

RSpec.describe "stores/show", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      storeName: "Store Name",
      location_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Store Name/)
    expect(rendered).to match(/2/)
  end
end
