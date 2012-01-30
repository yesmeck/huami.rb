require 'test/unit'
require 'huami'

class HuamiTest < Test::Unit::TestCase

    def test_one
        assert_equal('De46A920bB13D37c', Huami.huami('one', '123'))
    end

    def test_two
        assert_equal('K924748b267770BE', Huami.huami('two', '123'))
    end

end
