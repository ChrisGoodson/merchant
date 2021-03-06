require 'rails_helper'

RSpec.describe "trucks/show", type: :view do
  before(:each) do
    @truck = assign(:truck, Truck.create!(
      :number => 2,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
  end
end
