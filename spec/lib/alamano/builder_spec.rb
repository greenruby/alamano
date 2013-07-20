require_relative "../../spec_helper.rb"

describe Alamano::Builder do

  before do
    @alamano = Alamano::Builder.new(ENV['config'])
  end

  it "knows how many tasks to perform" do
    expect(@alamano.config.tasks.length).to be 2
  end

  it "gets correct files for first task" do
    task = @alamano.config.tasks[0]
    expect(@alamano.files(task)).to eq ['page2.md']
  end

  it "loads the configuration variables" do
  end

  it "knows where to put files" do
  end

end