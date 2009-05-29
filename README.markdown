Pearl
========

Pearl implements Perl's [autovivification](http://en.wikipedia.org/wiki/Autovivification) in ruby.  OpenStruct gets us 80% of the way there. 

      irb(main):017:0> a = Pearl.new
      => #<Pearl>
      irb(main):018:0> a.pants.belt.buckle.burst = true
      => true
      irb(main):019:0> a
      => #<Pearl pants=#<Pearl ...>>
      irb(main):020:0> a.pants
      => #<Pearl belt=#<Pearl ...>>
      irb(main):021:0> a.pants.chores = 4
      => 4
      irb(main):022:0> a.pants
      => #<Pearl chores=4, belt=#<Pearl ...>>
      irb(main):023:0> a.pants.chores
      => 4

## .plan ##

I may work out the details of an implementation where you include Perl::Auto and then you wouldn't even have to explicitly call Pearl.new, you could just use local variable names but that would be evil.

## Source Code ##

Main repository is at [http://github.com/aaronblohowiak/pearl/](http://github.com/aaronblohowiak/pearl/)

## Contributors ##
  * [Aaron Blohowiak](http://github.com/aaronblohowiak)
  
## License ##
Pearl is released under the [WTFPL](http://en.wikipedia.org/wiki/WTFPL). 
