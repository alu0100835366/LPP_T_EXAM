class Test
  attr_reader :q, :a1, :a2, :a3, :a4, :t
  def initialize(q,a1,a2,a3,a4,t)
    @q, @a1, @a2, @a3, @a4, @t = q, a1, a2, a3, a4, t
  end
  def showq()
    print "Pregunta: ", q, "\n"
  end
  def showa()
    print "\nA) ", a1, "\nB) ", a2, "\nC) ", a3, "\nD) ", a4
  end
end