# SXP.rb: S-Expressions for Ruby

This is a Ruby implementation of a universal [S-expression][] parser.

[![Gem Version](https://badge.fury.io/rb/sxp.png)](http://badge.fury.io/rb/sxp)
[![Build Status](https://travis-ci.org/dryruby/sxp.rb.png?branch=master)](http://travis-ci.org/dryruby/sxp.rb)

## Features

* Parses S-expressions in universal, [Scheme][], [Common Lisp][], or
  [SPARQL][] syntax.
* Adds a `#to_sxp` method to Ruby objects.
* Compatible with Ruby >= 2.2.2, Rubinius >= 2.0, and JRuby 9+.

## Examples

    require 'sxp'

### Parsing basic S-expressions

    SXP.read "(* 6 7)"  #=> [:*, 6, 7]

    SXP.read <<-EOF
      (define (fact n)
        (if (= n 0)
            1
            (* n (fact (- n 1)))))
    EOF
    
    #=> [:define, [:fact, :n],
          [:if, [:"=", :n, 0],
                1,
                [:*, :n, [:fact, [:-, :n, 1]]]]]

### Parsing Scheme S-expressions

    SXP::Reader::Scheme.read %q((and #t #f))             #=> [:and, true, false]

### Parsing Common Lisp S-expressions

    SXP::Reader::CommonLisp.read %q((or t nil))          #=> [:or, true, nil]

### Parsing SPARQL S-expressions

    require 'rdf'

    SXP::Reader::SPARQL.read %q((base <http://ar.to/>))  #=> [:base, RDF::URI('http://ar.to/')]

### Writing an SXP with formatting

    SXP::Generator.print([:and, true, false])   #=> (and #t #f)
  
## Documentation

* Full documentation available on [RubyDoc](http://rubydoc.info/gems/sxp/file/README.md)

* {SXP}

### Parsing SXP
  * {SXP::Reader}
    * {SXP::Reader::Basic}
      * {SXP::Reader::CommonLisp}
      * {SXP::Reader::Extended}
        * {SXP::Reader::Scheme}
        * {SXP::Reader::SPARQL}

### Manipulating SXP
  * {SXP::Pair}
    * {SXP::List}

### Generating SXP
  * {SXP::Generator}

Dependencies
------------

* [Ruby](http://ruby-lang.org/) (>= 2.2.2)
* [RDF.rb](http://rubygems.org/gems/rdf) (>= 2.0), only needed for SPARQL
  S-expressions

Installation
------------

The recommended installation method is via [RubyGems](http://rubygems.org/).
To install the latest official release of the SXP.rb gem, do:

    % [sudo] gem install sxp

Download
--------

To get a local working copy of the development repository, do:

    % git clone git://github.com/bendiken/sxp-ruby.git

Alternatively, you can download the latest development version as a tarball
as follows:

    % wget http://github.com/bendiken/sxp-ruby/tarball/master

Resources
---------

* <http://rubydoc.info/gems/sxp>
* <http://github.com/dryruby/sxp>
* <http://rubygems.org/gems/sxp>

Authors
-------

* [Arto Bendiken](https://github.com/bendiken) - <http://ar.to/>
* [Gregg Kellogg](http://github.com/gkellogg) - <http://kellogg-assoc.com/>

Contributors
------------

* [Ben Lavender](https://github.com/bhuga) - <http://bhuga.net/>

License
-------

SXP.rb is free and unencumbered public domain software. For more
information, see <http://unlicense.org/> or the accompanying UNLICENSE file.

[S-expression]: http://en.wikipedia.org/wiki/S-expression
[Scheme]:       http://scheme.info/
[Common Lisp]:  http://en.wikipedia.org/wiki/Common_Lisp
[SPARQL]:       http://openjena.org/wiki/SSE
