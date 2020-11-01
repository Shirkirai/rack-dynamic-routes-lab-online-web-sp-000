class Application


  @@item = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new

    if req.path.match(/item/)
      item_price = req.path.split("/item/").last
      item = @@item.find{|i| i.price == }




  end
end
