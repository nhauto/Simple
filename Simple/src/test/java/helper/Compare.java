package helper;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Compare {
	
protected double basket;
protected double expected;
protected type Type;



public enum type
{
	membership,monthly,prorata,fee,total,amount;	
}

public Compare(double bsk,double exp,type tp)
{
	basket = bsk;
	expected = exp;
	Type = tp; 
}

public Compare(String bsk,String exp,type tp)
{
	basket = getDouble(bsk);
	expected = getDouble(exp);
	Type = tp;
}


	protected double getDouble(String st)
	{
		double result = -1;
		
			double res = Double.parseDouble(st.replace("£",""));
			result = (double) Math.round(res * 100) / 100;
		
		return result;
	
	}
	public void compare()
	{
		if(basket != expected)
		{
			
			interact("the value of "+Type.name()+" ("+Double.toString(basket)+") on the page doesn't match the expected "+Double.toString(expected));
			
		}
	}

	void interact(String st)
	{
		System.out.println(st);
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		try {
			String dob=reader.readLine();
			System.out.println(dob);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
