def collatz(max)
  max = max
  chain = Array.new(max + 1, 1)

  1.upto(max) do |start|
    answer = start

    loop do
      answer = if answer.even?
                 answer / 2
               else
                 answer * 3 + 1
               end

      if answer == 1 && chain[start] > 1
        chain[start] += 1
        break
      elsif answer < max && chain[answer] > 1
        chain[start] += chain[answer]
        break
      else
        chain[start] += 1
      end
    end
  end

  chain.index(chain.max)
end
