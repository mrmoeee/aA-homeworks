# O n^2 time Sluggish_otcopus
# Sluggish Octo
def Sluggish_octopus(fishes)
  fishes.each_index do |idx|
    longest = true
    fishes.each_index do |idx2|
      next if idx == idx2
      longest = false if fishes[idx2].length > fishes[idx].length
    end
    return fishes[idx1] if longest
  end
end

#n Log N search
def merge_sort(&prc)
  prc || = proc { |num1, num2| num1 <=> num2 }
  return self if length <= 1
  mid = length / 2
  left = self.take(mid).merge_sort(&prc)
  right = self.drop(mid).merge_sort&prc)
  Array.merge(left, right, &prc)
end

def merge(left, right & prc)
  result = []
  until left.empty? || right.empty?
    lefty = left.first
    righty = right.first
    case prc.call(lefty, righty)
    when -1
      result << left.shift
    when 0
      result << left.shift
    when 1
      result << right.shift
    end
  end
  result + left + right
end

# dominant otcopus
def dominant_octo(fishes)
  prc ||= proc { |num1, num2| num1.length <=> num2.length }
  fishes.merge_sort(&prc).last
end

# Linear search
def clever_octo(fishes)
  biggest_fishy = fishes.first
  fishes.each do |fish|
    if fish.length > biggest_fishy.length
      biggest_fishy = fish
    end
  end
  biggest_fishy
end

# linear octopus dance
# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
def slow_dance_in_a_burning_room(direction, tiles_array)
  tiles_array.each_with_index do |dir, index|
    return index if dir == direction
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

def fast_dance(direction, hash)
  tiles_hash[direction]
end
