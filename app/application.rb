require 'pry'
class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      
      
      item_price = req.path.split("/items/").last.price.to_s
      binding.pry
      @@items.each do |item|
        #binding.pry
        resp.write item.price.to_s
      end
    end




  end
end
