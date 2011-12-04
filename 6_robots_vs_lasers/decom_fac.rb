class DecomFac
	attr_reader :filename
	def initialize(f=nil)
		@filename = f
	end

	def go
		belts = Array.new

		File.open(@filename, "r") do |f|
			belts = Array.new
			layout = Array.new
			f.each_line do |line|
				if line.size > 1
					layout << line
				else
					belts << layout
					layout = Array.new
				end
			end
			belts << layout if layout.size == 3
		end
		
		belts.each do |b|
			
		end

		Array.new(["GO WEST"])
	end
end