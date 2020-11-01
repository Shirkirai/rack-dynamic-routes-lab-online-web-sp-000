require 'pry'
class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      binding.pry
      
      item_price = req.path.split("/items/").last.price.to_s
      resp.write item_price

    end




  end
end
