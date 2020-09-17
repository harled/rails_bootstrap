require "rails_helper"

RSpec.describe RailsBootstrap::BadgeComponent, type: :component do 
  context "variation attribute tests" do
    it "renders default variation" do 
      subject = render_inline(RailsBootstrap::BadgeComponent.new()) { "This is a default badge" }

      expect(subject.css("span[class='badge badge-primary']").to_html).not_to be_empty
    end

    it "renders secondary style" do 
      subject = render_inline(RailsBootstrap::BadgeComponent.new(variation: "secondary")) { "This is the secondary style badge" }

      expect(subject.css("span[class='badge badge-secondary']").to_html).not_to be_empty
    end

    it "renders info style" do 
      subject = render_inline(RailsBootstrap::BadgeComponent.new(variation: "info")) { "This is the info style badge" }

      expect(subject.css("span[class='badge badge-info']").to_html).not_to be_empty
    end

    it "renders the content" do 
      subject = render_inline(RailsBootstrap::BadgeComponent.new(variation: "success")) { "This is the success style badge" }

      expect(subject.css("span[class='badge badge-success']").to_html).to include("This is the success style badge")
    end
  end 

  context "pill attribute tests" do
    it "renders badge pill" do 
      subject = render_inline(RailsBootstrap::BadgeComponent.new(pill: true)) { "This is a pill badge" }

      expect(subject.css("span[class='badge badge-pill badge-primary']").to_html).not_to be_empty
    end
  end 

  context "validation tests" do
    it "invalid variation attribute" do 
      subject = RailsBootstrap::BadgeComponent.new(variation: "Woof")

      expect(subject.valid?).to be(false)
    end

    it "invalid pill attribute" do 
      subject = RailsBootstrap::BadgeComponent.new(variation: "Woof")

      expect(subject.valid?).to be(false)
    end
  end 

end
