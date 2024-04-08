class Station #Создадим класс станция
  attr_reader :train_names 

  def initialize(name = "Таганская") 
    @name = name # Имеет название, которое указывается при ее создании
    @train_names = []
    puts name
  end

  def add_train(type) #Может принимать поезда (по одному за раз)
    @train_names << type
  end

  def show_train #Может возвращать список всех поездов на станции, находящиеся в текущий момент
    @train_names.each { |type| puts "На станции в текущий момент поезда: #{type}"}
  end

  def show_train_type #Может возвращать список поездов на станции по типу: кол-во грузовых, пассажирских
    result = @train_names.tally 
    puts result
  end

  def for_send_train #Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).
    send_train = []
    send_train.push(train_names.shift)
    @train_names.delete(-1)
    puts "Отправлен на следующую станцию поезд: #{send_train}"
    puts "На станции остались поезда: #{train_names}"
  end
end

st = Station.new()
st.add_train('Грузовой') #Передаем поезда по типу по 1 за раза
st.add_train('Пассажирский') #Передаем поезда по типу по 1 за раза
st.add_train('Пассажирский') #Передаем поезда по типу по 1 за раза
st.show_train()
st.show_train_type()
st.for_send_train()




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

class Train
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



ro = Route.new("Таганская")
ro.add_route("Тверская")
ro.add_route("Выхино")
ro.show_route()
ro.add_route('Смоленская')
ro.show_route()
tr = Train.new(144,"pass")
tr.up_speed()
tr.current_speed()
tr.return_speed()
tr.add_vag()
tr.del_vag()



