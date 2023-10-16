
class Station

  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrive(train)
    self.trains.push(train)
  end

  def depart(train)
    self.trains.delete(train)
  end

  def types
    types = {}
    self.trains.map { |t| types[t.type].nil? ? types[t.type] = 1 : types[t.type] += 1 }
    types
  end

end
