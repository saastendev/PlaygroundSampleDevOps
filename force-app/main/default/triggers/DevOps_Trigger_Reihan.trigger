trigger DevOps_Trigger_Reihan on DevOps_Lab_Reihan__c (before insert) {
    for (DevOps_Lab_Reihan__c record : Trigger.new) { 
        if (String.isBlank(record.Training_Status_Reihan__c)) { 
        record.Training_Status_Reihan__c = 'Trigger OK';
            system.debug('tambahan system debug');
        } 
    } 
}