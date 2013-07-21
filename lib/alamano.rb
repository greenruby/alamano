require 'ostruct'

require_relative "alamano/version"
require_relative "alamano/ostruct"
require_relative "alamano/task"
require_relative "alamano/builder"

module Alamano

  EXTENSIONS = {
    md: 'markdown',
    markdown: 'markdown',
    yml: 'yaml',
    yaml: 'yaml',
    json: 'json'
  }

  class UnknownExtensionError < StandardError
  end

end