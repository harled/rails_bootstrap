require "rails_helper"

RSpec.describe RailsBootstrap::BadgeComponent, type: :component do 
  context "variation tests" do
    it "renders default variation" do 
      subject = render_inline(RailsBootstrap::BadgeComponent.new()) { "This is a default badge" }

      expect(subject.css("div[class='badge badge-primary'").to_html).not_to be_empty
    end
