# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
	attr_reader :csv
	def initialize(csv)
		@csv = csv
	end

	def parse
		withoutt_commas = @csv.gsub(", ", " ")
		withoutt_commas.split(" ").uniq
	end
end