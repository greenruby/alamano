require_relative "../../spec_helper.rb"

describe Alamano::Task do

  before do
    @task = Alamano::Task.new(
      "./spec/files/pages",
      /pages.*\.md/,
      "./spec/files/templates/test1.haml",
      "./spec/files/site")
    FileUtils.rm(Dir.glob("./spec/files/site/*"), force: true)
  end

  it "gets correct files a given task" do
    expect(@task.files).to eq ["./spec/files/pages/page2.md"]
  end

  it "returns error if the extension for a file is unknown" do
    @task = Alamano::Task.new('./spec/files/pages',/page.*\.xyz/,'','')
    expect { @task.run }.to raise_error(Alamano::UnknownExtensionError, 'Unknown extension for page_error.xyz')
  end

  it "returns error if the extension for a template is unknown" do
    @task = Alamano::Task.new('',//,'./spec/files/templates/','')
    expect { @task.run }.to raise_error(Alamano::UnknownExtensionError, 'Unknown extension for page_error.xyz')
  end

  it "processes all files" do
    @task.run
    expect(Dir.glob("./spec/files/site/*")).to eq ["./spec/files/site/page2.html"]
  end

end