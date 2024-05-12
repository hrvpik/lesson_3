class Station
  attr_reader :trains

  def initialize(name) 
    @name = name
    @trais = []
  end

  def add_train(train)
    @trais << train
  end

  def show_trains
    @trains.each { |train| puts "На станции в текущий момент поезда: #{train}"}
  end

  def show_train_by_type(type)
    @train.select{|train| train.type==type}.cout
  end

  def send_train(train)
    @trains.delete(train)
  end
end