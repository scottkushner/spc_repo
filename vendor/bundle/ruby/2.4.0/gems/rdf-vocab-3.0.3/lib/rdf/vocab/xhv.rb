# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from http://www.w3.org/1999/xhtml/vocab#
require 'rdf'
module RDF::Vocab
  # @!parse
  #   # Vocabulary for <http://www.w3.org/1999/xhtml/vocab#>
  #   class XHV < RDF::Vocabulary
  #   end
  class XHV < RDF::Vocabulary("http://www.w3.org/1999/xhtml/vocab#")

    # Ontology definition
    ontology :"http://www.w3.org/1999/xhtml/vocab#",
      "xhv:stylesheet": "http://www.w3.org/StyleSheets/TR/base.css".freeze

    # Property definitions
    property :alert,
      comment: %(A message
      with important, and usually time-sensitive, information. Also see
      alertdialog and status.).freeze,
      type: "rdf:Property".freeze
    property :alertdialog,
      comment: %(A
      type of dialog that contains an alert message, where initial focus goes
      to the dialog or an element within it. Also see alert and dialog.).freeze,
      type: "rdf:Property".freeze
    property :alternate,
      comment: %(alternate designates alternate
      versions for a resource.).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :appendix,
      comment: %(appendix refers to a resource serving
      as an appendix in a collection. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :application,
      comment: %(A
      region declared as a web application, as opposed to a web document.).freeze,
      type: "rdf:Property".freeze
    property :article,
      comment: %(A
      section of a page consisting of an independent part of a document, page,
      or site.).freeze,
      type: "rdf:Property".freeze
    property :banner,
      comment: %(banner contains the prime heading or
      internal title of a page. ).freeze,
      "rdfs:member": "xhv:role-properties".freeze,
      type: "rdf:Property".freeze
    property :bookmark,
      comment: %(bookmark refers to a bookmark - a link
      to a key entry point within an extended document. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :button,
      comment: %(An input
      that allows for user-triggered actions when clicked or pressed.).freeze,
      type: "rdf:Property".freeze
    property :chapter,
      comment: %(chapter refers to a resource serving
      as a chapter in a collction. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :checkbox,
      comment: %(An
      checkable input that has three possible values: true, false, or
    mixed.).freeze,
      type: "rdf:Property".freeze
    property :cite,
      comment: %(cite refers to a resource that defines
      a citation. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :columnheader,
      comment: %(A
      cell containing header information for a column.).freeze,
      type: "rdf:Property".freeze
    property :combobox,
      comment: %(A
      presentation of a select; usually similar to a textbox where users can
      type ahead to select an option, or type to enter arbitrary text as a new
      item in the list.).freeze,
      type: "rdf:Property".freeze
    property :complementary,
      comment: %(secondary indicates that the section
      supports but is separable from the main content of resource.).freeze,
      "rdfs:member": "xhv:role-properties".freeze,
      type: "rdf:Property".freeze
    property :contentinfo,
      comment: %(contentinfo has meta information about
      the content on the page or the page as a whole.).freeze,
      "rdfs:member": "xhv:role-properties".freeze,
      type: "rdf:Property".freeze
    property :contents,
      comment: %(contents refers to a resource serving
      as a table of contents. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :copyright,
      comment: %(copyright refers to a copyright
      statement for the resource. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :definition,
      comment: %(definition indicates the definition of
      a term or concept.).freeze,
      "rdfs:member": "xhv:role-properties".freeze,
      type: "rdf:Property".freeze
    property :dialog,
      comment: %(A dialog
      is an application window that is designed to interrupt the current
      processing of an application in order to prompt the user to enter
      information or require a response. Also see alertdialog.).freeze,
      type: "rdf:Property".freeze
    property :directory,
      comment: %(A list
      of references to members of a group, such as a static table of
    contents.).freeze,
      type: "rdf:Property".freeze
    property :document,
      comment: %(A
      region containing related information that is declared as document
      content, as opposed to a web application.).freeze,
      type: "rdf:Property".freeze
    property :first,
      comment: %(first refers the first item in a
      collection \(see also start and top\).).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :glossary,
      comment: %(glossary refers to a resource
      providing a glossary of terms. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :grid,
      comment: %(A grid
      contains cells of tabular data arranged in rows and columns, like a
    table.).freeze,
      type: "rdf:Property".freeze
    property :gridcell,
      comment: %(A cell
      in a grid or treegrid.).freeze,
      type: "rdf:Property".freeze
    property :group,
      comment: %(A set of
      user interface objects which would not be included in a page summary or
      table of contents by an assistive technology.).freeze,
      type: "rdf:Property".freeze
    property :heading,
      comment: %(A
      heading for a section of the page.).freeze,
      type: "rdf:Property".freeze
    property :help,
      comment: %(help refers to a resource offering
      help. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :icon,
      comment: %(icon refers to a resource that
      represents an icon. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :img,
      comment: %(A container
      for a collection of elements that form an image.).freeze,
      type: "rdf:Property".freeze
    property :index,
      comment: %(index refers to a resource providing
      an index. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :itsRules,
      comment: %(itsRules indicates that the designated
      resource is an [ITS] rule set.).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :last,
      comment: %(last refers to the last resource in a
      collection of resources. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :license,
      comment: %(license refers to a resource that
      defines the associated license. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :link,
      comment: %(An
      interactive reference to an internal or external resource.).freeze,
      type: "rdf:Property".freeze
    property :list,
      comment: %(A group of
      non-interactive list items.).freeze,
      type: "rdf:Property".freeze
    property :listbox,
      comment: %(A widget
      that allows the user to select one or more items from a list of
    choices.).freeze,
      type: "rdf:Property".freeze
    property :listitem,
      comment: %(A
      single item in a list, listbox, or directory.).freeze,
      type: "rdf:Property".freeze
    property :log,
      comment: %(A type of
      live region where new information is added in meaningful order and old
      information may disappear. Also see marquee.).freeze,
      type: "rdf:Property".freeze
    property :main,
      comment: %(main acts as the main content of the
      document. ).freeze,
      "rdfs:member": "xhv:role-properties".freeze,
      type: "rdf:Property".freeze
    property :marquee,
      comment: %(A type
      of live region where non-essential information changes frequently. Also
      see log.).freeze,
      type: "rdf:Property".freeze
    property :math,
      comment: %(An element
      that represents a mathematical expression.).freeze,
      type: "rdf:Property".freeze
    property :menu,
      comment: %(A type of
      widget that offers a list of choices to the user.).freeze,
      type: "rdf:Property".freeze
    property :menubar,
      comment: %(A
      presentation of menu that usually remains visible and is usually
      presented horizontally.).freeze,
      type: "rdf:Property".freeze
    property :menuitem,
      comment: %(An
      option in a group of choices contained by a menu or menubar.).freeze,
      type: "rdf:Property".freeze
    property :menuitemcheckbox,
      comment: %(A checkable menuitem that has three possible
      values: true, false, or mixed.).freeze,
      type: "rdf:Property".freeze
    property :menuitemradio,
      comment: %(A
      checkable menuitem in a group of menuitemradio roles, only one of which
      can be checked at a time.).freeze,
      type: "rdf:Property".freeze
    property :meta,
      comment: %(meta refers to a resource that
      provides metadata. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :navigation,
      comment: %(navigation indicates a collection of
      items suitable for navigating the document or related documents.).freeze,
      "rdfs:member": "xhv:role-properties".freeze,
      type: "rdf:Property".freeze
    property :next,
      comment: %(next refers to the next resource
      \(after the current one\) in an ordered collection of resources. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :note,
      comment: %(note indicates the content is
      parenthetic or ancillary to the main content of the resource. ).freeze,
      "rdfs:member": "xhv:role-properties".freeze,
      type: "rdf:Property".freeze
    property :option,
      comment: %(A
      selectable item in a select list.).freeze,
      type: "rdf:Property".freeze
    property :p3pv1,
      comment: %(p3pv1 refers to a P3P Policy Reference
      File [P3P]. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :presentation,
      comment: %(An
      element whose role is presentational and does not need to be mapped to
      the accessibility API.).freeze,
      type: "rdf:Property".freeze
    property :prev,
      comment: %(prev refers to a previous resource
      \(before the current one\) in an ordered collection of resources. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :progressbar,
      comment: %(An
      element that displays the progress status for tasks that take a long
    time.).freeze,
      type: "rdf:Property".freeze
    property :radio,
      comment: %(A
      checkable input in a group of radio roles, only one of which can be
      checked at a time.).freeze,
      type: "rdf:Property".freeze
    property :radiogroup,
      comment: %(A
      group of radio buttons.).freeze,
      type: "rdf:Property".freeze
    property :region,
      comment: %(A large
      perceivable section of a web page or document, that the author feels
      should be included in a summary of page features.).freeze,
      type: "rdf:Property".freeze
    property :role,
      comment: %(role indicates the purpose of the
      resource. See the XHTML Role
      Vocabulary for roles in this vocabulary space, and XHTMLROLE for information on extending the
      collection of roles. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: ["rdf:Bag".freeze, "rdf:Property".freeze]
    property :row,
      comment: %(A row of
      cells in a grid.).freeze,
      type: "rdf:Property".freeze
    property :rowheader,
      comment: %(A cell
      containing header information for a row in a grid.).freeze,
      type: "rdf:Property".freeze
    property :search,
      comment: %(search indicates that the section
      provides a search facility. ).freeze,
      "rdfs:member": "xhv:role-properties".freeze,
      type: "rdf:Property".freeze
    property :section,
      comment: %(section refers to a resource serving
      as a section in a collection. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :separator,
      comment: %(A
      divider that separates and distinguishes sections of content or groups of
      menuitems.).freeze,
      type: "rdf:Property".freeze
    property :slider,
      comment: %(A user
      input where the user selects a value from within a given range.).freeze,
      type: "rdf:Property".freeze
    property :spinbutton,
      comment: %(A
      form of range that expects a user to select from amongst discrete
    choices.).freeze,
      type: "rdf:Property".freeze
    property :start,
      comment: %(start refers to the first resource in
      a collection of resources. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :status,
      comment: %(A
      container whose content is advisory information for the user but is not
      important enough to justify an alert. Also see alert.).freeze,
      type: "rdf:Property".freeze
    property :stylesheet,
      comment: %(stylesheet refers to a resource
      serving as a stylesheet for a resource. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :subsection,
      comment: %(subsection refers to a resource
      serving as a subsection in a collection. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :tab,
      comment: %(A header for
      a tabpanel.).freeze,
      type: "rdf:Property".freeze
    property :tablist,
      comment: %(A list
      of tab elements, which are references to tabpanel elements.).freeze,
      type: "rdf:Property".freeze
    property :tabpanel,
      comment: %(A
      container for the resources associated with a tab.).freeze,
      type: "rdf:Property".freeze
    property :textbox,
      comment: %(Input
      that allows free-form text as their value.).freeze,
      type: "rdf:Property".freeze
    property :timer,
      comment: %(A
      numerical counter which indicates an amount of elapsed time from a start
      point, or the time remaining until an end point.).freeze,
      type: "rdf:Property".freeze
    property :toolbar,
      comment: %(A
      collection of commonly used function buttons represented in compact
      visual form.).freeze,
      type: "rdf:Property".freeze
    property :tooltip,
      comment: %(A
      contextual popup that displays a description for an element in a mouse
      hover or keyboard focused state. Supplement to the normal tooltip
      processing of the user agent.).freeze,
      type: "rdf:Property".freeze
    property :top,
      comment: %(top is a synonym for start. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze
    property :tree,
      comment: %(A type of
      list that may contain sub-level nested groups that can be collapsed and
      expanded.).freeze,
      type: "rdf:Property".freeze
    property :treegrid,
      comment: %(A grid
      whose rows can be expanded and collapsed in the same manner as for a
    tree.).freeze,
      type: "rdf:Property".freeze
    property :treeitem,
      comment: %(An
      option item of a tree. This is an element within a tree that may be
      expanded or collapsed if it contains a sub-level group of treeitems.).freeze,
      type: "rdf:Property".freeze
    property :up,
      comment: %(up refers to a resource "above" in a
      hierarchically structured set. ).freeze,
      "rdfs:member": "xhv:relrev-properties".freeze,
      type: "rdf:Property".freeze

    # Extra definitions
    term :"relrev-properties",
      "rdfs:member": "xhv:role-properties".freeze,
      type: "rdf:Bag".freeze
    term :"role-properties",
      type: ["rdf:Bag".freeze, "rdfs:member".freeze]
  end
end
