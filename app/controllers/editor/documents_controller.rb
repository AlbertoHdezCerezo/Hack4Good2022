# frozen_string_literal: true

module Editor
  class DocumentsController < ApplicationController
    include DocumentSetters

    before_action :set_document, only: [:show]

    # GET /editor/create
    def new
    end

    # GET /editor/<document_id>
    def show
    end
  end
end
