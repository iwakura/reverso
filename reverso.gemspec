Gem::Specification.new do |spec|
  spec.name = 'reverso'
  spec.version = '0.0.1'
  spec.executables = 'reverso'
  spec.summary = 'Interface for reverso.net translation service.'
  spec.description = <<-EOF
    Interface for reverso.net translation service.
    Command-line tool included.
  EOF
  spec.add_dependency 'json'
  spec.add_development_dependency 'shoulda'
  spec.add_development_dependency 'fakeweb'
  spec.files = Dir['lib/**/*.rb', 'bin/*', 'test/*.rb', 'README', 'Rakefile', 'License']
  spec.extra_rdoc_files = %w[README License]
  spec.rdoc_options = ['--title', 'reverso', '--main', 'README']
  spec.has_rdoc = true
  spec.author = 'Iwakura Taro'
  spec.email = 'taro@mail333.com'
  spec.homepage = 'https://github.com/iwakura/reverso'
end
