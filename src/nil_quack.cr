struct Nil
  def quack
    puts "shhh 🤫"
  end
end

class Duck
  def quack
    puts "🦆 quack!"
  end
end

if rand(3) > 1
  duck = Duck.new
end

duck.quack
