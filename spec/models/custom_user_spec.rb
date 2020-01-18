require 'rails_helper'

RSpec.describe CustomUser, type: :model do
  subject {
    described_class.new(title: "Anything", description: "Lorem ipsum",
                        start_date: DateTime.now, end_date: DateTime.now + 1.week)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

end
