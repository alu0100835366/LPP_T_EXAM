# @author Antonio Suarez, Marcos Delgado

require_relative "list"
require_relative "test"

class Exam
	attr_reader :listp, :correct, :fail, :nota, :answer
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
 Imprime las preguntas y pide la respuesta del usuario
	def checkquestion(ans)
		#imprime pregunta y pide respuesta por pantalla.
		#@listp.tail.value.show()
		@answer=ans
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
	def reverse
		@aux=List.new
		@listp.reverse_each{|v| @aux.pushhead(v)}
		@listp=@aux
	end
	def calcnote
		@nota=@correct*10/(@correct+@fail)
	end
end

class Interfaz
	attr_reader :exam
	def initialize(e)
		@exam=e
	end
	def test(a)
		for i in(0...a.size)
			@exam.checkquestion(a[i])
		end
		@exam.calcnote
	end
end
