Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get 'potato_prices/:date/daily_prices', to: 'potato_prices#daily_prices'
      get 'potato_prices/:date/max_potential_gain', to: 'potato_prices#max_potential_gain'
    end
  end
  
end
