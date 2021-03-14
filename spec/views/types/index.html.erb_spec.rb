require 'rails_helper'

RSpec.describe "types/index", type: :view do
  before(:each) do
    assign(:types, [
      Type.create!(
        typeName: "Type Name"
      ),
      Type.create!(
        typeName: "Type Name"
      )
    ])
  end

  it "renders a list of types" do
    render
    assert_select "tr>td", text: "Type Name".to_s, count: 2
  end
end
