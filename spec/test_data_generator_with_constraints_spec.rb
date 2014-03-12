require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "TestDataGeneratorWithConstraints" do
	context "#generateTestDataForModel" do
  		it "successfully generates pairwise data for simple model" do

  			dataModel =
  				{
  					model:
  					{
  						supply: (0..3),
						demand: (0..3)
  					},
  					constraints: {}
				}
    		pairWiseData  = TestDataGeneratorWithConstraints.instance.generateTestDataForModel(dataModel[:model])
    		pairWiseData.length.should eq 16
    	end
    	it "successfully generates pairwise data for simple models with constraints" do
    		constraint = lambda { |t| t if (t[:supply] >= t[:demand])}
  			dataModel =
  				{
  					model:
  					{
  						supply: (0..3),
						demand: (0..3)
  					},
					constraints:
					{
						model: [constraint]
					}
				}
    		pairWiseData  = TestDataGeneratorWithConstraints.instance.generate(dataModel)
    		pairWiseData.length.should eq 10
    	end
	end
end
