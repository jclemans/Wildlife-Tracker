require spec_helper

describe Sighting do
  it { should validate_presence_of :animal_id }

end
