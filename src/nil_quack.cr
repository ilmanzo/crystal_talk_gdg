class Duck
  def quack
    puts "🦆 quack!"
  end
end

struct Nil
  def quack
    puts "shhh 🤫"
  end
end

def hatch
  Duck.new if rand(2) >= 1 # flip a coin
end

obj = hatch()
obj.quack