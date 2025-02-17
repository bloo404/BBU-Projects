package Model.Expression;

import Exceptions.MyException;
import Model.ADTs.MyIDictionary;
import Model.Value.IntValue;
import Model.Value.Value;

public class ValueExp implements Exp {
	Value e;

    public ValueExp(Value intValue) {
		this.e = intValue;
    }

    @Override
	public Value eval(MyIDictionary<String, Value> tbl) throws MyException {
		return e;
	}

	@Override
	public String toString() {
		return "ValueExp{" +
				"e=" + e +
				'}';
	}

	public Exp deepCopy(){
		return new ValueExp(e.deepCopy());
	}
}
