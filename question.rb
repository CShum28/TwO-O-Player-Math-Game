class Question

  def initialize
    @num_one = rand(1..20)
    @num_two = rand(1..20)
    @answer = @num_one + @num_two
  end

  def ask(player)
    puts "#{player.name} - What is the sum of #{@num_one} and #{@num_two}"
    answer = gets.chomp.to_i
    if @answer == answer
      puts 'Ya got it right!'
    else
      puts 'Youre wrong, lose life :('
      player.lose_life
    end
  end

end
