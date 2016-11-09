package helper;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Person {
	
	private boolean DD;
	
	public String firstName;
	public String lastName;
	public String dob_day;
	public String dob_month;
	public String dob_year;
	public int gender;
	public String postcode;
	public String house;
	public String email;
	public String phone;
	public String card;
	public int expYear;
	public int expMonth;
	public String code;
	
	
	public enum field
	{
		
	}
	
	public Person(boolean dd)
	{
		DD = dd;
		populate();
	}
	
	
	public String getAccount()
	{
		return "40308669";
	}
	
	public String[] getSortCode()
	{
		String[] result = {"56","00","36"};
		
		return result;
	}
	

	
	String getName(String fn)
	{
		String result = null;
		String str="";
		//String ID="";
		Helper.text t;
		try
		{
		
		t=Helper.text.valueOf(fn);
		Helper help=new Helper();
			str=help.getText(t);
			result = str;
			 
		}catch(Exception ex)
		{
			
			str=null;
		}
		
		return result;
	}
	
	
	String ConvertMonth(String mon)
	{
		String result = "Jan";
		switch(mon)
		{
		case "01":
		{
			break;
		}
		case "02":
		{
			result = "Feb";
			break;
		}
		case "03":
		{
			result = "Mar";
			break;
		}
		case "04":
		{
			result = "Apr";
			break;
		}
		case "05":
		{
			result = "May";
			break;
					
		}
		case "06":
		{
			result = "Jun";
			break;
		}
		case "07":
		{
			result = "Jul";
			break;
		}
		case "08":
		{
			result = "Aug";
			break;
		}
		case "09":
		{
			result = "Sep";
			break;
		}
		case "10":
		{
			result = "Oct";
			break;
		}
		case "11":
		{
			result = "Nov";
			break;
		}
		case "12":
		{
			result = "Dec";
			break;
		}
		}
		
		return result;
	}
	
	String getCurrent()
	{
		String result = null;
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   
		 
		   Calendar cal = Calendar.getInstance();
		   String dt = dateFormat.format(cal.getTime());
		   String[] dat = dt.split("-");
		   String mon = ConvertMonth(dat[1]);
		   String day = dat[2].split(" ")[0];
		   int inday = Integer.parseInt(day);
		   String tday = String.format("%02d", inday);
		   result = mon+tday;
		
		
		return result;
	}
	
	
	public boolean isCurrent(String str)
	{
		boolean result = false;
		
		String re = str.substring(10);
		String[] rs = re.split("~");
		
	 
		   
 
		   String res = getCurrent();
		   
		   
		   if(res.equals(rs[0]))
		   {
			   result = true;
		   }
		   

		
		
		return result;
	}
	
	
	
	final void populate()
	{
		
		if(DD)
		{
			firstName = "David";
			lastName = "Archer";
			postcode = "BA133BN";
			house = "530";
		}else
		{
			firstName = getName("firstname");
			lastName = getName("lastname");
			if(!isCurrent(firstName))
			{
				firstName = "DavidStage" + getCurrent() + "~0";
				lastName = "ATTest~0";
			}
			
			postcode = "IV448TZ";
			house = "473";
		}
		
		dob_day = "01";
		dob_month = "01";
		dob_year = "1987";
		gender = 1;
		email = "max.karpov@nuffieldhealth.com";
		phone = "07482716718";
		card = "4111111111111111";
		expYear = 2;
		expMonth = 2;
		code = "373";
	}
}
