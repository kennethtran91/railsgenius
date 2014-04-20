module Annotations
  class Show < Perspectives::Base
    param :annotation

    delegate_property :id, :referent, to: :annotation

    delegate :talk, to: :annotation
    delegate_property :title, to: :talk, prefix: true
    property(:talk_href) { talk_path(talk) }

    property(:body) { annotation.body_as_html }

    property(:edit_href) { edit_talk_annotation_path(talk, annotation) }
    property(:perspectives_target) { '#annotation-tooltip' }
  end
end
