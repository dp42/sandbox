def prime?(num)
  case num
  when 0, 1
    return false
  when 2
    return true
  end

  return false if num.even? || (num % 3).zero? || (num % 5).zero? || (num % 7).zero?

  sqrt = Math.sqrt(num).floor

  (11..sqrt).step(2).each do |current|
    next if (current % 3).zero? || (current % 5).zero? || (current % 7).zero?
    return false if (num % current).zero?
  end

  true
end
