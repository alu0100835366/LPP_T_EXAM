class Test
    include Comparable
  attr_reader :q, :a1, :t, :a
  def initialize(q,a1,t,a)
    @q, @a1, @t, @a= q, a1, t, a
  end
  def <=> other
    return nil unless other.is_a?(self.class)
    [self.q, self.a1, self.t, self.a] <=> [other.q, other.a1, other.t, other.a]
  end
  def show()
    #print "Pregunta: ", q, "\n"
    for i in(0...a1.size)
      #print "\n ", i+1, ")",  a1[i]
    end
    #puts "\n\nElige una de las opciones."
     for i in(0...a1.size)
       if @a == i+1
      @a = a1[i]
       end
     end
    #print "\nLa respuesta correcta es: ", a, "\n"
  end
end

class BTest < Test
  def initialize(q,a1,t,a)
    super(q,a1,t,a)
  end
  def show()
  #print "Pregunta: ", q, "\n"
   #   print "\nA) ",  a1[0]
    #  print "\nB) ",  a1[1]
    #puts "\n\nElige una de las opciones."
       if @a == 1
      @a = a1[0]
       else
      @a = a1[1]
       end
    #print "\nLa respuesta correcta es: ", a, "\n"
  end 
end
