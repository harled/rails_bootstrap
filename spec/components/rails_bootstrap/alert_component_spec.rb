require "rails_helper"

RSpec.describe RailsBootstrap::AlertComponent, type: :component do
  context "renders alert" do
    it "with primary color by default" do
      subject = render_inline(RailsBootstrap::AlertComponent.new) { "This is a primary alert" }

      expect(subject.css("div[class='fade alert alert-primary show']").to_html).not_to be_empty
    end

    it "alert is visible by default" do
      subject = render_inline(RailsBootstrap::AlertComponent.new) { "This alert is visbile" }

      expect(subject.css("div[class='fade alert alert-primary show']").to_html).not_to be_empty
    end
  
    it "with danger color when specified" do
      subject = render_inline(RailsBootstrap::AlertComponent.new(variation: "danger")) { "This is a danger alert" }

      expect(subject.css("div[class='fade alert alert-danger show']").to_html).not_to be_empty
    end

    it "renders the content" do
      subject = render_inline(RailsBootstrap::AlertComponent.new(variation: "dark")) { "This is a dark alert" }

      expect(subject.css("div[class='fade alert alert-dark show']").to_html).to include("This is a dark alert")
    end
  end

  context "validation" do
    it "errors out when variation is incorrect" do
      subject = RailsBootstrap::AlertComponent.new(variation: "Rainbow")

      expect(subject.valid?).to be(false)
    end 

    it "errors out when show is not boolean" do
      subject = RailsBootstrap::AlertComponent.new(show: "Notaboolean")

      expect(subject.valid?).to be(false)
    end 
  end
end 