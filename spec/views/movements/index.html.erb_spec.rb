require 'rails_helper'

RSpec.describe "movements/index", type: :view do
  before(:each) do
    assign(:movements, [
      Movement.create!(
        :description => "Description",
        :user_id => 1,
        :category_id => 2,
        :account_id => 3,
        :value => "9.99"
      ),
      Movement.create!(
        :description => "Description",
        :user_id => 1,
        :category_id => 2,
        :account_id => 3,
        :value => "9.99"
      )
    ])
  end

  it "renders a list of movements" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
