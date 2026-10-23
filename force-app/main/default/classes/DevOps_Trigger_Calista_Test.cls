@isTest
public class DevOps_Trigger_Calista_Test {
    @isTest 
    static void testTriggerAndFlowExecution() { 
        // 1. Prepare Data 
        DevOps_Lab_Calista__c testRecord = new DevOps_Lab_Calista__c(); 
        // 2. Execute 
        Test.startTest(); 
        insert testRecord; 
        Test.stopTest(); 
        // 3. Verify Result (Trigger sets 'Trigger OK', Flow updates to 'Flow OK') 
        DevOps_Lab_Calista__c result = [ 
        	SELECT Id, Training_Status_Calista__c 
        	FROM DevOps_Lab_Calista__c 
        	WHERE Id = :testRecord.Id LIMIT 1 
        ]; 
        System.assertEquals('Flow OK', result.Training_Status_Calista__c, 'Status akhir harus bernilai Flow OK'); 
    } 
}