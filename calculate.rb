$:.push File.join(File.dirname(__FILE__),'lib')
require 'rpncalc'
class Calculate
  include Calculator
  QUIT='q'
  attr_reader :in,:out
    def initialize(in_io,out_io)
      @in,@out = in_io,out_io
    end

    def run()
      self.in.each do|input| 
        input = prepare(input)
        goodbye_if_quit(input) 
        output_calculation(input)
      end
    end

  protected
    def output_calculation(input)
      self.out << calculate(input)
      self.out << "\n"
    end

    def prepare(input)
      input = input.chomp.strip
    end
    def goodbye_if_quit(input)
      if QUIT === input
        self.out << "goodbye\n"
        exit(0) # safe exit 
      end
    end
  end
Calculate.new($stdin,$stdout).run
