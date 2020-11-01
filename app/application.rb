require 'pry'
class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      

    end
    resp.finish




  end
end
