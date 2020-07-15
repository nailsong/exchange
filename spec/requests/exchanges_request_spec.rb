# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Exchanges', type: :request do
  describe 'GET #index' do
    it 'returns http success' do
      get '/'
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET #convert' do
    it 'returns http success' do
      get '/convert', params: {
        source_currency: 'USD',
        target_currency: 'BRL',
        amount: rand(1..9999)
      }

      expect(response).to have_http_status(200)
    end

    it "returns a numeric value" do
      get '/convert', params: {
        source_currency: 'USD',
        target_currency: 'BRL',
        amount: rand(1..9999)
      }

      value = JSON.parse(response.body)['value']
      expect(value.is_a? Numeric).to eql(true)
    end
  end
end
