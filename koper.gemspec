require_relative "./lib/koper/version"

Gem::Specification.new do |s|
  s.name        = "koper"
  s.version     = Koper::VERSION
  s.summary     = "Controversial standard class operator set"
  s.description = <<~EOT
    It extends some standard classes with operators whose mathematical and logical meaning is difficult to justify.
  EOT
  s.authors     = ["Łukasz Pomietło"]
  s.email       = "oficjalnyadreslukasza@gmail.com"
  s.files       = Dir.glob('lib/**/*')
  s.homepage    = "https://github.com/lpogic/koper"
  s.license       = "Zlib"
  s.required_ruby_version     = ">= 3.2.2"
  s.metadata = {
    "documentation_uri" => "https://github.com/lpogic/koper/blob/main/doc/wiki/README.md",
    "homepage_uri" => "https://github.com/lpogic/koper"
  }
end