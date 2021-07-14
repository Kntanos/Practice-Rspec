require "running"

describe Run do

  describe "attributes" do

    subject do
      Run.new(:duration => 32,
              :distance => 5.2,
              :timestamp => "2014-12-22 20:30")
    end

    it "responds to '#duration'" do
      expect(subject).to respond_to(:duration)
      expect(subject).to respond_to(:distance)
      expect(subject).to respond_to(:timestamp)
    end
  end
end