
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

import org.apache.commons.codec.binary.Base64InputStream;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.google.common.io.Files;



public class Helper {
	
	
	public enum text
	{
		firstname,lastname,company,gmcnum,othernum,username,nickname,appname
	}
	
	public enum range
	{
		zero,week,month,twomonth
	}
	range rg;
	text Text;
	public Helper()
	{}
	
	
	public boolean isCutOff()
	{
		boolean result = false;
		
		String cof = null;
		String over = null;
		

		
		Calendar cal = Calendar.getInstance();
		int day = cal.get(Calendar.DAY_OF_MONTH);

		int total = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		
		int remaining = total - day;
		
		if(remaining < 10)
		{
			result = true;
		}
		
		try {
			cof = getPropValue("cutoff", "value");
			over = getPropValue("override","value");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if(over!=null)
		{
			if(over.equals("override"))
			{
				if(cof!=null)
				{
					if(cof.equals("yes"))
					{
						result = true;
					}
				}
			}
		}
		
		return result;
	}
	
	public boolean contains(String[] ar, String st)
	{
		boolean result = false;
		
		for(int i = 0; i< ar.length; i ++)
		{
			if(ar[i].equals(st))
			{
				result = true;
				break;
			}
			
			
		}
		
		
		return result;
		
	}
	
	public String norm(double d)
	{
		String result = null;
		
		double db =(double) Math.round(d * 100) / 100;
		result = Double.toString(db);
		
		return result;
	}
	
	public String parseFrom(String body,String start,String end)
	{
	String result="";

	            try {
	    Pattern regex = Pattern.compile(start+"(.*)"+end);
	    Matcher regexMatcher = regex.matcher(body);
	    
	    while (regexMatcher.find()) {
	        for (int i = 1; i <= regexMatcher.groupCount(); i++) 
	        {
	         result=regexMatcher.group(1);
	        }
	       
	    } 
	} catch (PatternSyntaxException ex) 
	{
	    // Syntax error in the regular expression
	}
	    


	return result;

	}

	
	
	public String addDays(int ds)
	{
		String result=null;
		Calendar cal=GregorianCalendar.getInstance();
		cal.add(cal.DAY_OF_YEAR, ds);
		DateFormat fo=new SimpleDateFormat("dd/MM/yyyy");
		Date da=cal.getTime();
		result=fo.format(da);
		return result;
	}
	
	public void writeFile(String path,String line)throws IOException
	{
		
		FileWriter file=new FileWriter(path,false);
		PrintWriter print=new PrintWriter(file);
		print.println(line);
		print.close();
		file.close();
		
		
	}
	
	public int cellNum(WebElement tr, String td)
	{
		int result = -1;
		
		List<WebElement> ele = new ArrayList<>();
		ele = tr.findElements(By.tagName("td"));
		
		for(int i = 0; i<ele.size(); i++)
		{
			WebElement cell = ele.get(i);
			
			String txt = cell.getText();
			
			if(txt.equals(td))
			{
				result = i;
				break;
			}
			
		}
		
		
		return result;
	}
	
	
	public WebElement getCell(WebDriver driver, String td)
	{
		WebElement result = null;
		List<WebElement> ele = new ArrayList<>();
		
			ele = driver.findElements(By.tagName("td"));
			int num = -1;
			
			for(int i = 0; i<ele.size(); i ++)
			{
				WebElement wel = ele.get(i);
				
				String txt = wel.getText();
				
				if(txt.equals(td))
				{
					 
					WebElement tr = wel.findElement(By.xpath("parent::*"));
					
					List<WebElement> cells = new ArrayList<>();
					
					cells = tr.findElements(By.tagName("td"));
					num = cellNum(tr,td);
					WebElement last = cells.get(num+1);
					result = last;
					break;
					
				}
			}
		
		return result;
		
	}
	
	
	
	public double getNum(String st)
	{
		double result = - 1.00;
		
			String ar = st.replace("£", "");
			
			result = Double.parseDouble(ar);
		
		
		return result;
	}
	
	
	public void writeResults(List<String[]> l)throws IOException
	{
		String path="result.csv";
		
		
		List<String[]> lo = new ArrayList<>();
		
		lo = readFile(path,",");
		
		if(lo.isEmpty())
		{
			lo.addAll(l);
		}else
		{
			lo.add(l.get(1));
		}
		
		FileWriter file = new FileWriter(path,false);
		PrintWriter print=new PrintWriter(file);
		
		for(int i=0;i<lo.size();i++)
		{
			String [] temp=lo.get(i);
			String line="";
			for(int j=0;j<temp.length;j++)
			{
				line=line+temp[j]+",";
			}
			
			print.println(line);
		}
		print.close();
		file.close();
	}
	
	
	public String getDate(String Range)
	{
		int ds=0;
		String result=null;
		Helper helper=new Helper();
		try {
			range ar=range.valueOf(Range);
			
			Calendar cr=GregorianCalendar.getInstance();
			Date da=new Date();
			cr.setTime(da);
			//String week=Integer.toString(cr.DAY_OF_MONTH)+"/"+Integer.toString(cr.MONTH)+"/"+Integer.toString(cr.YEAR);
	
			switch(ar)
			{
			case zero:
			{
				 
				break;
			}
			case week:
			{
				ds=7;
				break;
			}
			case month:
			{
			 ds=30;
				break;
			}
			case twomonth:
			{
				ds=60;
				
				//cr.add(cr.DAY_OF_YEAR, 60);
				break;
			}
			}
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result=helper.addDays(ds);
		return result;
	}
	
	
	
	public String getText(text t)throws IOException
	{
		String result="";
		String pro=readLine(t.toString());
		String[] ar=pro.split("~");
		
		
		
		if(ar.length>1)
		{
		String body=pro.split("~")[0];
		String num=pro.split("~")[1];
		String inc=Integer.toString(Integer.parseInt(num)+1);
		result=body+"~"+inc;
		String path=t.toString();
//		writeFile(path,result);
		}else
		{
			result=Integer.toString(Integer.parseInt(pro)+1);
		}
		
		switch(t)
		{
		case firstname:
		{
			
			break;
		}
		case lastname:
		{
			
			break;
		}
		case company:
		{
			
			break;
		}
		case gmcnum:
		{
			
			break;
		}
		case othernum:
		{
			
			break;
		}
		case username:
		{
			
			 
			
			break;
		}
		case nickname:
		{
			
			break;
		}
		case appname:
		{
			
			break;
		}		
		
		
		
		
		}
		
		
		
		return result;
		
	}
	
	public String readLine(String path) throws IOException
	{
		String result="";
		
		File file=new File(path);
		BufferedReader reader=new BufferedReader(new FileReader(file));
		result=reader.readLine();
		reader.close();
		return result;
	}
	
	public List<String[]> readFile(String path,String del)
    {
        List<String[]> result=new ArrayList<String[]>();
        
        BufferedReader br=null;    
        try
        {
            br= new BufferedReader(new FileReader(path)); 
        
        String line;
        
        while((line=br.readLine())!=null)
        {
            result.add(line.split(del));
        
        }
        
        
        }catch(IOException e)
        {
            System.out.print(e.getMessage());
        }
        finally
        {
            try
            {
            if(br!=null)
            {
            br.close();
            }
            
            }catch(IOException ex)
            {
            System.out.print(ex.getMessage());
            }
        }
        return result;
    }    
	
	public List<String> readFile(String path)throws IOException
	{
		List<String> result=new ArrayList<String>();		 
		
		File file=new File(path);
		
	      BufferedReader reader = new BufferedReader(new FileReader(file));
	      List<String> results = new ArrayList<String>();
	      String line = reader.readLine();
	      while (line != null) {
	          results.add(line);
	          line = reader.readLine();
	      }
		reader.close();
		
		return result;
	}
	
	public String getPropValue(String ar)throws Exception
	{
		String result="";
		
		Properties prop=new Properties();
		String name="element.properties";
		InputStream str=getClass().getClassLoader().getResourceAsStream(name);
		
		if(str!=null)
		{
			prop.load(str);
			result=prop.getProperty(ar);
		}
		
		
		return result;
	}
	
	public String getPropValue(String ar,String file)throws Exception
	{
		String result="";
		
		Properties prop=new Properties();
		String name=file+".properties";
		InputStream str=getClass().getClassLoader().getResourceAsStream(name);
		
		if(str!=null)
		{
			prop.load(str);
			result=prop.getProperty(ar);
		}
		
		
		return result;
	}

}
