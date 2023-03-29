using {Laas as my} from '../../db/schema';

annotate my.Deductions with @title : 'Deductions'{
    
    companyCode @title : 'Company Code';
    AssignmentID @title: 'Assignment ID';
    status @title : 'Status';
    fmno @title : 'FMNO';
    name @title : 'Name';
    sourceAmount @title: 'Source Amount';
    sourceCurrency @title: 'Source Currency';
    sourceSystem @title: 'Source System';
    chargeDescription @title : 'Charge Description';
    invoiceNumber @title : 'Invoice Number';
    AccountingDocument @title : 'Accounting Document';
    monthOfDeduction @title : 'Month of Deduction';
    originationDate @title : 'Origination Date';
    componentID @title : 'Component ID';
    downloadDate @title : 'Download Date';
    LineNumber @title : 'Line Number';

};
 

 
 

