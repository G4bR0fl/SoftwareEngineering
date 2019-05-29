require 'rails_helper'

RSpec.describe "tickets/new", type: :view do
  before(:each) do
    assign(:ticket, Ticket.new(
      :ticket_type => 1,
      :room_and_presentation => 1,
      :person => 1
    ))
  end

  it "renders new ticket form" do
    render

    assert_select "form[action=?][method=?]", tickets_path, "post" do

      assert_select "input[name=?]", "ticket[ticket_type]"

      assert_select "input[name=?]", "ticket[room_and_presentation]"

      assert_select "input[name=?]", "ticket[person]"
    end
  end
end
