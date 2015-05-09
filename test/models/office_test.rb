require 'test_helper'

class OfficeTest < ActiveSupport::TestCase
  test "we can filter by election" do
    presidency = Office.find(1)
    slumlord_2020 = Election.find(1)
    candidates = presidency.candidates_in(slumlord_2020)
    alice = Candidate.find(1)
    bob = Candidate.find(2)
    assert_equal candidates, [alice, bob]
  end
end
