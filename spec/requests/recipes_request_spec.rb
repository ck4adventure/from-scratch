require 'rails_helper'

RSpec.describe "Recipes Routes", type: :request do

  # it "creates a Widget" do
  #   headers = {
  #     "ACCEPT" => "application/json",     # This is what Rails 4 accepts
  #     "HTTP_ACCEPT" => "application/json" # This is what Rails 3 accepts
  #   }
  #   post "/widgets", :params => { :widget => {:name => "My Widget"} }, :headers => headers

  #   expect(response.content_type).to eq("application/json")
  #   expect(response).to have_http_status(:created)
  # end

  describe 'get all recipes' do
    it 'returns the proper content type' do
    headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
      "HTTP_ACCEPT" => "application/json" # This is what Rails 3 accepts
    }
    get "/api/v1/recipes", :headers => headers
      expect(response.content_type).to eq("application/json; charset=utf-8")
    end
    it "returns status ok" do
          headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
      "HTTP_ACCEPT" => "application/json" # This is what Rails 3 accepts
    }
    get "/api/v1/recipes", :headers => headers
      expect(response).to have_http_status(:ok)
    end
    it "renders the index template" do
          headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
      "HTTP_ACCEPT" => "application/json" # This is what Rails 3 accepts
    }
    get "/api/v1/recipes", :headers => headers
      expect(response).to render_template(:index)
    end
  end

  describe 'post a new recipe without ingredients' do
    it 'does some cool stuff' do
      headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
      "HTTP_ACCEPT" => "application/json" # This is what Rails 3 accepts
      }
      params = {
        recipe: {
          title: "Req Spec Recipe",
          description: "Cuz I said so",
          base_item: true,
        }
      }
      post "/api/v1/recipes", :params => params, :headers => headers
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
      
    end
  end

  describe 'show a single recipe' do
  end

  describe 'update a recipe with no ingredients' do end

  describe 'update a recipes existing ingredients' do end
  
  describe 'add ingredients to a recipe' do end
  
  describe 'remove ingredients from a recipe' do end

  describe 'delete a recipe and its ingredients' do end


end
