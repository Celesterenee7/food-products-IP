require 'rails_helper'

describe Review do
  it { should belong_to(:product)}
end

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_presence_of :rating }
end

describe Review do
  it { should validate_numericality_of(:rating).is_less_than_or_equal_to(5)}
  it { should validate_numericality_of(:rating).is_greater_than_or_equal_to(1)}
end

describe Review do
    it { should validate_length_of(:content_body).is_at_least(50)}
    it { should validate_length_of(:content_body).is_at_most(250)}
end