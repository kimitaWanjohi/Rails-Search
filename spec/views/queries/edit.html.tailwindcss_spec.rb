require 'rails_helper'

RSpec.describe "queries/edit", type: :view do
  let(:query) {
    Query.create!()
  }

  before(:each) do
    assign(:query, query)
  end

  it "renders the edit query form" do
    render

    assert_select "form[action=?][method=?]", query_path(query), "post" do
    end
  end
end
