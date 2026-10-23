trigger DevOps_Trigger_IQBAL on DevOps_Lab_IQBAL__c (before insert) { 
for (DevOps_Lab_IQBAL__c record : Trigger.new) { 
if (String.isBlank(record.Training_Status_IQBAL__c)) { 
record.Training_Status_IQBAL__c = 'Trigger OK'; 
} 
} 
}