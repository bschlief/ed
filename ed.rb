#!/usr/bin/env ruby

# Counts the number of times that each sum of dice
# is encountered.  This example counts how many times
# each sum of 3 dice is encountered.
# Problem: How do you extend this to an arbitrary
# number of dice?

def dice_counts(sides, dice)
  dots = (1..sides).to_a
  
  sums = dots.repeated_permutation(dice).collect {|arr| arr.inject(:+)}

  counts_hash = {}
  sums.each do |s|
    counts_hash[s] ||= 0
    counts_hash[s] += 1
  end

  counts_hash
end


sides = ARGV[0].to_i
dice = ARGV[1].to_i
puts "Sides: #{sides}\tDice: #{dice}"
puts dice_counts(sides,dice)
