class Api::ProductsController < ApplicationController
  def allproducts
    @all_products = Product.all
    render "all.json.jb"
  end
  def candle
    @candle = Product.find_by(name: "candle")
    render "candle.json.jb"
  end
  def lamp
    @lamp = Product.find_by(name: "lamp")
    render "lamp.json.jb"
  end
  def iphone
    @iphone = Product.find_by(name: "iPhone 11")
    render "iphone.json.jb"
  end
end
