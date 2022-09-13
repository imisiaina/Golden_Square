require 'present'

RSpec.describe Present do
  context "When contents have already been wrapped" do
    it "fails" do
      prezi = Present.new
      prezi.wrap("Tshirt")
      expect { prezi.wrap("Jumper") }.to raise_error "A contents has already been wrapped."
    end
  end
  context "When there are no contents to unwrap" do
    it "fails" do
      prezi = Present.new
      expect { prezi.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end