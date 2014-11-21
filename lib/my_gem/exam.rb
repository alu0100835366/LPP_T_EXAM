require_relative "list"
require_relative "test"

class Exam
	attr_accessor :listp, :correct, :fail, :nota, :answer
	def initialize(p)
		@listp=List.new
		for i in(0...p.size)
			@listp.pushhead(p[i])
		end
		@correct=0
		@fail=0
		@nota=0
		@answer=nil
	end
	def checkquestion(r)
		#imprime pregunta y pide respuesta por pantalla.
		@answer=r
		@listp.tail.value.show()
		if @answer==@listp.tail.value.t
			@correct+=1
			#print "Usted eligio: ", @answer, "\n"
			#puts "Respuesta correcta", "\n"
		else
			@fail+=1
			#print "Usted eligio: ", @answer, "\n"
			#puts "Respuesta incorrecta", "\n"
		end
		@listp.poptail
	end
	def calcnote
		@nota=@correct*10/(@correct+@fail)
	end
end

class Interfaz
	attr_accessor :exam
	def initialize(e)
		@exam=e
	end
	def test(r)
		for i in(0...@exam.listp.size)
			@exam.checkquestion(r[i])
		end
		@exam.calcnote
	end
end
