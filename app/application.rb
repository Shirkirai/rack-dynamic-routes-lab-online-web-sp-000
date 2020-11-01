require 'pry'
class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/)
      if !@@items.include?("/items/")
        resp.write "Route not found"
        resp.status = 404
      else
        item_price = @@items.each {|item| item.price.to_s}
        resp.write item_price
    elsif

    end
    resp.finish




  end
end
