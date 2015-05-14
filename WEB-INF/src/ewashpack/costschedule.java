import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.concurrent.TimeUnit.*;
import java.util.concurrent.*;
import java.lang.*;

@WebListener 
public class costschedule implements ServletContextListener{

private ScheduledExecutorService scheduler;
 
	@Override
	public void contextDestroyed(ServletContextEvent event) {
	
	scheduler.shutdownNow();
	
	}
 
        
	@Override
	public void contextInitialized(ServletContextEvent event) {
	
	scheduler = Executors.newSingleThreadScheduledExecutor();
	
	scheduler.scheduleAtFixedRate(new costdeduct(), 0,5, TimeUnit.SECONDS);
	
	
	}
	
	
	
	
}

