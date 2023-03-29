using LaasDeductionsService as service from '../../srv/service';

annotate service.Deductions with {

    status @Common.ValueList: {
        CollectionPath: 'statusList',
        Label : 'Status',
        Parameters : [
            {$Type: 'Common.ValueListParameterInOut', LocalDataProperty: status, ValueListProperty: 'status'},
         

        ]
    };

    companyCode @Common.ValueList: {
        CollectionPath: 'companyCodeList',
        Label : 'Company Code',
        Parameters : [
            {$Type: 'Common.ValueListParameterInOut', LocalDataProperty: companyCode, ValueListProperty: 'companyCode'},
         

        ]
    };

    fmno @Common.ValueList: {
        CollectionPath: 'fmnoList',
        Label : 'FMNO',
        Parameters : [
            {$Type: 'Common.ValueListParameterInOut', LocalDataProperty: fmno, ValueListProperty: 'fmno'},
         

        ]
    }
};


 