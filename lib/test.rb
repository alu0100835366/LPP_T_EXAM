class Test
  attr_reader :q, :a1, :a2, :a3, :a4, :t, :a
  def initialize(q,a1,a2,a3,a4,t,a)
    @q, @a1, @a2, @a3, @a4, @t, @a= q, a1, a2, a3, a4, t, a
  end
  def showq()
    print "Pregunta: ", q, "\n"
  end
  def showa()
    print "\nA) ", a1, "\nB) ", a2, "\nC) ", a3, "\nD) ", a4
  end
  def ask()
    puts "\n\nElige una de las 4 opciones."
    if @a == 1
      @a = a1
    elsif @a == 2
      @a = a2
    elsif @a == 3
     @a = a3
    elsif @a == 4
     @a = a4
    end
    
    print "\nLa respuesta correcta es: ", a
  end
end