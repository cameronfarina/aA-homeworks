
def sluggish(array) # nested loop

    longest_fish = arrary.first

    (0...arrary.length).each do |i|
        (i + 1...array.length).each do |j|
            length_1 = array[i].length
            length_2 = array[i + 1].length
            longest_fish = array[i] if length_1 > length_2
        end
    end
    longest_fish
end

class Array
  def merge_sort(&prc) # n log n 
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    left = self[0...midpoint]
    right = self[midpoint..-1]

    Array.merge(left.merge_sort(&prc), right.merge_sort(&prc), &prc)
  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      if prc.call(left.first, right.first) = -1
        merged << left.shift
      else
        merged << right.shift
      end
    end

    merged + left + right
  end
end

def clever(array) # holding info

    longest_fish = arrary.first

    (0...arrary.length).each do |i|
        longest_fish = array[i] if array[i].length > longest_fish.length
    end
    longest_fish
end

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end

# constant octopus dance
#use a hash for constant lookup
tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end
