require 'refinerycms-core'

module Refinery
  autoload :NewsGenerator, 'generators/refinery/news_generator'

  module News
    require 'refinery/news/engine' if defined?(Rails)

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join("spec/factories").to_s ]
      end

      def table_name_prefix
        'refinery_news_'
      end
    end
  end
end
