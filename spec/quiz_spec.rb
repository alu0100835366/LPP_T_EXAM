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
	end
	it "Se crea name" do
		@quiz.name.should eq("Cuestionario de LPP 05/12/2014")
	end
	it "to_s" do
		@quiz.to_s.should eq("Cuestionario de LPP 05/12/2014\n\n¿Cuantos argumentos de tipo bloque puede recibir un metodo?\n\n  1 -  1\n  2 -  2\n  3 -  muchos\n  4 -  los que defina el usuario\n\n\nEn Ruby los bloque son objetos que continen codigo\n\n  1 -  Cierto\n  2 -  Falso\n\n\n")
	end
end
