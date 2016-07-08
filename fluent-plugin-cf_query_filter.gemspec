# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-cf_query_filter"
  spec.version       = "0.1.1"
  spec.authors       = ["kazuki nozawa"]
  spec.email         = ["kazuki1213@gmail.com"]
  spec.summary       = %q{fluentd plugin to filter cs-uri-query from cloudfront log}
  spec.description   = %q{fluentd plugin to filter cs-uri-query from cloudfront log}
  spec.homepage      = "https://github.com/kazuki1213/fluent-plugin-cf_query_filter.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
