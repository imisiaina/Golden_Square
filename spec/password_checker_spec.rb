require 'password_checker'

RSpec.describe PasswordChecker do
  context "If password is less than 8 characters" do
    it "fails" do
      pass = PasswordChecker.new
      expect { pass.check("home") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
  it "returns true when 'Blackadder' is passed" do
    pass = PasswordChecker.new
    result = pass.check("Blackadder")
    expect(result).to eq true
  end
end