/**
 * @File Name          : LB_ServiceLogicIndependent.cls
 * @Description        : 
 * @Author             : william.salesforce@gmail.com - @BillSalesforce
 * @Group              : 
 * @Last Modified By   : william.salesforce@gmail.com - @BillSalesforce
 * @Last Modified On   : 2019-03-23, 11:29:09 p.m.
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    2019-03-23, 11:28:02 p.m.   william.salesforce@gmail.com - @BillSalesforce     Initial Version
**/
public with sharing class LB_ServiceLogicIndependent implements LB_ServiceInterface {
    public void processSomething(Integer A) {
        System.debug('LB_ServiceLogicIndependent - Parameter =' + A);
    }
}
