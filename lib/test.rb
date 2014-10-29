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
    puts "\n\nElige una de las 4 opciones."
    if @a == 1
      @a = a1[0]
    elsif @a == 2
      @a = a1[1]
    elsif @a == 3
     @a = a2[2]
    elsif @a == 4
     @a = a1[3]
    end
    
    print "\nLa respuesta correcta es: ", a
  end
end