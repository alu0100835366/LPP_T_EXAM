task :default => :spec

desc "Ejecutar las espectativas de la clase Test"
task :spec do
  sh "rspec -I. spec/test_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/test_spec.rb --format documentation"
end