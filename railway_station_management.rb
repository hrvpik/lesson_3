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
