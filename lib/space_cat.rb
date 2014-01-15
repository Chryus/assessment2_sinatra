class SpaceCat < Sinatra::Application

  attr_reader: :name, :home_planet, :tagline, :superpower

  def initialize(name, home_planter, tagline, superpower)
    @name = name
    @home_planter = home_planter
    @tagline = tagline
    @superpower = superpower
  end
  
end
