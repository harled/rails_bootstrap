class RailsBootstrap::TitleComponent < ViewComponent::Base
  include ActiveModel::Validations
  
  TYPES = ["h1", "h2", "h3", "h4", "h5", "p"].freeze

  validates :type, inclusion: { in: TYPES }

  def initialize(type: "h2")
    @type = type
  end

  private

    attr_reader :type
end
