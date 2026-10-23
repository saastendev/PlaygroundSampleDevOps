@isTest
private class DevOps_Trigger_Reihan_TEST {

    @isTest
    static void testTriggerAndFlowExecution() {
        // 1. Prepare Data
        DevOps_Lab_Reihan__c testRec = new DevOps_Lab_Reihan__c();
        // testRec.Field_Required__c = 'xxx'; // isi kalau ada required field / kondisi entry flow

        // 2. Execute
        Test.startTest();
        insert testRec;
        Test.stopTest();

        // 3. Verify Result (Trigger set 'Trigger OK', Flow update ke 'Flow OK')
        DevOps_Lab_Reihan__c resultRec = [
            SELECT Id, Training_Status_Reihan__c
            FROM DevOps_Lab_Reihan__c
            WHERE Id = :testRec.Id
            LIMIT 1
        ];

        System.assertEquals('Flow OK', resultRec.Training_Status_Reihan__c,
            'Status akhir harus bernilai Flow OK');
    }
}