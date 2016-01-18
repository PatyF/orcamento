require 'rails_helper'

RSpec.describe "movements/edit", type: :view do
  before(:each) do
    @movement = assign(:movement, Movement.create!(
      :description => "MyString",
      :user_id => 1,
      :category_id => 1,
      :account_id => 1,
      :value => "9.99",
      :date => "2016-01-10",
      :kind=> "receita"
    ))
  end

  it "renders the edit movement form" do
    render

    assert_select "form[action=?][method=?]", movement_path(@movement), "post" do

      assert_select "input#movement_description[name=?]", "movement[description]"

      assert_select "input#movement_user_id[name=?]", "movement[user_id]"

      assert_select "input#movement_category_id[name=?]", "movement[category_id]"

      assert_select "input#movement_account_id[name=?]", "movement[account_id]"

      assert_select "input#movement_value[name=?]", "movement[value]"
    end
  end
end
