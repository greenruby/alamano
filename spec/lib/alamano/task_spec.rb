require_relative "../../spec_helper.rb"

describe Alamano::Task do

  before do
    @task = Alamano::Task.new(
      "./spec/files/pages",
      /pages.*\.md/,
      "./spec/files/templates/test1.haml",
      "./spec/files/site")
  end

  it "gets correct files a given task" do
    expect(@task.files).to eq ["./spec/files/pages/page2.md"]
  end


end