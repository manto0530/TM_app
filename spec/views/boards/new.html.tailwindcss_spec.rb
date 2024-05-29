require 'rails_helper'

RSpec.describe "boards/new", type: :view do
  before(:each) do
    assign(:board, Board.new(
      name: "MyString",
      description: "MyText",
      status: "MyString",
      user: nil
    ))
  end

  it "renders new board form" do
    render

    assert_select "form[action=?][method=?]", boards_path, "post" do

      assert_select "input[name=?]", "board[name]"

      assert_select "textarea[name=?]", "board[description]"

      assert_select "input[name=?]", "board[status]"

      assert_select "input[name=?]", "board[user_id]"
    end
  end
end
