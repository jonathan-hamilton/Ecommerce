require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        categoryName: "Category Name"
      ),
      Category.create!(
        categoryName: "Category Name"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", text: "Category Name".to_s, count: 2
  end
end
