module MySimpleModule
  MYVAR = "myvariable"
  def MySimpleModule.doit (param1, param2)
    puts MYVAR, param1 , param2
  end
end

module OuterModule
  module InnerModule
    class MyClass
      attr_accessor(:name)
    end
  end

  class Parent < InnerModule::MyClass
    attr_accessor(:title)
    def initialize(name, title)
      @name = name
      @title = title
    end
  end
end

myc = OuterModule::InnerModule::MyClass.new
myc.name = "boo"
p myc.name

myp = OuterModule::Parent.new("myname", "mytitle")
p myp.name
p myp.title
