# frozen_string_literal: true

class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    # mains = []
    # @shows.each do |show|
    #   show.characters.each do |char|
    #     if char.salary > 500000 && char.name == char.name.upcase
    #       mains << char
    #     end
    #   end
    # end
    # mains

    @shows.flat_map do |show|
      show.characters.find_all do |char|
        char.salary > 500_000 && char.name == char.name.upcase
      end
    end
  end

  def actors_by_show
    actors_by_show_hash = {}
    @shows.each do |show|
      actors_by_show_hash[show] = show.actors
    end
    actors_by_show_hash

    # @shows.reduce({}) do |acc, show|
    #   acc[show] = show.actors
    #   acc
    # end

    # @shows.each_with_objects({}) do |show, acc|
    #   acc[show] = show.actors
    # end
  end

  def shows_by_actor
    shows_by_actor = {}
    @shows.each do |show|
      show.actors.each do |actor|
        shows_by_actor[actor] ||= []
        shows_by_actor[actor] << show
      end
    end
    shows_by_actor
  end

  def prolific_actors
    prolific_actors = []
    shows_by_actor.each do |actor, shows|
      prolific_actors << actor if shows.length > 1
    end
    prolific_actors
  end
end
