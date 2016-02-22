module  Append
  # Appends two objects together
  class AppendToObject
    attr_reader :obj
    def initialize(o)
      @obj = o
    end
    def do_it(o2)
      @obj.+(o2)
    end
  end
end
