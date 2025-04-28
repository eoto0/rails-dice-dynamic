class DiceController < ApplicationController

  def two_six

    @rolls = [] 

    2.times do
      die = rand(1..6)
  
      @rolls.push(die)
    end

    render({ :template => "dice_templates/2d6"})

  end
  
  def two_ten
    @rolls = []

    2.times do
      die = rand(1..10)
  
      @rolls.push(die)
    end

    render({ :template => "dice_templates/2d10"})
  end
  
  def one_twenty

    @rolls = []

    1.times do
      die = rand(1..20)
  
      @rolls.push(die)
    end
    render({ :template => "dice_templates/1d20"})
  end
  
  def five_four
    @rolls = []

    5.times do
      die = rand(1..4)
  
      @rolls.push(die)
    end
    render({ :template => "dice_templates/5d4"})
  end
  
  def homepage
    render({ :template => "dice_templates/home"})
  end

  def some_action
    @num_dice = params.fetch("param_one").to_i
    @side = params.fetch("param_two").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@side)
      @rolls.push(die)
    end

    render({ :template => "dice_templates/some_action"})
  end
  end
