require 'pry'
class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/)
      if @@items.include?("/items/")
        binding.pry
        return @@items.each{|item| item_price = item.price.to_s}
      else
        resp.write "Item not found"
        resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
