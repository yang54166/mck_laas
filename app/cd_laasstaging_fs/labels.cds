using {Laas as my} from '../../db/schema';

annotate my.Deductions with @title : 'Deductions'{
    
    companyCode @title : '{@i18n>companyCode}';
    AssignmentID @title: '{@i18n>AssignmentID}';
    status @title : '{@i18n>status}';
    fmno @title : '{@i18n>fmno}';
    name @title : '{@i18n>name}';
    sourceAmount @title: '{@i18n>sourceAmount}';
    sourceCurrency @title: '{@i18n>sourceCurrency}';
    sourceSystem @title: '{@i18n>sourceSystem}';
    chargeDescription @title : '{@i18n>chargeDescription}';
    invoiceNumber @title : '{@i18n>invoiceNumber}';
    AccountingDocument @title : '{@i18n>AccountingDocument}';
    monthOfDeduction @title : '{@i18n>monthOfDeduction}';
    originationDate @title : '{@i18n>originationDate}';
    componentID @title : '{@i18n>componentID}';
    downloadDate @title : '{@i18n>downloadDate}';
    LineNumber @title : '{@i18n>LineNumber}';
    createdAt @title : '{@i18n>createdAt}';
    createdBy @title : '{@i18n>createdBy}';
    modifiedAt @title : '{@i18n>modifiedAt}';
    modifiedBy @title : '{@i18n>modifiedBy}';
    approvedDate @title : '{@i18n>approvedDate}';
    approvedBy @title : '{@i18n>approvedBy}';

};

 
 

