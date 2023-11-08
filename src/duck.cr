class Duck
  def quack
    puts "🦆 quack!"
  end
end

if rand(2) >= 1  # flip a coin
  duck = Duck.new
end

duck.quack
