require "active_support"
require "active_support/core_ext"

module CC
  module CLI
    autoload :Analyze, "cc/cli/analyze"
    autoload :Command, "cc/cli/command"
    autoload :Console, "cc/cli/console"
    autoload :Engines, "cc/cli/engines"
    autoload :Help, "cc/cli/help"
    autoload :Init, "cc/cli/init"
    autoload :Runner, "cc/cli/runner"
    autoload :ValidateConfig, "cc/cli/validate_config"
    autoload :Version, "cc/cli/version"

    def self.commands
      constants.map { |n| const_get(n) }.select do |constant|
        constant < Command
      end
    end

  end
end