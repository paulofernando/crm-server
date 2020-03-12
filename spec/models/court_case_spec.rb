require "rails_helper"

describe CourtCase do
  it "valid if title, value and court date are not null" do
    court_case = CourtCase.new(title: "Title 1",
                               description: "Description 1",
                               value: 1000.00,
                               court_date: "01-01-2020")

    expect(court_case).to be_valid
  end
end
