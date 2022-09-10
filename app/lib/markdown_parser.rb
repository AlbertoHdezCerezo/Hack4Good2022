# frozen_string_literal: true
require "rouge/plugins/redcarpet"

# Markdown to HTML parser
class MarkdownParser
  REDCARPET_CONFIGURATION = {
    fenced_code_blocks: true,
    autolink: true,
    superscript: true,
    no_intra_emphasis: true,
    space_after_headers: false,
    highlight: true,
    with_toc_data: true,
  }

  # Rouge-based Markdown renderer. Extends default +Redcarpet+ Markdown
  # parser with options to parse code in multiple programming languages
  class HTMLRendered < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet

    def rouge_formatter(lexer)
      Rouge::Formatters::HTMLLegacy.new(css_class: "line-numbers language-#{lexer.tag.strip}")
    end
  end

  class << self
    def parser
      @parser ||= Redcarpet::Markdown.new(HTMLRendered.new(link_attributes: { target: "_blank", rel: "noopener" }),
                                          **REDCARPET_CONFIGURATION)
    end

    def parse(markdown_content)
      parser.render(markdown_content).html_safe
    end
  end
end
