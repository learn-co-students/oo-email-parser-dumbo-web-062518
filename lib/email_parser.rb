# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

attr_accessor :emails
@emails = []

def initialize(email)
  @emails = email
end

def parse
  split.reject {|email| email == ""}
  @emails = new_emails.uniq
end

def split
  @emails = @emails.split(/[\s,]/)

end
