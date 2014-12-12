# encoding: UTF-8
require 'my-gem'
require 'spec_helper'
describe Quiz do
	before :each do
		@quiz = Quiz.new("Cuestionario de LPP 05/12/2014") {
			question '¿Cuantos argumentos de tipo bloque puede recibir un metodo?',
			right =>'1',
			wrong =>'2',
			wrong =>'muchos',
			wrong =>'los que defina el usuario'
			question 'En Ruby los bloque son objetos que continen codigo',
			wrong =>'Cierto',
			right =>'Falso'
		}
		@answer = Answer.new(1, "RIGHT", "Respuesta")
		@answer2 = Answer.new(2, "FALSE", "Respuesta2")
		@question = Question.new("Pregunta", ["1 -  Respuesta", "2 -  Respuesta2"])
	end
	it "Se crea name" do
		@quiz.name.should eq("Cuestionario de LPP 05/12/2014")
	end
	it "quiz to_s" do
		@quiz.to_s.should eq("Cuestionario de LPP 05/12/2014\n\n¿Cuantos argumentos de tipo bloque puede recibir un metodo?\n\n  1 -  1\n  2 -  2\n  3 -  muchos\n  4 -  los que defina el usuario\n\n\nEn Ruby los bloque son objetos que continen codigo\n\n  1 -  Cierto\n  2 -  Falso\n\n\n")
	end
	it "answer to_s" do
		@answer.to_s.should eq("1 -  Respuesta")
	end
	it "answer is right" do
		@answer.is_right?
	end
	it "comparacion de answers" do
		@test = @answer.order < @answer2.order
		@test.should eq(true)
	end
	it "question to_s" do
		@question.to_s.should eq("Pregunta\n\n  1 -  \n  2 -  \n\n")
	end
	it "quiz title" do
		@quiz.title("Cuestionario de LPP 05/12/2014").should eq("Cuestionario de LPP 05/12/2014")
	end
end

