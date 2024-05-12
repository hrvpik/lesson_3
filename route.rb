class Route
  attr_accessor :stations

  def initialize(start_station = 'Таганская', finist_station = 'Автозавод')
    @stations = [start_station, finist_station]
  end

  def add_station(station)
    @station << station 
  end

  def show_route
    @stations.each { |station| puts "Промежуточные станции: #{station}"}
  end
   
  def delete_station(station)
    @stations.delete(station)
  end
end