namespace Laas;

using { managed, cuid, sap.common.CodeList} from '@sap/cds/common';

entity Deductions: managed, cuid {
    AssignmentID: String(20);
    status: String(30);
    fmno: String(10);
    name: String;
    companyCode: String(4);
    sourceSystem: String(3); // S4H,PCC
    chargeDescription: String(12);
    invoiceNumber: String(12);
    componentID: String;
    sourceAmount: Decimal(23,2);
    sourceCurrency: String(5);
    monthOfDeduction: String(10);
    originationDate: Date;
    approvedDate: Timestamp;
    approvedBy: String;
    downloadDate: Timestamp;
    AccountingDocument: String(10);
    LineNumber: Integer;
};


