using {Laas as my} from '../db/schema';

service LaasDeductionsService {
    entity Deductions as projection on my.Deductions;
}