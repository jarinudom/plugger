class Plugger

  def self.hi
    puts "Hi, I'm plugger. This is just a stub."
  end

end

require 'rails/generators'
require 'active_support/dependencies'

unless Rails.version.to_i >= 4
  module Rails
    class Plugin < Engine

      alias :not_silenced_initialize :initialize

      def initialize(root)
        ActiveSupport::Deprecation.silence{ self.send :not_silenced_initialize, root }
      end

    end
  end
end

Dir["#{Dir.pwd}/vendor/plugins/*/init.rb"].each do |f|
  require_or_load f
end

Dir["#{Dir.pwd}/vendor/plugins/**/lib/generators/**/*.rb"].each do |f|
  require_or_load f
end

require 'plugger/plugger_tasks'

