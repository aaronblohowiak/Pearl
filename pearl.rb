require 'ostruct'
 
class Pearl < OpenStruct
  alias_method :open_structs_method_missing, :method_missing
  
  def method_missing(meth, *args)
    if meth.to_s =~ /=$/
      open_structs_method_missing(meth, *args)
    else
      self.new_ostruct_member(meth)
      new_child = Pearl.new(args)
      self.send(meth.to_s+"=", new_child)
      return new_child
    end
  end
end