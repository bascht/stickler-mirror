require_relative "mirror/version"

module Stickler
  module Mirror
    def self.run
      # Fetch current Gemset from Bundler
      gem_environment = Bundler.environment.specs.to_hash

      # Iterate through this nasty "gem-hash"
      gems = gem_environment.collect{ |gem| gem[1][0] }

      # Call stickler for each parsed gem
      gems.each do |gem|
        name, version = gem.name, gem.version

        puts "\nMirroring #{name}-#{version}..."

        # Don't drink the kool aid
        result = Bundler.with_clean_env do
          system("stickler mirror #{name} --gem-version #{version}")
        end

        if result.nil?
          puts "I am sorry. Something went wrong mirroring #{name}."
          puts "Don't hesitate to file a bug report. :-)\n\n"
        end
      end
    end
  end
end
