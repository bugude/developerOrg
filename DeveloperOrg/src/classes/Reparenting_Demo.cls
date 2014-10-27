public class Reparenting_Demo{
    public void reparenting() {
        Interviewer__c inter = [select id, Position__c, Position__r.Name from Interviewer__c limit 1];
        System.debug('Interviewer - ' + inter);
        List<Position__c> pos = [Select id, Name from Position__c];
        System.debug('Position - ' + Pos);
        Id MgrPosId;
        Id TechPosId;
        for(Position__c p:pos) {
        	if(p.Name == 'Manager') {
        		MgrPosId = P.Id;
        	} else if(p.Name == 'Technology Analyst') {
        		TechPosId = p.Id;
        	}
        }
        
        if(inter.Position__r.Name == 'Manager') {
        	inter.Position__c = TechPosId;
        } else if(inter.Position__r.Name == 'Technology Analyst') {
        	inter.Position__c = MgrPosId;
        }
        
        update inter;
    }
}