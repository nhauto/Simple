import java.util.ArrayList;
import java.util.List;

public class Scena {

	private String scenario;
	
	
	public boolean isROMF;
	public boolean isNOAF;
	public boolean isNMF;
	
	public Scena(String sc)
	{
	
		scenario = sc;
		populate();
	}
	
	final void populate()
	{
		if(scenario.contains("ROMF"))
		{
			isROMF = true;
		}
		if(scenario.contains("NOAF"))
		{
			isNOAF = true;
		}
		if(scenario.contains("NMF"))
		{
			isNMF = true;
		}
	}
}
