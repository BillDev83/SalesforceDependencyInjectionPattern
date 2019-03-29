/**
 * @File Name          : LB_ControllerIndependent.cls
 * @Description        : 
 * @Author             : william.salesforce@gmail.com - @BillSalesforce
 * @Group              : 
 * @Last Modified By   : william.salesforce@gmail.com - @BillSalesforce
 * @Last Modified On   : 2019-03-23, 11:06:01 p.m.
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    2019-03-23, 10:43:58 p.m.   william.salesforce@gmail.com - @BillSalesforce     Initial Version
**/
public with sharing class LB_ControllerIndependent {    

     public void doSomething(){
       //Get the the metadata list  
       List<LB_ServiceFactory__mdt> metadataServices = [SELECT Service_Class__c FROM LB_ServiceFactory__mdt]; //@ToDo move to Selector
              
       for(LB_ServiceFactory__mdt metadataService: metadataServices){
           //Based on the name of the class in the setting create an instance.
           //We don't know the class but we know that the class will implement the LB_ServiceInterface 
           LB_ServiceInterface serviceClass = (LB_ServiceInterface)Type.forName(metadataService.Service_Class__c).newInstance(); 

           //Now we call the method from the serviceClass
           serviceClass.processSomething(5);
       }
    }
}
