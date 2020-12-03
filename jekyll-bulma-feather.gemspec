# frozen_string_literal: true

def self.root_files
  `git ls-files -z`.split("\x0").select do |f|
    f.match %r!^(assets|_layouts|_includes|_sass|COPYING|README)!i
  end
end

def self.bulma_files
  `git ls-files -z --recurse-submodules`.split("\x0").select do |f|
    f.match %r!^_sass/bulma/sass!i
  end
end

puts self.root_files
puts self.bulma_files

Gem::Specification.new do |spec|
  spec.name          = "jekyll-bulma-feather"
  spec.version       = "0.1.0"
  spec.authors       = ["Ryan S. Northrup (RyNo)"]
  spec.email         = ["northrup@yellowapple.us"]

  spec.summary       = "A barebones Jekyll theme w/ Bulma and Feather"
  spec.homepage      = "https://github.com/YellowApple/jekyll-bulma-feather"
  spec.license       = "ISC"

  spec.files         = self.root_files.concat(self.bulma_files)

  spec.add_runtime_dependency "jekyll"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
