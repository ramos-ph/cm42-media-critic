require "rails_helper"

RSpec.describe Platform, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:year) }
end
