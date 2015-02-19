gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'cryptographer'


class EncryptionEngineTest < Minitest::Test

  def test_an_engine_can_exist
    engine = EncryptionEngine.new
    EncryptionEngine.respond_to?(:initialize)
  end


  def test_it_encrypts_using_rot13
    engine = EncryptionEngine.new
    output = engine.encrypt("My Message")
    assert_equal "Zl Zrffntr", output
  end
end
