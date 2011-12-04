require 'minitest/spec'
require 'minitest/autorun'
require '../decom_fac'

describe DecomFac do
	before do
		@filename = "../factory_map.txt"
	end

	it "can be called without a filename" do
		DecomFac.new.must_be_instance_of DecomFac
	end

	it "can be called with a filename" do		
		DecomFac.new(@filename).must_be_instance_of DecomFac
	end

	it "should respond_to 'go'" do
		DecomFac.new(@filename).must_respond_to("go")
	end

	it "should return an array of directions" do
		trip = DecomFac.new(@filename)
		result = trip.go
		result.must_be_kind_of(Array)
		result.size.must_be :>,0
	end

	it "should return correct results for a given input" do
		trip = DecomFac.new(@filename)
		result = trip.go
		result.must_equal(['GO WEST','GO EAST','GO WEST'])
	end
end