/**
 * Utility helper calss to publish notification events
 * Author: A.I.
 */
public class PublishNotificationEX {

    // Example to publish
    // PublishNotificationEX.publishError('Error on execution', '01iqw78iwu87w', 'error'); info
    // PublishNotificationEX.publishError('Missing Data', '01iqw78iwu87w', 'warning');
    public static void publishError(String msg, String id, String errType){
        // Publish messages as notifications
        List<System_Notification__e> notifications = new List<System_Notification__e>();
        notifications.add(new System_Notification__e(Message__c = msg, Identification__c = id, Error_Type__c = errType));

        List<Database.SaveResult> results = EventBus.publish(notifications);
        // Inspect publishing results
        for (Database.SaveResult result : results) {
            if (!result.isSuccess()) {
                for (Database.Error error : result.getErrors()) {
                    System.debug('Error returned: ' + error.getStatusCode() +' - '+ error.getMessage());
                }
            }
        }
    }

}
