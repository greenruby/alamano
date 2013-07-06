require "alamano/version"
require "alamano/builder"

class Alamano
  extend self

  CONFIG_FILE = ENV['config'] || 'alamano.conf'

  def config
    @config ||= to_ostruct(YAML::load_file(CONFIG_FILE))
  end

  def to_ostruct(obj)
    result = obj
    if result.is_a? Hash
      result = result.dup
      result.each do |key, val|
        result[key] = to_ostruct(val)
      end
      result = OpenStruct.new result
    elsif result.is_a? Array
      result = result.map { |r| to_ostruct(r) }
    end
    return result
  end

  def build
    Alamano::Builder
  end

end