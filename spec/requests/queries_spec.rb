require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/queries", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Query. As you add validations to Query, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Query.create! valid_attributes
      get queries_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      query = Query.create! valid_attributes
      get query_url(query)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_query_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      query = Query.create! valid_attributes
      get edit_query_url(query)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Query" do
        expect {
          post queries_url, params: { query: valid_attributes }
        }.to change(Query, :count).by(1)
      end

      it "redirects to the created query" do
        post queries_url, params: { query: valid_attributes }
        expect(response).to redirect_to(query_url(Query.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Query" do
        expect {
          post queries_url, params: { query: invalid_attributes }
        }.to change(Query, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post queries_url, params: { query: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested query" do
        query = Query.create! valid_attributes
        patch query_url(query), params: { query: new_attributes }
        query.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the query" do
        query = Query.create! valid_attributes
        patch query_url(query), params: { query: new_attributes }
        query.reload
        expect(response).to redirect_to(query_url(query))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        query = Query.create! valid_attributes
        patch query_url(query), params: { query: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested query" do
      query = Query.create! valid_attributes
      expect {
        delete query_url(query)
      }.to change(Query, :count).by(-1)
    end

    it "redirects to the queries list" do
      query = Query.create! valid_attributes
      delete query_url(query)
      expect(response).to redirect_to(queries_url)
    end
  end
end
