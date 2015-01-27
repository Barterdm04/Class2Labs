/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab4.model;

import java.time.LocalDateTime;
/**
 *
 * @author dbarter1
 */
public class WelcomeService {
    private int morningEndTime = 12;
    private int afternoonEndTime = 20;
    private int eveningEndTime = 4;
    private final LocalDateTime currentDate = LocalDateTime.now();
    
    
    public String determineTimeOfDay(){
        int currentHour = currentDate.getHour();
        int morningEndTime = 12;
        int afternoonEndTime = 20;
        int eveningEndTime = 4;
        
        System.out.println(currentDate);
        if(currentHour < morningEndTime && currentHour >= eveningEndTime) {
            return "Morning";
        } else if (currentDate.getHour() < afternoonEndTime){
            return "Afternoon";
        } else if (currentDate.getHour() > afternoonEndTime || currentDate.getHour() < eveningEndTime){
            return "Evening";
        } else {
            return " ERROR ";
        }
    }
        
    public String createMessage(String name){
        return "Good " + determineTimeOfDay() + ", " + name + ". Welcome!";
    }
    
    
}
