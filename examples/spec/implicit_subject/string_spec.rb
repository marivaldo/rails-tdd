require 'string_not_empty'

describe String do
  describe StringNotEmpty do
    it "Is not empty" do
      expect(subject).to eq("I'm not empty")
    end
  end
end