/**
 * @File Name          : LB_ControllerIndependent.cls
 * @Description        : 
 * @Author             : william.salesforce@gmail.com - @BillSalesforce
 * @Group              : 
 * @Last Modified By   : william.salesforce@gmail.com - @BillSalesforce
 * @Last Modified On   : 2019-03-30, 9:47:10 p.m.
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    2019-03-23, 10:43:58 p.m.   william.salesforce@gmail.com - @BillSalesforce     Initial Version

MIT License

Copyright (c) 2019 William Lopez - @BillSalesforce

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


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
