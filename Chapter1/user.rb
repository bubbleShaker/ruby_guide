# class User
#     attr_accessor :name,:address,:email
# end

# user=User.new
# user.name="soh"
# user.address="tokyo"
# user.email="aaa@gmail.com"
# puts user.name
# puts user.address
# puts user.email

# class User
#     attr_accessor :name,:address,:email
#     def initialize(name,address,email)
#         @name=name
#         @address=address
#         @email=email
#     end
# end

# user=User.new("soh","gunma","iii@gmail.com")
# puts user.name
# puts user.address
# puts user.email

class User
    attr_accessor :family_name,:given_name,:age
    def initialize(family_name,given_name,age)
        @family_name=family_name
        @given_name=given_name
        @age=age
    end
    def name(full,with_age)
        n=if full
            "#{family_name}#{given_name}"
        else
            given_name
        end
        if with_age
            n<<"(#{age})"
        end
        n
    end
end

user=User.new("Tanaka","Taro","20")
puts user.name(true,true)
puts user.name(true,false)
puts user.name(false,true)
puts user.name(false,false)

class User
    attr_accessor :family_name,:given_name,:age
    def initialize(family_name,given_name,age)
        @family_name=family_name
        @given_name=given_name
        @age=age
    end
    def name(full,with_age)
        n=if full
            "#{family_name}#{given_name}"
        else
            "#{given_name}"
        end
        if with_age
            n<<"(#{age})"
        end
        n
    end
end

user=User.new("Tanaka","Taro","20")
puts user.name(true,true)
puts user.name(true,false)
puts user.name(false,true)
puts user.name(false,false)

class User
    attr_accessor :family_name,:given_name,:age
    def initialize(family_name,given_name,age)
        @family_name=family_name
        @given_name=given_name
        @age=age
    end
    def name(full=true,with_age=true)
        n=if full
            "#{family_name}#{given_name}"
        else
            "#{given_name}"
        end
        if with_age
            n<<"(#{age})"
        end
        n
    end
end

puts user.name