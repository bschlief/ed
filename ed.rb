#!/usr/bin/env ruby

# Counts the number of times that each sum of dice
# is encountered.  This example counts how many times
# each sum of 3 dice is encountered.
# Problem: How do you extend this to an arbitrary
# number of dice?

counts = {}

(1..6).each do |i| 
  (1..6).each do |j|
    (1..6).each do |k|
      counts[i+j+k] ||= 0;
      counts[i+j+k] += 1;
    end
  end
end

counts.keys.each { |k| puts "Sum#{k} occurs #{counts[k]} times" }
