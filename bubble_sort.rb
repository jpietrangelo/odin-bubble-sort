#!/usr/bin/env ruby
# frozen_string_literal: true

# bubble_sort.rb

def bubble_sort(nums)
  swaps = 0
  nums.size.downto(0) { |loop_num|
    swaps = 0
    nums.each_with_index do |num, i|
      test = []
      if i < nums.size - 1
        test << nums.values_at(i, i+1)
        if (test[0][0] > test[0][1])
          test[0].reverse!
          2.times { nums.delete_at(i) }
          nums.insert(i, test[0][0], test[0][1])
          swaps = 1
        end
      end
    end
    break if swaps == 0
  }
  nums
end

p bubble_sort([5,1,3,2,9,8,1,9,7,2])
# -> [1, 1, 2, 2, 3, 5, 7, 8, 9, 9]
p bubble_sort([4,3,78,2,0,2])
# -> [0, 2, 2, 3, 4, 78]
p bubble_sort([1,2,3,4,6,5])
# -> [1, 2, 3, 4, 5, 6]
