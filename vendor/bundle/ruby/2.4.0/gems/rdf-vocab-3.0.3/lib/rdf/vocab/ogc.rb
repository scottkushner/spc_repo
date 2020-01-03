# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from http://ogp.me/ns/class#
require 'rdf'
module RDF::Vocab
  # @!parse
  #   # Vocabulary for <http://ogp.me/ns/class#>
  #   class OGC < RDF::Vocabulary
  #   end
  class OGC < RDF::Vocabulary("http://ogp.me/ns/class#")

    # Datatype definitions
    term :boolean_str,
      comment: %(A string representation of a true or false value.  The lexical space contains: "true", "false", "1", and "0".).freeze,
      isDefinedBy: "ogc:".freeze,
      label: "boolean string".freeze,
      subClassOf: "xsd:string".freeze,
      type: "rdfs:Datatype".freeze
    term :date_time_str,
      comment: %(A string representation of a temporal value composed of a date \(year, month, day\) and an optional time component \(hours, minutes\).  The lexical space is defined by ISO 8601.).freeze,
      isDefinedBy: "ogc:".freeze,
      label: "date/time string".freeze,
      subClassOf: "xsd:string".freeze,
      type: "rdfs:Datatype".freeze
    term :determiner_str,
      comment: %(The lexical space: "", "the", "a", "an", and "auto".).freeze,
      isDefinedBy: "ogc:".freeze,
      label: "determiner".freeze,
      "owl:oneOf": list("".freeze, "the".freeze, "a".freeze, "an".freeze, "auto".freeze),
      subClassOf: "xsd:string".freeze,
      type: "rdfs:Datatype".freeze
    term :float_str,
      comment: %(A string representation of a 64-bit signed floating point number.  Example lexical values include "1.234", "-1.234", "1.2e3", "-1.2e3", and "7E-10".).freeze,
      isDefinedBy: "ogc:".freeze,
      label: "float string".freeze,
      subClassOf: "xsd:string".freeze,
      type: "rdfs:Datatype".freeze
    term :integer_str,
      comment: %(A string representation of a 32-bit signed integer.  Example lexical values include "1234" and "-123".).freeze,
      isDefinedBy: "ogc:".freeze,
      label: "integer string".freeze,
      subClassOf: "xsd:string".freeze,
      type: "rdfs:Datatype".freeze
    term :mime_type_str,
      comment: %(Valid mime type strings \(e.g., "application/mp3"\).).freeze,
      isDefinedBy: "og:".freeze,
      label: "mime type string".freeze,
      subClassOf: "xsd:string".freeze,
      type: "rdfs:Datatype".freeze
    term :string,
      comment: %(A string of Unicode characters.).freeze,
      isDefinedBy: "ogc:".freeze,
      label: "Unicode string".freeze,
      subClassOf: "xsd:string".freeze,
      type: "rdfs:Datatype".freeze
    term :url,
      comment: %(A string of Unicode characters forming a valid URL having the http or https scheme.).freeze,
      isDefinedBy: "ogc:".freeze,
      label: "URL".freeze,
      subClassOf: "ogc:string".freeze,
      type: "rdfs:Datatype".freeze
  end
end
