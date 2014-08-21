require_relative '../secret_santa'

# require 'rspec'
describe "SecretSanta" do
  let :list_of_names do
    ["John", "Kyle", "Jose"]
  end

  describe 'initialize' do
    it "should raise argument error if not enough people" do
      expect { SecretSanta.new(["Austin", "Matt"]) }.to raise_error(ArgumentError)
    end
  end

  describe "pair_people" do
    it "should return a Hash of people" do
      secret_santa = SecretSanta.new(list_of_names)
      expect(secret_santa.pair_people).to be_kind_of(Hash)
      expect(secret_santa.pair_people['John']).to_not be_nil
    end

    it "should have only one unique person per key" do
      secret_santa = SecretSanta.new(list_of_names)
      expect(secret_santa.pair_people.keys.sort).to eql(list_of_names.sort)
      expect(secret_santa.pair_people.keys.length).to eql(3)
    end

    it "A recipient should not be paired with their sender" do
      secret_santa = SecretSanta.new(list_of_names)
      paired_people = secret_santa.pair_people
      paired_people.keys.each do |person|
        recipient = paired_people[person]
        expect(paired_people[recipient]).to_not eql(recipient)
      end
    end
  end
end