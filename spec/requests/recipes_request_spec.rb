require 'rails_helper'
require 'byebug'

RSpec.describe "Recipes API v1", type: :request do
  # initialize test data
  let!(:recipes) { create_list(:recipe, 10, :base_item) }
  let(:recipe_id) { recipes.first.id }
  let(:source) { create(:source) }

  # Test Suite for GET /recipes
  describe 'get /recipes' do
    headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
    }
    before { get "/api/v1/recipes", :headers => headers }
    it 'returns the proper content type and template' do
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:index)
    end
  end

  # Test Suite for GET /recipes/all
  describe 'get /recipes/all' do
    headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
    }
    before { get "/api/v1/recipes/all", :headers => headers }
    it 'returns the proper content type and template' do
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:index)
    end
  end

  # Test Suite for GET /recipes/:id
  describe 'get /recipe/:id' do
    headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
      }
    before { get "/api/v1/recipes/#{recipe_id}", :headers => headers }
    it 'returns the proper content type and template' do
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
    end
  end

  # Test Suite for POST /recipes
  describe 'post a new recipe without ingredients' do
    it 'returns the proper content type and template' do
      headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
      }
      params = {
        recipe: {
          title: "Req Spec Recipe",
          description: "description optional",
          base_item: true,
        }
      }
      post "/api/v1/recipes", :params => params, :headers => headers
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
      
    end
  end

  describe 'post a new recipe with ingredients' do
    it 'returns the proper content type and template' do
      headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
      }
      params = {
        recipe: {
          title: "Req Spec Recipe",
          ingredients_attributes: [
            {item_id: recipes.first.id, qty: "2", measure: "TBL" },
            {item_id: "#{recipes.last.id}", qty: "4", measure: "Tsp" }
          ],
        }
      }
      post "/api/v1/recipes", :params => params, :headers => headers
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
      
    end
  end

  describe 'post a new recipe with a title and citation' do 
    let(:sour) { create(:source) }
    
    it 'returns the proper content type and template' do
      headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
      }
      params = {
        recipe: {
          title: "Req Spec Recipe 2",
          citation_attributes: {source_id: source.id, page: "13" },
        }
      }
      post "/api/v1/recipes", :params => params, :headers => headers
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
      
    end
  end

  describe 'post a new recipe with all the info' do 
    it 'returns the proper content type and template' do
      headers = {
      "ACCEPT" => "application/json",     # This is what Rails 4 accepts
      }
      params = {
        recipe: {
          title: "Req Spec Combined",
          citation_attributes: {source_id: source.id, page: "13" },
          ingredients_attributes: [
            {item_id: recipes.first.id, qty: "2", measure: "TBL" },
            {item_id: "#{recipes.last.id}", qty: "4", measure: "Tsp" }
          ],
        }
      }
      post "/api/v1/recipes", :params => params, :headers => headers
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
      
    end
  end

  describe 'update a recipe with no ingredients' do end

  describe 'update a recipes existing ingredients' do end

  describe 'update a recipes citation' do end
  
  describe 'add ingredients to a recipe' do end
  
  describe 'remove ingredients from a recipe' do end

  describe 'delete a recipe and its ingredients and its citation' do end


end
