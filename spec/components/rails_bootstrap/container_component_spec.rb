require "rails_helper"

RSpec.describe RailsBootstrap::TitleComponent, type: :component do
  context "renders a container" do
    it "fluid container" do
      subject = render_inline(RailsBootstrap::ContainerComponent.new(fluid: true)) { "This is a fluid container" }

      expect(subject.css("div[class=' container-fluid']").to_html).not_to be_empty
    end

    it "renders a container of size xl" do
      subject = render_inline(RailsBootstrap::ContainerComponent.new(fluid: "xl")) { "This is a container with xl size" }

      expect(subject.css("div[class=' container-xl']").to_html).not_to be_empty
    end

    it "renders a container with a custom css" do
      subject = render_inline(RailsBootstrap::ContainerComponent.new(class_name: "custom-class")) { "This is a container with a custom class" }

      expect(subject.css("div[class='custom-class container']").to_html).not_to be_empty
    end

    it "with all parameters" do
      subject = render_inline(RailsBootstrap::ContainerComponent.new(fluid: "sm", class_name: "custom-class")) { "This is a container with a custom class" }

      expect(subject.css("div[class='custom-class container-sm']").to_html).not_to be_empty
    end
  end

  context "validation" do
    it "errors out when fluid type is incorrect" do
      subject = RailsBootstrap::TitleComponent.new(type: "incorrect")

      expect(subject.valid?).to be(false)
    end 
  end
end
