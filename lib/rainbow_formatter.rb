require 'rspec/core/formatters/base_text_formatter'

# For Rspec >= 3.1
class RainbowFormatter < ::RSpec::Core::Formatters::BaseTextFormatter

  PI_3 = Math::PI / 3

  ::RSpec::Core::Formatters.register self, :example_passed, :example_pending, :example_failed, :start_dump

  def initialize(output)
    # colors calculation stolen from Minitest's Pride Plugin
    # https://github.com/seattlerb/minitest
    @colors = (0...(6 * 7)).map { |n|
      n *= 1.0 / 6
      r  = (3 * Math.sin(n           ) + 3).to_i
      g  = (3 * Math.sin(n + 2 * PI_3) + 3).to_i
      b  = (3 * Math.sin(n + 4 * PI_3) + 3).to_i

      color_index = 36 * r + 6 * g + b + 16
      rainbow_color_code(color_index)
    }
    @color_index = 0

    super
  end

  def example_passed(_notification)
    @color_index == (@colors.size - 1) ? @color_index = 0 : @color_index += 1
    output.print colorize('.', @colors[@color_index])
  end

  def example_pending(_notification)
    output.print ::RSpec::Core::Formatters::ConsoleCodes.wrap('*', :pending)
  end

  def example_failed(_notification)
    output.print ::RSpec::Core::Formatters::ConsoleCodes.wrap('F', :failure)
  end

  def start_dump(_notification)
    output.puts
  end

  private

  def rainbow_color_code(color_index)
    "38;5;#{color_index}"
  end

  def colorize(str, color_code)
    "\e[#{color_code}m#{str}\e[0m"
  end
end
