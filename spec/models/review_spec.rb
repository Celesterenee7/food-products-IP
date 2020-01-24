require 'rails_helper'

describe Review do
  it { should belong_to(:product)}
  # it { should validate_length_of(:rating).is_at_least(1).is_at_most(10) }
end