require 'ostruct'
 
class Pearl < OpenStruct
  def method_missing(meth, *args)
    return super  if meth.to_s =~ /=$/
    return self.send("#{meth}=", self.class.new(args))
  end
end