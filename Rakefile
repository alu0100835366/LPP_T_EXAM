task :default => :spec

desc "Ejecutar las espectativas de la clase List"
task :spec do
  sh "rspec -I. spec/list_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/list_spec.rb --format documentation"
end
