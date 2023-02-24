namespace Laas;

using { managed, cuid } from '@sap/cds/common';

entity Deductions: managed, cuid {
    transactionID: UUID;
    status: String(30);
    fmno: String(9);
    name: String;
    companyCode: String(4);
    costCenter: String(8);
    sourceSystem: String;
    deductionType: String;
    componentID: String;
    sourceAmount: Decimal(15,3);
    sourceCurrency: String;
};
