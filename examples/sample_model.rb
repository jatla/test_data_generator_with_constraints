outerConstraint = proc {|t| t if (t[:inner4] != t[:inner5])}
innerConstraint1 = lambda {|t| t if (t[:innermost2] != t[:innermost3])}
innerConstraint2 = lambda {|t| t if (t[:innermost1] > 3)}
$dataModel =
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