$global_var = 'global'

class MyClassWithVariables
  CONST_VAL = 123
  attr_accessor :instance_var

  @@class_var = 0

  def initialize(param_var = 1)
    @instance_var_initialized = param_var
    @instance_var = 'inst'
  end

  def my_method
    local_var = 'local'
  end

  def class_var
    @@class_var
  end

  def class_var=(val)
    @@class_var = val
  end
end

myinstance1 = MyClassWithVariables.new();
myinstance2 = MyClassWithVariables.new(2);

# constant
p MyClassWithVariables::CONST_VAL

# instance var
myinstance2.instance_var = 'new-inst'
p "Instance #1 var=#{myinstance1.instance_var}"
p "Instance #2 var=#{myinstance2.instance_var}"

# class var
myinstance1.class_var += 10
myinstance2.class_var += 20

p "Class Var1=#{myinstance1.class_var}"
p "Class Var2=#{myinstance2.class_var}"

MyClassWithVariables.class_variable_set(:@@class_var, 1)
p "Class Var=#{MyClassWithVariables.class_variable_get(:@@class_var)}"


