# Execute this program with "ruby bubble_challenge.rb"
# It answers the 3 questions asked in the README.md

# Q:  The example above took 21 iterations to get to a result.
# Can you tweak the algorithm so that it takes the same number of swaps (7)
# but fewer total operations?

# A:  Sure. Try it by yourself.
a = [4, 3, 5, 0, 1]


# Q:  Given the numbers 0 through 5, what would be the worst case scenario for
# bubble sort (aka, what order would necessitate the most swaps)?

# A:  This is the worst case scenario for a range from 0 to 5.
# a = [5, 4, 3, 2, 1, 0]


# Q:  How many swaps would that worst case take?

# A:  15 swaps.

class BubbleSort

  def self.sort(a)

    iterations = 0
    swap = 0
    loop do
      swapped = false
      (a.length - 1).times do |i|
        if a[i] > a[i + 1]
          a[i], a[i + 1] = a[i + 1], a[i]
          swap += 1
          swapped = true
        end
        iterations += 1
      end
      break if not swapped
    end
    print_results(a, swap, iterations)
    a
  end

  def self.print_results(a, swap, iterations)

    puts "Final result: #{a}"
    puts "Swaps: #{swap}"
    puts "Iterations: #{iterations}"
  end

end

BubbleSort.sort(a)
