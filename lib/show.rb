# frozen_string_literal: true

class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    # salaries = 0
    # @characters.each do |character|
    #   salaries += character.salary
    # end
    # salaries
    @characters.sum(&:salary)
  end

  def highest_paid_actor
    # current_highest = @characters.first
    # @characters.each do |char|
    #   if char.salary > current_highest.salary
    #     current_highest = char
    #   end
    # end
    # current_highest.actor
    highest_paid = @characters.max_by(&:salary)
    highest_paid.actor
  end

  def actors
    # actors = []
    # @characters.each do |char|
    #   actors << char.actor
    # end
    # actors
    #
    @characters.map(&:actor)
  end
end
