require 'rails_helper'

RSpec.describe "movements/show", type: :view do
  before(:each) do
    @movement = assign(:movement, Movement.create!(
      :description => "Description",
      :user_id => 1,
      :category_id => 2,
      :account_id => 3,
      :value => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
  end
end
