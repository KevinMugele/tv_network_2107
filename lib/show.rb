class Show

  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    salaries = 0
    @characters.each do |character|
      salaries += character.salary
    end
    salaries
  end

  def highest_paid_actor
    highest_paid = @characters.max_by do |character|
      character.salary
    end
    highest_paid.actor
  end

  def actors
    actors_list = @characters.map do |character|
      character.actor
    end
    actors_list
  end 
end
