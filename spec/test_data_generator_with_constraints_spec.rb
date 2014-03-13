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
      it "successfully generates pairwise data for complex models with constraints" do
        complexConstraint = lambda {|t| t if ((t[:inner4] != t[:inner5]) && (t[:innermost2] != t[:innermost3]) && (t[:innermost1] > 3))}
        dataModel =
        {
            model:
            {
                outer1:
                {
                    inner1:
                    {
                        innermost1: (1..5),
                        innermost2: [true, false],
                        innermost3: [true, false]
                    },
                    inner2: [1,-1]
                },
                outer2:
                {
                    inner3: (1..3),
                    inner4: [true, false],
                    inner5: [true, false]
                }
            },
            constraints:
            {
                model: [complexConstraint]
            }
        }
        pairWiseData  = TestDataGeneratorWithConstraints.instance.generate(dataModel)
        pairWiseData.length.should eq 32
      end
      it "successfully generates pairwise data for complex models with multiple constraints" do
        outerConstraint = lambda {|t| t if (t[:inner4] != t[:inner5])}
        innerConstraint1 = lambda {|t| t if (t[:innermost2] != t[:innermost3])}
        innerConstraint2 = lambda {|t| t if (t[:innermost1] > 3)}
        dataModel =
        {
            model:
            {
                outer1:
                {
                    inner1:
                    {
                        innermost1: (1..5),
                        innermost2: [true, false],
                        innermost3: [true, false]
                    },
                    inner2: [1,-1]
                },
                outer2:
                {
                    inner3: (1..3),
                    inner4: [true, false],
                    inner5: [true, false]
                }
            },
            constraints:
            {
                inner1: [innerConstraint1, innerConstraint2],
                outer2: [outerConstraint]
            }
        }
        pairWiseData  = TestDataGeneratorWithConstraints.instance.generate(dataModel)
        pairWiseData.length.should eq 32
      end
	end
end
