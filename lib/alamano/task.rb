module Alamano
  class Task

    def initialize(source, regexp, template, destination)
      @regexp = Regexp.new(regexp)
      @template = template
      @destination = destination
      @dir = Dir.glob(File.join(source,'*'))
    end

    def files
      @dir.select { |d| @regexp =~ d }
    end

    def run
      files.each do |f|
        ext = f[f.rindex('.') + 1,f.length]
        file = File.basename(f,".#{ext}")
        processor = Alamano::EXTENSIONS[ext.to_sym]
        if processor.nil?
          raise Alamano::UnknownExtensionError, "Unknown extension for #{file}.#{ext}"
        end
        #meat = Alamano::Processor.call(ext, f)
      end
    end

  end
end