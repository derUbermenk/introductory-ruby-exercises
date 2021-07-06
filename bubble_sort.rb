
# @param arr [Array]
# @return [Array]
def bubble_sort(arr)
  indx_to_check = (0..(arr.length - 2))  # go over this indexes
  loop do
    swapped = false
    indx_to_check.each{ |indx|
      # @type [Integer]
      next_indx = indx + 1
      # @type [Integer]
      curr_item = arr[indx]
      # @type [Integer]
      next_item = arr[next_indx]

      if curr_item > next_item
        swapped = swap(indx, next_indx, arr) # return bolean -> true
      end
    }

    unless swapped == true
      return arr
    end
  end
end

def swap(indx, next_indx, arr)
  arr[indx], arr[next_indx] = arr[next_indx], arr[indx]
  true
end

