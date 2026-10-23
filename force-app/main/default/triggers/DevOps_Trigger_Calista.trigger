trigger DevOps_Trigger_Calista on DevOps_Lab_Calista__c (before insert) {
    for (DevOps_Lab_Calista__c record : Trigger.new) { 
    	if (String.isBlank(record.Training_Status_Calista__c)) { 
    		record.Training_Status_Calista__c = 'Trigger OK'; 
    	} 
    } 

}