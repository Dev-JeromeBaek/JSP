package exClass;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ex002_CalendarJAVA extends Thread {
	
	private String showDate;
	
	public ex002_CalendarJAVA(String showDate) {
		this.showDate = showDate;
	}
	
	@Override
	public void run() {
		
		while(true)
		{
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일, HH:mm:ss");
			showDate = sdf.format(date);
			
			try {
				Thread.sleep(1000);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
}// class END
