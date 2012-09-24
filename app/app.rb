class Clock < Padrino::Application
  register Padrino::Helpers
  register Padrino::Rendering
  register BaristaInitializer
  register CompassInitializer

  use Rack::GridFS, :prefix => "gridfs", :hostname => MongoMapper.connection.host, :port => MongoMapper.connection.port, :database => MongoMapper.database.name
  use Faye::RackAdapter, :mount => "/faye", :timeout => 25

  enable :sessions
end
