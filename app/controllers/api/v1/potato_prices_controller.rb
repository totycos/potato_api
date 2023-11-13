class Api::V1::PotatoPricesController < ApplicationController

  def daily_prices
    potato_prices = get_potato_prices_by_date(params[:date])
    render json: potato_prices
  end

  def max_potential_gain
    potato_prices = get_potato_prices_by_date(params[:date])
    buy_price = potato_prices.first[:price]
    gain = 0

    potato_prices.each do |data|
        current_price = data[:price]
        if current_price < buy_price
            buy_price = current_price
        else
            current_gain = current_price - buy_price
            gain = [gain, current_gain].max
        end
    end

    gain = gain * 100 # Pour 100 tonnes de patates

    render json: { max_gain: "#{gain}€" }
    
  end
  
private 

  def get_potato_prices_by_date(date)
    PotatoPrice.where(time: date.to_datetime.beginning_of_day..date.to_datetime.end_of_day).order(:time)
  end

end
