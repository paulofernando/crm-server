require "rails_helper"

describe CourtCase do
  it "valid if title, value and court date are not nil" do
    court_case = CourtCase.new(title: "Title 1",
                               description: "Description 1",
                               value: 1000.00,
                               court_date: "01-01-2020")

    expect(court_case).to be_valid
  end

  it "invalid because fields are nil" do
    court_case = CourtCase.new(title: nil,
                               description: nil,
                               value: nil,
                               court_date: nil)

    court_case.valid?
    expect(court_case.errors[:title]).to include("can't be blank")
    expect(court_case.errors[:description]).not_to include("can't be blank")
    expect(court_case.errors[:value]).to include("can't be blank")
    expect(court_case.errors[:court_date]).to include("can't be blank")
  end
end
