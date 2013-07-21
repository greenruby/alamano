module Alamano
  class Task

    attr_reader :dir

    def initialize(source, regexp, template, destination)
      @regexp = Regexp.new(regexp)
      @template = template
      @dstination = destination
      @dir = Dir.glob(File.join(source,'*'))
    end

    def files
      @dir.select { |d| @regexp =~ d }
    end

  end
end