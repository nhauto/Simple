package helper;

public class Payment {
	
	 private String membership;
	 private double memberCost;
	 private String monthly;
	 private double monthlyCost;
	 private String prorata;
	 private double prorataCost;
	 private String nextmonth;
	 private double nextMonthCost;
	 private String total;
	 private double totalCost;
	 private String fee;
	 private double feeCost;
	 private String prorataProm;
	 private double prorataPromCost;
	 
	 
	 public void setMembership(String st)
	 {
		 String clr = st.replace("£","");
		 membership = st;
		 try {
			memberCost = Double.parseDouble(clr);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			 memberCost = 0;
		}
	 }
	 
	 public String getMembershipString()
	 {
		 String result = membership;
		 
		 return result;
	 }

	 public double getMembershipCost()
	 {
		 double result = memberCost;
		 return result;
	 }
	 
	 public void setMonthly(String st)
	 {
		 String clr = st.replace("£","");
		 monthly = st;
		 try {
			monthlyCost = Double.parseDouble(clr);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
		monthlyCost = 0;
		}
	 }
	 
	 public String getMontlyString()
	 {
		 String result = monthly;
		 return result;
	 }
	 
	 public double getMonthlyCost()
	 {
		 double result = monthlyCost;
		 return result;
	 }
	 
	 public void setProrata(String st)
	 {
		 String clr = st.replace("£","");
		 prorata = st;
		 try {
			prorataCost = Double.parseDouble(clr);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			prorataCost = 0;
		} 
	 }
	 
	 public void setProrataProm(String st)
	 {
		 String clr = st.replace("£","");
		 prorataProm = st;
		 try {
			prorataPromCost = Double.parseDouble(clr);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			prorataPromCost = 0;
		} 
	 } 
	 
	 public String getProrataPromString()
	 {
		 String result = prorataProm;
		 return result;
	 }
	 
	 public double getProrataPromCost()
	 {
		 double result = prorataPromCost;
		 return result;
	 }
	 
	 public String getProrataString()
	 {
		 String result = prorata;
		 return result;
	 }
	 
	 public double getProrataCost()
	 {
		 double result = prorataCost;
		 return result;
	 }
	 public void setNextMonth(String st)
	 {
		 
		 String clr = st.replace("£","");
		 nextmonth = st;
		 try {
			nextMonthCost = Double.parseDouble(clr);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			nextMonthCost = 0;
		} 	 
		 
	 }
	 
	 public String getNextString()
	 {
		 String result = nextmonth;
		 return result;
	 }
	 
	 public double getNextCost()
	 {
		 double result = nextMonthCost;
		 return result;
		 
	 }
	 
	 public void setTotal(String st)
	 {
		 String clr = st.replace("£","");
		 total = st;
		 try {
			totalCost = Double.parseDouble(clr);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			totalCost = 0;
		} 			 
	 }
	 
	 public String getTotalString()
	 {
		 String result = total;
		 return result;
	 }
	 
	 public double getTotalCost()
	 {
		 double result = totalCost;
		 return result;
	 }
	 
	 public void setFee(String st)
	 {
		 String clr = st.replace("£","");
		 fee = st;
		 try {
			feeCost = Double.parseDouble(clr);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			feeCost = 0;
		} 	
	 }
	 
	 public String getFeeString()
	 {
		 String result = fee;
		 return result;
	 }
	 
	 public double getFeeCost()
	 {
		 double result = feeCost;
		 return result;
	 }
	 
}
