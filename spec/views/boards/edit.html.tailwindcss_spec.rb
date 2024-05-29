require 'rails_helper'

RSpec.describe "boards/edit", type: :view do
  before(:each) do
    @board = assign(:board, Board.create!(
      name: "MyString",
      description: "MyText",
      status: "MyString",
      user: nil
    ))
  end

  it "renders the edit board form" do
    render

    assert_select "form[action=?][method=?]", board_path(@board), "post" do

      assert_select "input[name=?]", "board[name]"

      assert_select "textarea[name=?]", "board[description]"

      assert_select "input[name=?]", "board[status]"

      assert_select "input[name=?]", "board[user_id]"
    end
  end
end
