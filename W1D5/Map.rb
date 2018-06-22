

class Map
  #map array eg [[k, v], [k, v], [k, v]]
  def initialize
    @map_array = []
  end
  #find index of key, if it exists return the index
  #else create array of key value pairs
  def set(key, value)
    key_idx = nil
    map_array.each do |pairs|
      if pairs[0] == key
        key_idx = map_array.index(pairs)
        return key_idx
      end
    end
    key_idx = key_idx.nil? ? map_array.push([key, value]) : map_array[key_idx][1] = value
    value
  end
  #get value from key
  def get(key)
    map_array.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete(key)
    value = get(key)
    map_array.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(map_array)
  end

  private

  attr_reader :map_array

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end
