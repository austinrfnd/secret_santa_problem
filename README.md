# Secret Santa App

This is an app where given a list of names it will pair a person with a recipient for secret santa.  The main code base is in secret_santa.rb.  The specs live in /spec

## Setup

Install the required gems with bundle:

```
bundle
```

## Specs

run rake to run the specs:

```
rake

FFFF

Failures:

  1) SecretSanta initialize should raise argument error if not enough people
     Failure/Error: expect { SecretSanta.new(["Austin", "Matt"]) }.to raise_error(ArgumentError)
       expected ArgumentError but nothing was raised
     # ./spec/secret_santa_spec.rb:11:in `block (3 levels) in <top (required)>'

  2) SecretSanta pair_people should return a Hash of people
     Failure/Error: expect(secret_santa.pair_people).to be_kind_of(Hash)
       expected nil to be a kind of Hash
     # ./spec/secret_santa_spec.rb:18:in `block (3 levels) in <top (required)>'

  3) SecretSanta pair_people should have only one unique person per key
     Failure/Error: expect(secret_santa.pair_people.keys.sort).to eql(list_of_names.sort)
     NoMethodError:
       undefined method `keys' for nil:NilClass
     # ./spec/secret_santa_spec.rb:24:in `block (3 levels) in <top (required)>'

  4) SecretSanta pair_people A recipient should not be paired with their sender
     Failure/Error: paired_people.keys.each do |person|
     NoMethodError:
       undefined method `keys' for nil:NilClass
     # ./spec/secret_santa_spec.rb:31:in `block (3 levels) in <top (required)>'

Finished in 0.00261 seconds (files took 0.22929 seconds to load)
4 examples, 4 failures

```

## Bonus Points

- Solve it in O(n)


