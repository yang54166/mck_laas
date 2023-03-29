using {Laas as my} from '../db/schema';

service LaasDeductionsService {
    entity Deductions as projection on my.Deductions actions {
        @( cds.odata.bindingparameter.name : '_it', Common.SideEffects : {TargetProperties: ['_it/status', '_it/approvedBy', '_it/approvedDate']} )
        action approve();
        @( cds.odata.bindingparameter.name : '_it', Common.SideEffects : {TargetProperties: ['_it/status']} )
        action unapprove();
        @( cds.odata.bindingparameter.name : '_it', Common.SideEffects : {TargetProperties: ['_it/status']} )
        action post();
    };

   @readonly entity statusList as SELECT DISTINCT(status) from my.Deductions order by status;

   @readonly entity fmnoList as SELECT DISTINCT(fmno) from my.Deductions order by fmno;

   @readonly entity companyCodeList as SELECT DISTINCT(companyCode) from my.Deductions order by companyCode;
}