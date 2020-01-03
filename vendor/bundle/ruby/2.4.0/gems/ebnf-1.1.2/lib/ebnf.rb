module EBNF
  autoload :Base,     "ebnf/base"
  autoload :BNF,      "ebnf/bnf"
  autoload :LL1,      "ebnf/ll1"
  autoload :Parser,   "ebnf/parser"
  autoload :Rule,     "ebnf/rule"
  autoload :Writer,   "ebnf/writer"
  autoload :VERSION,  "ebnf/version"

  ##
  # Parse the given EBNF `query` input.
  #
  # @example
  #   ebnf = EBNF.parse(input)
  #
  # @param  [#read, String, #to_s]  input
  # @param  [Hash{Symbol => Object}] options
  # @return [EBNF::Base]
  # @raise  [Exception] on invalid input
  def self.parse(input, options = {})
    query = ::EBNF::Base.new(input, options)
  end
end
