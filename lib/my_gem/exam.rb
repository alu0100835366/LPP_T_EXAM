# @author Antonio Suarez, Marcos Delgado

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
	# @return Imprime las preguntas y pide la respuesta del usuario
	def checkquestion
		#imprime pregunta y pide respuesta por pantalla.
		@listp.tail.value.show()
		if @answer==@listp.tail.value.t
			@correct+=1
			print "Usted eligio: ", @answer, "\n"
			puts "Respuesta correcta", "\n"
		else
			@fail+=1
			print "Usted eligio: ", @answer, "\n"
			puts "Respuesta incorrecta", "\n"
		end
		@listp.poptail
	end
end

class Interfaz
	attr_accessor :exam
	def initialize(e)
		@exam=e
	end
	def test
		for i in(0...@exam.listp.size)
			@exam.checkquestion
		end
		@exam.nota=@exam.correct*10/(@exam.correct+@exam.fail)
	end
end
