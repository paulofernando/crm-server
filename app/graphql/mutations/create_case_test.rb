require 'test_helper'

class Mutations::CreateCaseTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateCase.new(object: nil, field: nil, context: {}).resolve(args)
  end

  test 'create a new case' do
    case = perform(
        title: "Title 1",
        description: "Description 1",
        value:"1000.00",
        courtDate: "01-01-2020"
    )

    assert case.persisted?
    assert_equal case.title, "Title 1"
    assert_equal case.description, "Description 1"
    assert_equal case.value, "1000.00"
    assert_equal case.courtDate, "01-01-2020"
  end
end