require "rails_helper"

RSpec.describe RailsBootstrap::TitleComponent, type: :component do
  context "header types" do
    it "renders an h2 element by default" do
      subject = render_inline(RailsBootstrap::TitleComponent.new) { "This is h2" }

      expect(subject.css("h2").to_html).to include("This is h2")
    end

    it "renders an h1 element" do
      subject = render_inline(RailsBootstrap::TitleComponent.new(type: "h1")) { "This is h1" }

      expect(subject.css("h1").to_html).to include("This is h1")
    end
  end

  context "validation" do
    it "errors out when type is incorrect" do
      subject = RailsBootstrap::TitleComponent.new(type: "incorrect")

      expect(subject.valid?).to be(false)
    end 
  end
end
