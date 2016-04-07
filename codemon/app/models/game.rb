class Game

  def start
    floor_manager = FloorManager.new

    #current_hero
    current_floor = floor_manager.get_floor_from_number(current_hero.game_floor)
    while true
      passed = current_floor.start_floor(current_hero)

      if passed
        if floor_manager.last_floor?
          #game over
        else
          current_floor = floor_manager.go_to_next_floor
        end
      end

    end
  end

end
