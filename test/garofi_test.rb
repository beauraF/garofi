require "test_helper"

class GarofiTest < Minitest::Test
  def test_has_a_version_number
    assert Garofi::VERSION
  end

  def test_load_global_configuration
    assert_equal 'debug', ENV['LOG_LEVEL']
  end

  def test_load_environment_specific_configuration
    assert_equal 'redis://production:6379/1', ENV['REDIS_URL']
  end

  def test_environment_specific_configuration_override_global_configuration
    assert_equal 'postgres://user:password@production:5432', ENV['DATABASE_URL']
  end

  def test_configuration_support_erb
    assert_equal '903e517', ENV['SECRET_KEY_BASE']
  end
end
