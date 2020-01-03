# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from http://www.w3.org/ns/csvw#
require 'rdf'
module RDF::Tabular
  # @!parse
  #   # Vocabulary for <http://www.w3.org/ns/csvw#>
  #   class CSVW < RDF::StrictVocabulary
  #   end
  class CSVW < RDF::StrictVocabulary("http://www.w3.org/ns/csvw#")

    # Ontology definition
    ontology :"http://www.w3.org/ns/csvw#",
      :"dc:date" => %(2017-05-23).freeze,
      :"dc:description" => %(This document describes the RDFS vocabulary description used in the Metadata Vocabulary for Tabular Data [[tabular-metadata]] along with the default JSON-LD Context.).freeze,
      :"dc:title" => %(CSVW Namespace Vocabulary Terms).freeze,
      :"owl:imports" => %(http://www.w3.org/ns/prov).freeze,
      :"owl:versionInfo" => %(https://github.com/w3c/csvw/commit/94898e9f0b073aa09b3334ded2eb5ab3b87b37a9).freeze,
      :"rdfs:seeAlso" => %(http://www.w3.org/TR/tabular-metadata).freeze,
      type: "owl:Ontology".freeze

    # Class definitions
    term :Cell,
      comment: %(A Cell represents a cell at the intersection of a Row and a Column within a Table.).freeze,
      label: "Cell".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :Column,
      comment: %(A Column represents a vertical arrangement of Cells within a Table.).freeze,
      label: "Column Description".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :Datatype,
      comment: %(Describes facets of a datatype.).freeze,
      label: "Datatype".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :Dialect,
      comment: %(A Dialect Description provides hints to parsers about how to parse a linked file.).freeze,
      label: "Dialect Description".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :Direction,
      comment: %(The class of table/text directions.).freeze,
      label: "Direction".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :ForeignKey,
      comment: %(Describes relationships between Columns in one or more Tables.).freeze,
      label: "Foreign Key Definition".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :NumericFormat,
      comment: %(If the datatype is a numeric type, the format property indicates the expected format for that number. Its value must be either a single string or an object with one or more properties.).freeze,
      label: "Numeric Format".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :Row,
      comment: %(A Row represents a horizontal arrangement of cells within a Table.).freeze,
      label: "Row".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :Schema,
      comment: %(A Schema is a definition of a tabular format that may be common to multiple tables.).freeze,
      label: "Schema".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :Table,
      comment: %(An annotated table is a table that is annotated with additional metadata.).freeze,
      label: "Annotated Table".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :TableGroup,
      comment: %(A Group of Tables comprises a set of Annotated Tables and a set of annotations that relate to those Tables.).freeze,
      label: "Group of Tables".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :TableReference,
      comment: %(An object property that identifies a referenced table and a set of referenced columns within that table.).freeze,
      label: "Table Reference".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze
    term :Transformation,
      comment: %(A Transformation Definition is a definition of how tabular data can be transformed into another format.).freeze,
      label: "Transformation Definition".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdfs:Class".freeze

    # Property definitions
    property :aboutUrl,
      comment: %(A URI template property that MAY be used to indicate what a cell contains information about.).freeze,
      label: "about URL".freeze,
      range: "csvw:uriTemplate".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :base,
      comment: %(An atomic property that contains a single string: a term defined in the default context representing a built-in datatype URL, as listed above.).freeze,
      domain: "csvw:Datatype".freeze,
      label: "base".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :column,
      comment: %(An array property of column descriptions as described in section 5.6 Columns.).freeze,
      domain: "csvw:Schema".freeze,
      label: "column".freeze,
      range: "csvw:Column".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :columnReference,
      comment: %(A column reference property that holds either a single reference to a column description object within this schema, or an array of references. These form the referencing columns for the foreign key definition.).freeze,
      label: "column reference".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :commentPrefix,
      comment: %(An atomic property that sets the comment prefix flag to the single provided value, which MUST be a string.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "comment prefix".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :datatype,
      comment: %(An object property that contains either a single string that is the main datatype of the values of the cell or a datatype description object. If the value of this property is a string, it MUST be one of the built-in datatypes defined in section 5.11.1 Built-in Datatypes or an absolute URL; if it is an object then it describes a more specialised datatype.).freeze,
      label: "datatype".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :decimalChar,
      comment: %(A string whose value is used to represent a decimal point within the number.).freeze,
      domain: "csvw:NumericFormat".freeze,
      label: "decimal character".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :default,
      comment: %(An atomic property holding a single string that is used to create a default value for the cell in cases where the original string value is an empty string.).freeze,
      label: "default".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :delimiter,
      comment: %(An atomic property that sets the delimiter flag to the single provided value, which MUST be a string.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "delimiter".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :describes,
      comment: %(From IANA describes: The relationship A 'describes' B asserts that resource A provides a description of resource B. There are no constraints on the format or representation of either A or B, neither are there any further constraints on either resource.).freeze,
      domain: "csvw:Row".freeze,
      label: "describes".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :dialect,
      comment: %(An object property that provides a single dialect description. If provided, dialect provides hints to processors about how to parse the referenced files to create tabular data models for the tables in the group.).freeze,
      label: "dialect".freeze,
      range: "csvw:Dialect".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :doubleQuote,
      comment: %(A boolean atomic property that, if `true`, sets the escape character flag to `"`.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "double quote".freeze,
      range: "xsd:boolean".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :encoding,
      comment: %(An atomic property that sets the encoding flag to the single provided string value, which MUST be a defined in [[encoding]]. The default is "utf-8".).freeze,
      domain: "csvw:Dialect".freeze,
      label: "encoding".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :foreignKey,
      comment: %(For a Table: a list of foreign keys on the table.

For a Schema: an array property of foreign key definitions that define how the values from specified columns within this table link to rows within this table or other tables.).freeze,
      label: "foreign key".freeze,
      range: "csvw:ForeignKey".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :format,
      comment: %(An atomic property that contains either a single string or an object that defines the format of a value of this type, used when parsing a string value as described in Parsing Cells in [[tabular-data-model]].).freeze,
      domain: "csvw:Datatype".freeze,
      label: "format".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :groupChar,
      comment: %(A string whose value is used to group digits within the number.).freeze,
      domain: "csvw:NumericFormat".freeze,
      label: "group character".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :header,
      comment: %(A boolean atomic property that, if `true`, sets the header row count flag to `1`, and if `false` to `0`, unless headerRowCount is provided, in which case the value provided for the header property is ignored.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "header".freeze,
      range: "xsd:boolean".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :headerRowCount,
      comment: %(An numeric atomic property that sets the header row count flag to the single provided value, which must be a non-negative integer.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "header row count".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :lang,
      comment: %(An atomic property giving a single string language code as defined by [[BCP47]].).freeze,
      label: "language".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :length,
      comment: %(The exact length of the value of the cell.).freeze,
      domain: "csvw:Datatype".freeze,
      label: "length".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :lineTerminators,
      comment: %(An atomic property that sets the line terminators flag to either an array containing the single provided string value, or the provided array.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "line terminators".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :maxExclusive,
      comment: %(An atomic property that contains a single number that is the maximum valid value \(exclusive\).).freeze,
      domain: "csvw:Datatype".freeze,
      label: "max exclusive".freeze,
      range: "xsd:integer".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :maxInclusive,
      comment: %(An atomic property that contains a single number that is the maximum valid value \(inclusive\).).freeze,
      domain: "csvw:Datatype".freeze,
      label: "max inclusive".freeze,
      range: "xsd:integer".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :maxLength,
      comment: %(A numeric atomic property that contains a single integer that is the maximum length of the value.).freeze,
      domain: "csvw:Datatype".freeze,
      label: "max length".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :minExclusive,
      comment: %(An atomic property that contains a single number that is the minimum valid value \(exclusive\).).freeze,
      domain: "csvw:Datatype".freeze,
      label: "min exclusive".freeze,
      range: "xsd:integer".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :minInclusive,
      comment: %(An atomic property that contains a single number that is the minimum valid value \(inclusive\).).freeze,
      domain: "csvw:Datatype".freeze,
      label: "min inclusive".freeze,
      range: "xsd:integer".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :minLength,
      comment: %(An atomic property that contains a single integer that is the minimum length of the value.).freeze,
      domain: "csvw:Datatype".freeze,
      label: "min length".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :name,
      comment: %(An atomic property that gives a single canonical name for the column. The value of this property becomes the name annotation for the described column.).freeze,
      domain: "csvw:Column".freeze,
      label: "name".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :note,
      comment: %(An array property that provides an array of objects representing arbitrary annotations on the annotated tabular data model.).freeze,
      label: "note".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :null,
      comment: %(An atomic property giving the string or strings used for null values within the data. If the string value of the cell is equal to any one of these values, the cell value is `null`.).freeze,
      label: "null".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :ordered,
      comment: %(A boolean atomic property taking a single value which indicates whether a list that is the value of the cell is ordered \(if `true`\) or unordered \(if `false`\).).freeze,
      label: "ordered".freeze,
      range: "xsd:boolean".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :pattern,
      comment: %(A regular expression string, in the syntax and interpreted as defined by [[ECMASCRIPT]].).freeze,
      domain: "csvw:NumericFormat".freeze,
      label: "pattern".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :primaryKey,
      comment: %(For Schema: A column reference property that holds either a single reference to a column description object or an array of references.

For Row: a possibly empty list of cells whose values together provide a unique identifier for this row. This is similar to the name of a column.).freeze,
      label: "primary key".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :propertyUrl,
      comment: %(An URI template property that MAY be used to create a URI for a property if the table is mapped to another format. ).freeze,
      label: "property URL".freeze,
      range: "csvw:uriTemplate".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :quoteChar,
      comment: %(An atomic property that sets the quote character flag to the single provided value, which must be a string or `null`.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "quote char".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :reference,
      comment: %(An object property that identifies a **referenced table** and a set of **referenced columns** within that table.).freeze,
      domain: "csvw:ForeignKey".freeze,
      label: "reference".freeze,
      range: "csvw:TableReference".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :referencedRow,
      comment: %(A possibly empty list of pairs of a foreign key and a row in a table within the same group of tables.).freeze,
      domain: "csvw:Row".freeze,
      label: "referenced rows".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :required,
      comment: %(A boolean atomic property taking a single value which indicates whether the cell must have a non-null value. The default is `false`. ).freeze,
      label: "required".freeze,
      range: "xsd:boolean".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :resource,
      comment: %(A link property holding a URL that is the identifier for a specific table that is being referenced.).freeze,
      domain: "csvw:TableReference".freeze,
      label: "resource".freeze,
      range: "xsd:anyURI".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :row,
      comment: %(Relates a Table to each Row output.).freeze,
      domain: "csvw:Table".freeze,
      label: "row".freeze,
      range: "csvw:Row".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      subPropertyOf: "rdfs:member".freeze,
      type: "rdf:Property".freeze
    property :rowTitle,
      comment: %(A column reference property that holds either a single reference to a column description object or an array of references.).freeze,
      domain: "csvw:Schema".freeze,
      label: "row titles".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :rownum,
      comment: %(The position of the row amongst the rows of the Annotated Tabl, starting from 1).freeze,
      label: "row number".freeze,
      range: "xsd:integer".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :schemaReference,
      comment: %(A link property holding a URL that is the identifier for a schema that is being referenced.).freeze,
      domain: "csvw:TableReference".freeze,
      label: "schema reference".freeze,
      range: "xsd:anyURI".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :scriptFormat,
      comment: %(A link property giving the single URL for the format that is used by the script or template.).freeze,
      domain: "csvw:Transformation".freeze,
      label: "script format".freeze,
      range: "xsd:anyURI".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :separator,
      comment: %(An atomic property that MUST have a single string value that is the character used to separate items in the string value of the cell.).freeze,
      label: "separator".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :skipBlankRows,
      comment: %(An boolean atomic property that sets the `skip blank rows` flag to the single provided boolean value.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "skip blank rows".freeze,
      range: "xsd:boolean".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :skipColumns,
      comment: %(An numeric atomic property that sets the `skip columns` flag to the single provided numeric value, which MUST be a non-negative integer.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "skip columns".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :skipInitialSpace,
      comment: %(A boolean atomic property that, if `true`, sets the trim flag to "start". If `false`, to `false`.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "skip initial space".freeze,
      range: "xsd:boolean".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :skipRows,
      comment: %(An numeric atomic property that sets the `skip rows` flag to the single provided numeric value, which MUST be a non-negative integer.).freeze,
      domain: "csvw:Dialect".freeze,
      label: "skip rows".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :source,
      comment: %(A single string atomic property that provides, if specified, the format to which the tabular data should be transformed prior to the transformation using the script or template.).freeze,
      domain: "csvw:Transformation".freeze,
      label: "source".freeze,
      range: "xsd:string".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :suppressOutput,
      comment: %(A boolean atomic property. If `true`, suppresses any output that would be generated when converting a table or cells within a column.).freeze,
      label: "suppress output".freeze,
      range: "xsd:boolean".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :table,
      comment: %(Relates an Table group to annotated tables.).freeze,
      domain: "csvw:TableGroup".freeze,
      label: "table".freeze,
      range: "csvw:Table".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      subPropertyOf: "rdfs:member".freeze,
      type: "rdf:Property".freeze
    property :tableDirection,
      comment: %(One of `rtl`, `ltr` or `auto`. Indicates whether the tables in the group should be displayed with the first column on the right, on the left, or based on the first character in the table that has a specific direction.).freeze,
      label: "table direction".freeze,
      range: "csvw:Direction".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :tableSchema,
      comment: %(An object property that provides a single schema description as described in section 5.5 Schemas, used as the default for all the tables in the group).freeze,
      label: "table schema".freeze,
      range: "csvw:Schema".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :targetFormat,
      comment: %(A link property giving the single URL for the format that will be created through the transformation.).freeze,
      domain: "csvw:Transformation".freeze,
      label: "target format".freeze,
      range: "xsd:anyURI".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :textDirection,
      comment: %(An atomic property that must have a single value that is one of `rtl` or `ltr` \(the default\).).freeze,
      label: "text direction".freeze,
      range: "csvw:Direction".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :title,
      comment: %(For a Transformation A natural language property that describes the format that will be generated from the transformation.

For a Column: A natural language property that provides possible alternative names for the column.).freeze,
      label: "title".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :transformations,
      comment: %(An array property of transformation definitions that provide mechanisms to transform the tabular data into other formats.).freeze,
      label: "transformations".freeze,
      range: "csvw:Transformation".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :trim,
      comment: %(An atomic property that, if the boolean `true`, sets the trim flag to `true` and if the boolean `false` to `false`. If the value provided is a string, sets the trim flag to the provided value, which must be one of "true", "false", "start" or "end".).freeze,
      domain: "csvw:Dialect".freeze,
      label: "trim".freeze,
      range: "xsd:boolean".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :url,
      comment: %(For a Table: This link property gives the single URL of the CSV file that the table is held in, relative to the location of the metadata document.

For a Transformation: A link property giving the single URL of the file that the script or template is held in, relative to the location of the metadata document.).freeze,
      label: "url".freeze,
      range: "xsd:anyURI".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :valueUrl,
      comment: %(An URI template property that is used to map the values of cells into URLs.).freeze,
      label: "valueUrl".freeze,
      range: "csvw:uriTemplate".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze
    property :virtual,
      comment: %(A boolean atomic property taking a single value which indicates whether the column is a virtual column not present in the original source).freeze,
      domain: "csvw:Column".freeze,
      label: "virtual".freeze,
      range: "xsd:boolean".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "rdf:Property".freeze

    # Datatype definitions
    term :JSON,
      comment: %(A literal containing JSON.).freeze,
      label: "JSON".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      subClassOf: "xsd:string".freeze,
      type: "rdfs:Datatype".freeze
    term :uriTemplate,
      comment: %().freeze,
      label: "uri template".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      subClassOf: "xsd:string".freeze,
      type: "rdfs:Datatype".freeze

    # Extra definitions
    term :auto,
      comment: %(Indicates whether the tables in the group should be displayed based on the first character in the table that has a specific direction.).freeze,
      label: "auto".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "csvw:Direction".freeze
    term :csvEncodedTabularData,
      comment: %(Describes the role of a CSV file in the tabular data mapping.).freeze,
      label: "CSV Encoded Tabular Data".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "prov:Role".freeze
    term :inherit,
      comment: %(For `textDirection`, indicates that the direction is inherited from the `tableDirection` annotation of the `table`.).freeze,
      label: "inherit".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "csvw:Direction".freeze
    term :ltr,
      comment: %(Indicates whether the tables in the group should be displayed with the first column on the right.).freeze,
      label: "left to right".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "csvw:Direction".freeze
    term :rtl,
      comment: %(Indicates whether the tables in the group should be displayed with the first column on the left.).freeze,
      label: "right to left".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "csvw:Direction".freeze
    term :tabularMetadata,
      comment: %(Describes the role of a Metadata file in the tabular data mapping.).freeze,
      label: "Tabular Metadata".freeze,
      :"rdfs:isDefinedBy" => %(csvw:).freeze,
      type: "prov:Role".freeze
  end
end
