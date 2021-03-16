require 'rails_helper'

RSpec.describe "stores/new", type: :view do
  before(:each) do
    assign(:store, Store.new(
      storeName: "MyString",
      location_id: 1
    ))
  end

  it "renders new store form" do
    render

    assert_select "form[action=?][method=?]", stores_path, "post" do

      assert_select "input[name=?]", "store[storeName]"

      assert_select "input[name=?]", "store[location_id]"
    end
  end
end
