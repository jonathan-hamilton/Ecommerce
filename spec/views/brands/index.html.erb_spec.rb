require 'rails_helper'

RSpec.describe "brands/index", type: :view do
  before(:each) do
    assign(:brands, [
      Brand.create!(
        brandName: "Brand Name"
      ),
      Brand.create!(
        brandName: "Brand Name"
      )
    ])
  end

  it "renders a list of brands" do
    render
    assert_select "tr>td", text: "Brand Name".to_s, count: 2
  end
end
