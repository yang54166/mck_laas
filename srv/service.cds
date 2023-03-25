using {Laas as my} from '../db/schema';

service LaasDeductionsService {
    entity Deductions as projection on my.Deductions actions {
        @( cds.odata.bindingparameter.name : '_it', Common.SideEffects : {TargetProperties: ['_it/status']} )
        action approve();
        action unapprove();
        action post();
    };
}