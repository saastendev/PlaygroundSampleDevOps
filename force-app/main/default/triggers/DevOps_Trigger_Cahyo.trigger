trigger DevOps_Trigger_Cahyo on DevOps_Lab_Cahyo__c (before insert) {
		for (DevOps_Lab_Cahyo__c record : Trigger.new) { 
            if (String.isBlank(record.Training_Status_Cahyo__c)) { 
            record.Training_Status_Cahyo__c = 'Trigger OK'; 
        } 
	} 
}