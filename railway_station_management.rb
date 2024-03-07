class Route
  attr_accessor :current_station

  def initialize(start_station = 'Таганская', finist_station = 'Автозавод')
    @current_station = []
    puts "Первая станция марштруа #{start_station}"
    puts "Конечная станция марштруа #{finist_station}"
  end

  def add_route(new_station)
    @current_station << new_station
  end

  def show_route
    @current_station.each { |new_station| puts "Промежуточные станции: #{new_station}"}
  end
end

class Train < Route
  attr_accessor  :type, :speed, :cout_vagon
  def initialize(number, type , cout_vagon = 7, speed = 0)
    @number = number
    @cout_vagon = cout_vagon
    @speed = speed
    @type = type
  end

  def up_speed
    @speed = 50
    puts "Скорость разгоняется до: #{@speed}"
  end

  def current_speed
    puts "Поезд имеет скорость: #{@speed}"
  end

  def return_speed
    return @speed
  end

  def vag
    return @cout_vagon
  end

  def add_vag
   if @speed == 0
   @cout_vagon = cout_vagon + 1
   else @speed != 0
    puts "Прицепка невозможна поезд движется"
   end
  end

  def del_vag
    if @speed == 0
    @cout_vagon = cout_vagon - 1
    else @speed != 0
     puts "Отцепка невозможна поезд движется"
    end
  end
end

class Station < Train
  attr_reader :train_names

  def initialize(name = "Таганская")
    @name = name
    @train_names = []

    puts name
  end

  def add_train(type)
    @train_names << type
  end

  def show_train
    @train_names.each { |type| puts type}
  end

  def return_type
    return @type
  end

  def delete_station
    @train_names[1..-1]
  end
end

st = Station.new()
ro = Route.new("Таганская")
ro.add_route("Тверская")
ro.add_route("Выхино")
ro.show_route()
st.add_train('Грузовой')
st.add_train('Пассажирский')
ro.add_route('Смоленская')
ro.show_route()
tr = Train.new(144,"pass")
tr.up_speed()
tr.current_speed()
tr.return_speed()
tr.add_vag()
tr.del_vag()
st.delete_station()
st.show_train()
