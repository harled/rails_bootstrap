# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  include ActiveModel::Validations

  def before_render
    validate!
  end
end