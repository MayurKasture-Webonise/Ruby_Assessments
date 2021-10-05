# Q.1) Use Blocks, Procs and Lambda each to write a program which takes array of integers as an input and finds the count of even numbers #      in the array.
# Answer -->

'''
# With Block
puts [1, 2, 3, 4, 5].select { |i| i.even? }
'''


# With Proc
'''
even_num = Proc.new { |num| puts [1, 2, 3, 4, 5].select { |i| i.even? }}
even_num.call
'''



# With Lambda
'''
my_lam = lambda do puts [1, 2, 3, 4, 5].select { |i| i.even? }
end
my_lam.call
'''



# Q.2) Write a class in ruby which represents a Company. Add constructors, 
# high level private and public methods which suit the company chores (eg: divisions in the company, 
# number of employees in each division etc).


module Modl
  def msg
    puts 'this is module'
  end
end



class Company

  def initialize(c_name, modl_num, mang_date)
    @c_name = c_name
    @modl_num = modl_num
    @mang_date = mang_date
  end

  def prod_detail
  	puts "Model Number : #{@modl_num}" 
    puts "Product Name: #{@c_name}"
    puts "Manufacturing Year : #{@mang_date}"
  end
  include Modl	
end




class Product < Company
	puts "We provide Car"
end






class Servises < Company
	def about_servises()
		puts ""
	end
end





c = Company.new("honda", 1001, 21-2-2021)
c.msg()
c.prod_detail()
s = Servises.new("honde", 1001, 21-2-2910)	
s.about_servises()
