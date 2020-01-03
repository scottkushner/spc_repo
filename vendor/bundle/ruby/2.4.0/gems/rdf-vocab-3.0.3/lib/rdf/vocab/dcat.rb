# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from http://www.w3.org/ns/dcat#
require 'rdf'
module RDF::Vocab
  # @!parse
  #   # Vocabulary for <http://www.w3.org/ns/dcat#>
  #   class DCAT < RDF::StrictVocabulary
  #   end
  class DCAT < RDF::StrictVocabulary("http://www.w3.org/ns/dcat#")

    # Ontology definition
    ontology :"http://www.w3.org/ns/dcat#",
      comment: %(DCAT is an RDF vocabulary designed to facilitate interoperability between data catalogs published on the Web.
          By using DCAT to describe datasets in data catalogs, publishers increase discoverability and enable 
          applications easily to consume metadata from multiple catalogs. It further enables decentralized 
          publishing of catalogs and facilitates federated dataset search across sites. Aggregated DCAT metadata can 
          serve as a manifest file to facilitate digital preservation.
          DCAT is defined at http://www.w3.org/TR/vocab-dcat/. Any variance between that normative
          document and this schema is an error in this schema.).freeze,
      "dc:contributor": [term(
          "foaf:homepage": "http://makxdekkers.com/".freeze,
          "foaf:name": "Makx Dekkers".freeze,
          "rdfs:seeAlso": "http://makxdekkers.com/makxdekkers.rdf#me".freeze
        ), term(
          "foaf:homepage": "http://www.asahi-net.or.jp/~ax2s-kmtn/".freeze,
          "foaf:name": "Shuji Kamitsuna".freeze
        ), term(
          "foaf:homepage": "http://www.w3.org/People/all#phila".freeze,
          "foaf:name": "Phil Archer".freeze,
          "rdfs:seeAlso": "http://philarcher.org/foaf.rdf#me".freeze,
          "schema:affiliation": "http://www.w3.org/data#W3C".freeze
        ), term(
          "foaf:name": "Boris Villazón-Terrazas".freeze
        ), term(
          "foaf:name": "Ghislain Auguste Atemezing".freeze,
          "rdfs:seeAlso": "http://www.eurecom.fr/~atemezin/gatemezing-foaf.rdf".freeze
        ), term(
          "foaf:name": "Marios Meimaris".freeze
        ), term(
          "foaf:name": "Martin Alvarez-Espinar".freeze
        ), term(
          "foaf:name": "Richard Cyganiak".freeze
        ), term(
          "foaf:name": "Rufus Pollock".freeze,
          "schema:affiliation": term(
            "foaf:homepage": "http://okfn.org".freeze,
            "foaf:name": "Open Knowledge Foundation".freeze
          )
        ), term(
          "foaf:name": "Vassilios Peristeras".freeze,
          "schema:affiliation": term(
            "foaf:homepage": "http://ec.europa.eu/dgs/informatics/".freeze,
            "foaf:name": "European Commission, DG DIGIT".freeze
          )
        )],
      "dc:creator": [term(
          "foaf:name": "Fadi Maali".freeze,
          "rdfs:seeAlso": "http://fadmaa.me/foaf.ttl".freeze
        ), term(
          "foaf:name": "John Erickson".freeze
        )],
      "dc:modified": ["2012-04-24".freeze, "2013-09-20".freeze, "2013-11-28".freeze],
      "foaf:maker": term(
          "foaf:homepage": "http://www.w3.org/2011/gld/".freeze,
          "foaf:name": "Government Linked Data WG".freeze
        ),
      label: "The data catalog vocabulary".freeze,
      type: ["http://purl.org/vocommons/voaf#Vocabulary".freeze, "owl:Ontology".freeze]

    # Class definitions
    term :Catalog,
      comment: %(A curated collection of metadata about datasets).freeze,
      "http://purl.org/vocab/vann/usageNote": "Typically, a web-based data catalog is represented as a single instance of this class.".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "Catalog".freeze,
      type: ["owl:Class".freeze, "rdfs:Class".freeze]
    term :CatalogRecord,
      comment: %(A record in a data catalog, describing a single dataset.).freeze,
      "http://purl.org/vocab/vann/usageNote": "This class is optional and not all catalogs will use it. It exists for \n            catalogs where a distinction is made between metadata about a dataset and \n            metadata about the dataset's entry in the catalog. For example, the publication \n            date property of the dataset reflects the date when the information was originally \n            made available by the publishing agency, while the publication date of the catalog \n            record is the date when the dataset was added to the catalog. In cases where both\n            dates differ, or where only the latter is known, the publication date should only \n            be specified for the catalog record. Notice that the W3C PROV Ontology allows \n            describing further provenance information such as the details of the process and the \n            agent involved in a particular change to a dataset.".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "Catalog Record".freeze,
      type: ["owl:Class".freeze, "rdfs:Class".freeze]
    term :Dataset,
      comment: %(A collection of data, published or curated by a single source, and available for access or download in one or more formats).freeze,
      "http://purl.org/vocab/vann/usageNote": "This class represents the actual dataset as published by the dataset publisher. In \n          cases where a distinction between the actual dataset and its entry in the catalog is \n          necessary (because metadata such as modification date and maintainer might differ), the \n          catalog record class can be used for the latter.".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "Dataset".freeze,
      subClassOf: "dcmitype:Dataset".freeze,
      type: ["owl:Class".freeze, "rdfs:Class".freeze]
    term :Distribution,
      comment: %(Represents a specific available form of a dataset. Each dataset might be available in 
          different forms, these forms might represent different formats of the dataset or different 
          endpoints. Examples of distributions include a downloadable CSV file, an API or an RSS feed).freeze,
      "http://purl.org/vocab/vann/usageNote": "This represents a general availability of a dataset it implies no information about the \n          actual access method of the data, i.e. whether it is a direct download, API, or some \n          through Web page. The use of dcat:downloadURL property indicates directly downloadable distributions.".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "Distribution".freeze,
      type: ["owl:Class".freeze, "rdfs:Class".freeze]
    term :Download,
      comment: %(represents a downloadable distribution of a dataset. This term has been deprecated).freeze,
      isDefinedBy: "dcat:".freeze,
      label: "Download (Deprecated)".freeze,
      "owl:deprecated": "true".freeze,
      subClassOf: "dcat:Distribution".freeze,
      type: ["owl:Class".freeze, "rdfs:Class".freeze]
    term :Feed,
      comment: %(represents availability of a dataset as a feed. This term has been deprecated).freeze,
      isDefinedBy: "dcat:".freeze,
      label: "Feed (Deprecated)".freeze,
      "owl:deprecated": "true".freeze,
      subClassOf: "dcat:Distribution".freeze,
      type: ["owl:Class".freeze, "rdfs:Class".freeze]
    term :WebService,
      comment: %(represents a web service that enables access to the data of a dataset. This term has been deprecated).freeze,
      isDefinedBy: "dcat:".freeze,
      label: "Web Service (Deprecated)".freeze,
      "owl:deprecated": "true".freeze,
      subClassOf: "dcat:Distribution".freeze,
      type: ["owl:Class".freeze, "rdfs:Class".freeze]

    # Property definitions
    property :accessURL,
      comment: %(Could be any kind of URL that gives access to a distribution of the dataset. E.g. landing page, 
          download, feed URL, SPARQL endpoint. Use when your catalog does not have information on which it 
          is or when it is definitely not a download.).freeze,
      domain: "dcat:Distribution".freeze,
      "http://purl.org/vocab/vann/usageNote": "The value is a URL.\n          If the distribution(s) are accessible only through a landing page (i.e. direct download URLs are \n          not known), then the landing page link should be duplicated as accessURL on a distribution.".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "access URL".freeze,
      range: "rdfs:Resource".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
    property :byteSize,
      comment: %(The size of a distribution in bytes.).freeze,
      domain: "dcat:Distribution".freeze,
      "http://purl.org/vocab/vann/usageNote": "The size in bytes can be approximated when the precise size is not known. \n          The literal value of dcat:byteSize should by typed as xsd:decimal".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "byte size".freeze,
      range: "rdfs:Literal".freeze,
      type: ["owl:DatatypeProperty".freeze, "rdf:Property".freeze]
    property :bytes,
      comment: %(describe size of resource in bytes. This term has been deprecated).freeze,
      domain: "dcat:Distribution".freeze,
      isDefinedBy: "dcat:".freeze,
      label: "size in bytes (Deprecated)".freeze,
      "owl:deprecated": "true".freeze,
      range: "xsd:integer".freeze,
      type: ["owl:DatatypeProperty".freeze, "rdf:Property".freeze]
    property :contactPoint,
      comment: %(Links a dataset to relevant contact information which is provided using VCard.).freeze,
      domain: "dcat:Dataset".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "contact point".freeze,
      range: "vcard:Kind".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
    property :dataDictionary,
      comment: %(links a dataset to a dictionary that helps interpreting the data. This term has been deprecated).freeze,
      domain: "dcat:Dataset".freeze,
      isDefinedBy: "dcat:".freeze,
      label: "data dictionary (Deprecated)".freeze,
      "owl:deprecated": "true".freeze,
      type: "rdf:Property".freeze
    property :dataQuality,
      comment: %(describes the quality of data e.g. precision. This should not be used to describe the data collection characteristics, other more specialized statistical properties can be used instead. This term has been deprecated).freeze,
      domain: "dcat:Dataset".freeze,
      isDefinedBy: "dcat:".freeze,
      label: "data quality (Deprecated)".freeze,
      "owl:deprecated": "true".freeze,
      type: "rdf:Property".freeze
    property :dataset,
      comment: %(Links a catalog to a dataset that is part of the catalog.).freeze,
      domain: "dcat:Catalog".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "dataset".freeze,
      range: "dcat:Dataset".freeze,
      subPropertyOf: "dc:hasPart".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
    property :distribution,
      comment: %(Connects a dataset to one of its available distributions.).freeze,
      domain: "dcat:Dataset".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "distribution".freeze,
      range: "dcat:Distribution".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
    property :downloadURL,
      comment: %(This is a direct link to a downloadable file in a given format. E.g. CSV file or RDF file. The 
          format is described by the distribution's dc:format and/or dcat:mediaType).freeze,
      domain: "dcat:Distribution".freeze,
      "http://purl.org/vocab/vann/usageNote": "The value is a URL.".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "download URL".freeze,
      range: "rdfs:Resource".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
    property :granularity,
      comment: %(describes the level of granularity of data in a dataset. The granularity can be in time, place etc. This term has been deprecated).freeze,
      domain: "dcat:Dataset".freeze,
      isDefinedBy: "dcat:".freeze,
      label: "granularity (Deprecated)".freeze,
      "owl:deprecated": "true".freeze,
      type: "rdf:Property".freeze
    property :keyword,
      comment: %(A keyword or tag describing the dataset.).freeze,
      domain: "dcat:Dataset".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "keyword".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "dc:subject".freeze,
      type: ["owl:DatatypeProperty".freeze, "rdf:Property".freeze]
    property :landingPage,
      comment: %(A Web page that can be navigated to in a Web browser to gain access to the dataset, its distributions and/or additional information.).freeze,
      domain: "dcat:Dataset".freeze,
      "http://purl.org/vocab/vann/usageNote": "If the distribution(s) are accessible only through a landing page (i.e. direct download \n          URLs are not known), then the landing page link should be duplicated as accessURL on a distribution.".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "landing page".freeze,
      range: "foaf:Document".freeze,
      subPropertyOf: "foaf:page".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
    property :mediaType,
      comment: %(This property SHOULD be used when the media type of the distribution is defined 
          in IANA, otherwise dct:format MAY be used with different values.).freeze,
      domain: "dcat:Distribution".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "media type".freeze,
      range: "dc:MediaTypeOrExtent".freeze,
      subPropertyOf: "dc:format".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
    property :record,
      comment: %(Links a catalog to its records.).freeze,
      domain: "dcat:Catalog".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "record".freeze,
      range: "dcat:CatalogRecord".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
    property :size,
      comment: %(the size of a distribution. This term has been deprecated).freeze,
      domain: "dcat:Distribution".freeze,
      isDefinedBy: "dcat:".freeze,
      label: "size (Deprecated)".freeze,
      "owl:deprecated": "true".freeze,
      subPropertyOf: "dc:extent".freeze,
      type: "rdf:Property".freeze
    property :theme,
      comment: %(The main category of the dataset. A dataset can have multiple themes.).freeze,
      domain: "dcat:Dataset".freeze,
      "http://purl.org/vocab/vann/usageNote": "The set of skos:Concepts used to categorize the datasets are organized in \n          a skos:ConceptScheme describing all the categories and their relations in the catalog.".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "theme".freeze,
      range: "skos:Concept".freeze,
      subPropertyOf: "dc:subject".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
    property :themeTaxonomy,
      comment: %(The knowledge organization system \(KOS\) used to classify catalog's datasets.).freeze,
      domain: "dcat:Catalog".freeze,
      isDefinedBy: "http://www.w3.org/TR/vocab-dcat/".freeze,
      label: "theme taxonomy".freeze,
      range: "skos:ConceptScheme".freeze,
      type: ["owl:ObjectProperty".freeze, "rdf:Property".freeze]
  end
end
