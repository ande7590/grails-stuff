package grails.stuff.taglib

class RowEvaluatorFactoryImpl implements RowEvaluatorFactory {
	
	/**
	 * Wrapper object to force closure to conform to RowEvaluator interface
	 * @author mike
	 *
	 */
	static class ClosureRowEvaluator implements RowEvaluator {
		private final Closure rowFunc
		ClosureRowEvaluator(Closure rowFunc) {
			this.rowFunc = rowFunc
		}		
		public def evaluateRow(def row) {
			return rowFunc.call(row)
		}
	}
	
	/**
	 * Row evaluator gets a property from an object based on the propertyPath.
	 * Constructor takes propertyPath string to access  properties, nested or otherwise.
	 * If called with propertyPath "A.foo.prop",  for a row object like  
	 * [A: [foo: [prop: 'BAM!'], bar: '?'], B:..], 'BAM!' would be returned.
	 *  
	 * @author mike
	 *
	 */
	static class StringRowEvaluator implements RowEvaluator {

		private final propertyPathTokens
		private final static PATH_SEP = '.'
		
		StringRowEvaluator(def propertyPath) {
			this.propertyPathTokens = propertyPath?.tokenize(PATH_SEP)
		}
		
		@Override
		public def evaluateRow(def row) {
			def eval = row
			if (this.propertyPathTokens) {
				this.propertyPathTokens.each { propertyName ->
					eval = eval."${propertyName}"
					if (eval == null) {
						throw new MissingPropertyException("Unable to find value for property ${propertyName}")
					}
				}
			}
			return eval
		}
	}
	
	/* (non-Javadoc)
	 * @see grails.stuff.taglib.RowEvaluatorFactory#getRowEvaluator(java.lang.Object)
	 */
	@Override
	RowEvaluator getRowEvaluator(def argument) {
		def evaluator = null
		if (argument instanceof String || argument instanceof GString) {
			evaluator = new StringRowEvaluator(argument)			
		} else if (argument instanceof Closure) {
			evaluator = new ClosureRowEvaluator(argument)
		} else {
			throw new RuntimeException("Row evaluator must be string or closure.")
		}
		
		return evaluator
	}
}
