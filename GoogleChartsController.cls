global with sharing class GoogleChartsController {
     
    
    @RemoteAction   
    global static Opportunity[] animateOpportunity() {
        return [select  Name, ExpectedRevenue,  Probability, CloseDate from Opportunity where CloseDate != Null order by ExpectedRevenue DESC limit 1000];
    }  
 
}