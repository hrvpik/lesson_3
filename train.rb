class Train
  attr_accessor  :type, :speed, :cout_vagon, :route, :station, :number
  
  def initialize(number, type , cout_vagon)
    @number = number
    @cout_vagon = cout_vagon
    @type = type
    @speed = 0
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

  def stop
   @speed = 0
  end

  def add_carriage
   if @speed == 0
   @cout_vagon = cout_vagon + 1
   else @speed != 0
    puts "Прицепка невозможна поезд движется"
   end
  end

  def del_carriage
    if @speed == 0
    @cout_vagon = cout_vagon - 1
    else @speed != 0
     puts "Отцепка невозможна поезд движется"
    end
    
  end
end