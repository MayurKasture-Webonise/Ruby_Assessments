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
class Company
    def initialize(division,employees)
      @division = division
      @employees = employees
    end

    def division()
        return @division
    end

    def employees()
        return @employees
    end

end


class Product 


end

class Services

end
obj1 = Company.new("A","2");
obj2 = Company.new("B","4");


print obj1.division()+" Division has "  + obj1.employees() + " employees \n";
print obj2.division()+" Division has "  + obj2.employees() + " employees \n";

