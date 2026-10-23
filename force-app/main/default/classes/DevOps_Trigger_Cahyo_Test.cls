@isTest
private class DevOps_Trigger_Cahyo_Test {

    @isTest
    static void testTriggerAndFlowExecution() {
        // 1. Siapkan data
        DevOps_Lab_Cahyo__c testRecord = new DevOps_Lab_Cahyo__c();

        // Jika field Name bertipe Text, isi sebelum insert:
        // testRecord.Name = 'Test DevOps Cahyo';

        // 2. Jalankan trigger dan flow
        Test.startTest();
        insert testRecord;
        Test.stopTest();

        // 3. Ambil hasil setelah automation berjalan
        DevOps_Lab_Cahyo__c result = [
            SELECT Id, Training_Status_Cahyo__c
            FROM DevOps_Lab_Cahyo__c
            WHERE Id = :testRecord.Id
            LIMIT 1
        ];

        // 4. Verifikasi status akhir
        System.assertEquals(
            'Flow OK',
            result.Training_Status_Cahyo__c,
            'Status akhir harus bernilai Flow OK'
        );
    }
}