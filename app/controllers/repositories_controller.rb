class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @request = Faraday.get 'https://api.github.com/search/repositories' do |req|
      req.params['client_id'] = 'Iv1.272578ea28313f40'
      req.params['client_secret'] = '3ecee81272dfb85c93ce417edb1d8b449e953987'
      req.params['q'] = params['query']
    end
    
    render 'search'
  end
end
