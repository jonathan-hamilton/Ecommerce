require 'rails_helper'

RSpec.describe "brands/show", type: :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
      brandName: "Brand Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Brand Name/)
  end
end
