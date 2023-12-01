require "rails_helper"

RSpec.describe MoviesRepository, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:year) }
  it { is_expected.to validate_presence_of(:director) }
  it { is_expected.to validate_presence_of(:writer) }
  it { is_expected.to validate_presence_of(:producer) }
  it { is_expected.to validate_presence_of(:cast) }
end
