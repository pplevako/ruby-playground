# # # array = [1, 2, 3, 4]
# # #
# # # array.collect! do |n|
# # #   n ** 2
# # # end
# # #
# # # puts array.inspect
# #
# # class Array
# #   def iterate!
# #     self.each_with_index do |x, i|
# #       self[i] = yield(x)
# #     end
# #   end
# # end
# #
# # # class Array
# # #   def iterate!(&code)
# # #     self.each_with_index do |n, i|
# # #       self[i] = code.call(n)
# # #     end
# # #   end
# # # end
# #
# # array = [1, 2, 3, 4]
# #
# # array.iterate! do |n|
# #   n ** 2
# # end
# #
# # # array.iterate!(lambda { |n| n ** 2 })
# #
# # #
# # # puts array.inspect
# #
# # def what_am_i
# #   5 # no need to yield
# # end
# #
# # # def what_am_i(&block)
# # #   block.class
# # # end
# #
# # puts what_am_i { |x| puts x }
# #
# # # class Array
# # #   def iterate!(code)
# # #     self.each_with_index do |n, i|
# # #       self[i] = code.call(n)
# # #     end
# # #   end
# # # end
# # #
# # # array_1 = [1, 2, 3, 4]
# # # array_2 = [2, 3, 4, 5]
# # #
# # # square = Proc.new do |n|
# # #   n ** 2
# # # end
# # #
# # # array_1.iterate!(square)
# # # array_2.iterate!(square)
# # #
# # # puts array_1.inspect
# # # puts array_2.inspect
# #
#
# def args(code)
#   one, two = 1, 2
#   code.call(one, two)
# end
#
# # args(Proc.new{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})
#
# args(lambda{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

def proc_return(code)
  code.call
  'proc_return method finished'
end

def lambda_return
  lambda { return 'lambda' }.call
  'lambda_return method finished'
end

p = Proc.new { return 'Proc.new' }

puts proc_return(p)
puts lambda_return

# def generic_return(code)
#   one, two    = 1, 2
#   code.call(one, two)
#   # "Give me a #{three} and a #{four}"
#   'yeeee'
# end
#
# puts generic_return(lambda { |x, y| return x + 2, y + 2 })
#
# puts generic_return(Proc.new { |x, y| return x + 2, y + 2 })
#
# puts generic_return(Proc.new { |x, y| x + 2; y + 2 })
#
# puts generic_return(Proc.new { |x, y| [x + 2, y + 2] })

method(:puts).owner