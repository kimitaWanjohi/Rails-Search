require 'rails_helper'

RSpec.describe "queries/show", type: :view do
  before(:each) do
    assign(:query, Query.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
