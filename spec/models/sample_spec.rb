require 'rails_helper'

RSpec.describe Sample, type: :model do
  # Association test
  it { should have_many(:results).dependent(:destroy) }
  # Validation tests
end