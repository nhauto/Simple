import java.util.ArrayList;
import java.util.List;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class Parser {

	public enum field
	{
		input,select,option
	}
	
	
	WebDriver driver;
	
	public Parser(WebDriver d)
	{
		driver=d;
	}
	
	
	public WebElement getParent(WebElement element)
	{
		WebElement result=null;
		
		result=(WebElement) ((JavascriptExecutor)driver).executeScript("return arguments[0].parentNode;", element);
		
		return result;
	}
	
	public WebElement getParentRow(WebElement el,String tp)
	{
		WebElement result=null;
		
		WebElement temp=null;
		
		while(result==null)
		{
			if(temp==null)
			{
				temp=getParent(el);
				
				String te=temp.getTagName();
				if(te.equals("head"))
				{
					result=temp;
					break;
				}
				String idd=temp.getAttribute("id");
				String val=temp.getText();
				
			}else
			{
				String te=temp.getTagName();
				String idd=temp.getAttribute("id");
				String val=temp.getText();
				
				temp=getParent(temp);
			}
			
			if(temp.getTagName().equals(tp))
			{
				
				result=temp;
			}
			
		}
		
		
		
		
		return result;
	}
	
	public WebElement getChild(WebElement el,field f)
	{
		WebElement result=null;
		List<WebElement> ele=new ArrayList<WebElement>();
			 
			int count=0;
			while(result==null)
			{
				 
					try {
						ele=el.findElements(By.tagName(f.toString()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					if(ele.size()>0)
					{
						for(int i=0;i<ele.size();i++)
						{
							WebElement temp=getChild(ele.get(i),f);
							if(temp!=null)
							{
								result=temp;
								break;
							}
						}
					}else
					{
						
						String tn=el.getTagName();
						String fn=f.toString();
						String nh=el.getAttribute("type");
						
						if(tn.equals(fn))
						{
							if(nh!=null)
							{
								if(!nh.equals("hidden"))
								{
							result=el;
							break;		
								}
								
							}

						}
					}
				 
				count++;
				if(count>3)
				{
					result=null;
					break;
				}
				
			}
		
		
		return result;
	}
	
	
	public String ByLabel(String ar,field fd)
	{
		String result=null;
		
			List<WebElement> ele=new ArrayList<WebElement>();
			ele=driver.findElements(By.tagName("label"));
			for(int i=0;i<ele.size();i++)
			{
				
				
				if(ele.get(i).getText().equals(ar))
				{
					result=ele.get(i).getAttribute("for");
					break;
				}
				
			}
		
		return result;
	}
	
	
	
	public String getId(String st,field fd)
	{
		String result=null;
	 
		WebElement wel=driver.findElement(By.xpath("//*[contains(text(),'"+st+"')]"));
		
		WebElement parent=getParentRow(wel,"tr");
		if(parent.getTagName().equals("head"))
		{
			result=ByLabel(st,fd);
		}else
		{
		
		List<WebElement> cell=new ArrayList<WebElement>();
		
		cell=parent.findElements(By.tagName("td"));
		
		for(int j=0;j<cell.size();j++)
		{
			WebElement cll=cell.get(j);
			
			List<WebElement> inp=new ArrayList<WebElement>();
			inp=cll.findElements(By.tagName(fd.toString()));
			for(int y=0;y<inp.size();y++)
			{
				WebElement np=inp.get(y);
				
				if(np!=null)
				{
					String nt=np.getAttribute("type");
					if(nt!=null)
					{
						if(!nt.equals("hidden"))
						{
							result=np.getAttribute("id");
							break;
						}
					}
					
				}
			}
		}
		
			
		}
		return result;
	}
	
	
}
