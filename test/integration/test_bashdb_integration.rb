require_relative '../helper'

class TestCheersIntegration < MiniTest::Test

    def test_help_message
        output = `././bashdb`
        expected = "Testing\n"
        assert_equal expected, output
    end

end