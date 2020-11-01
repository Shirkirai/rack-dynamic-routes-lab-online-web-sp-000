require 'pry'
class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/)
      if !@@items.include?("/items/")
        resp.write "Item not found"
        resp.status = 400
      else
        item_price =
        resp.write @@items.each{|item| item_price = item.price.to_s}
        resp.status = 200
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
