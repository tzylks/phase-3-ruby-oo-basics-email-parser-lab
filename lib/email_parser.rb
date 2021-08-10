# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :email
   
    def parse()
        # "hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
        # new_arr = @email.split(', ') && @email.split(' ')
        # puts new_arr[0].tr(',', ' ')
        # puts new_arr[1]
        # "5.5".match(/\d\.\d/) # match
        new = @email.gsub(/[, ]/, ' ').split(' ').uniq
         return new
    end

    def initialize(email)
        @email = email
    end

end

parse_this = EmailAddressParser.new('john@doe.com, jane@doe.com')
me = EmailAddressParser.new('john@doe.com jane@doe.com')
parse_this.parse
me.parse
