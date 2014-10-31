task :default => :spec

desc "Ejecutar las espectativas de la clase List y Test"
task :spec do
  sh "rspec -I. spec/list_spec.rb"
  sh "rspec -I. spec/test_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/list_spec.rb --format documentation"
  sh "rspec -I. spec/test_spec.rb --format documentation"
end
