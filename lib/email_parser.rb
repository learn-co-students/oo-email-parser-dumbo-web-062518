# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def parse
    new_data = @data.split(/[,\s]/).reject { |x| x.empty? }
    new_data.uniq
    # binding.pry
  end
end
