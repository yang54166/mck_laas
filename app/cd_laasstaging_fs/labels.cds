using {Laas as my} from '../../db/schema';

annotate my.Deductions with @title : 'Deductions'{
    
    companyCode @title : 'Company Code';
    AssignmentID @title: 'Assignment ID';
    status @title : 'Status';
    fmno @title : 'FMNO';
    name @title : 'Name';
    sourceAmount @title: 'Source Amount';
    sourceCurrency @title: 'Source Currency'
};
 