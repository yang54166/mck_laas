using {Laas as my} from '../db/schema';

service LaasDeductionsService {
    entity Deductions as projection on my.Deductions actions {
        @( cds.odata.bindingparameter.name : '_it', Common.SideEffects : {TargetProperties: ['_it/status', '_it/approvedBy', '_it/downloadDate', '_it/approvedDate', '_it/monthOfDeduction']} )
        action approve();
        @( cds.odata.bindingparameter.name : '_it', Common.SideEffects : {TargetProperties: ['_it/status', '_it/downloadDate', '_it/approvedDate', '_it/monthOfDeduction']} )
        action unapprove();
        @( cds.odata.bindingparameter.name : '_it', Common.SideEffects : {TargetProperties: ['_it/status', '_it/downloadDate', '_it/approvedDate', '_it/monthOfDeduction']} )
        action post();
    };

   @readonly entity statusList as SELECT DISTINCT(status) from my.Deductions where status != '' order by status;

   @readonly entity fmnoList as SELECT DISTINCT(fmno) from my.Deductions where fmno != '' order by fmno;

   @readonly entity companyCodeList as SELECT DISTINCT(companyCode) from my.Deductions where companyCode != '' order by companyCode;
}