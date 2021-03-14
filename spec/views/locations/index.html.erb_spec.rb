require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        zipCode: 2
      ),
      Location.create!(
        zipCode: 2
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
