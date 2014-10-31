class Test
  attr_reader :q, :a1, :t, :a
  def initialize(q,a1,t,a)

    @q, @a1, @t, @a= q, a1, t, a
  end
  def showq()
    print "Pregunta: ", q, "\n"
  end
  def showa()
    for i in(0...a1.size)
      print "\nA) ",  a1[i]
    end
  end
  def ask()
    puts "\n\nElige una de las opciones."
     for i in(0...a1.size)
       if @a == i+1
      @a = a1[i]
       end
    end
    
    print "\nLa respuesta correcta es: ", a, "\n\n\n\n"
  end
end