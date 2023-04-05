using LaasDeductionsService as service from '../../srv/service';

annotate service.Deductions with @(
    UI.Identification : [
        { $Type : 'UI.DataFieldForAction', Action: 'LaasDeductionsService.approve', Label: 'Approve', InvocationGrouping: #ChangeSet},
        { $Type : 'UI.DataFieldForAction', Action: 'LaasDeductionsService.unapprove', Label: 'Unapprove', InvocationGrouping: #ChangeSet},
        { $Type : 'UI.DataFieldForAction', Action: 'LaasDeductionsService.post', Label: 'Post', InvocationGrouping: #ChangeSet}
    ],
    UI.HeaderInfo: {
        TypeName : '{i18n>Deduction}',
        TypeNamePlural : '{i18n>Deductions}',
        Title : {
            $Type : 'UI.DataField',
            Value: companyCode
        },
        Description : {
            $Type : 'UI.DataField',
            Value: fmno
        }
    },
    UI.SelectionFields: [
        fmno,
        companyCode,
        status
    ],
    UI.DeleteHidden: true,
    UI.PresentationVariant: {
        Text : 'Default',
        Visualizations : ['@UI.LineItem'],
        SortOrder : [{
            $Type : 'Common.SortOrderType',
            Property : fmno,
            Descending: false
        }]
    },
    UI.LineItem : [
        { $Type : 'UI.DataFieldForAction', Action: 'LaasDeductionsService.approve', Label: 'Approve'},
        { $Type : 'UI.DataFieldForAction', Action: 'LaasDeductionsService.unapprove', Label: 'Unapprove'},
        { $Type : 'UI.DataFieldForAction', Action: 'LaasDeductionsService.post', Label: 'Post'},
        {
            $Type : 'UI.DataField',
            Label : '{i18n>companyCode}',
            Value : companyCode,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>fmno}',
            Value : fmno,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>name}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>sourceCurrency}',
            Value : sourceCurrency,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>sourceAmount}',
            Value : sourceAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>status}',
            Value : status,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>monthOfDeduction}',
            Value : monthOfDeduction,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>sourceSystem}',
            Value : sourceSystem,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>componentID}',
            Value : componentID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>AssignmentID}',
            Value : AssignmentID,
        },
         {
            $Type : 'UI.DataField',
            Label : '{i18n>originationDate}',
            Value : originationDate,
        },
         {
            $Type : 'UI.DataField',
            Label : '{i18n>approvedDate}',
            Value : approvedDate,
        },
         {
            $Type : 'UI.DataField',
            Label : '{i18n>downloadDate}',
            Value : downloadDate,
        },
         {
            $Type : 'UI.DataField',
            Label : '{i18n>approvedBy}',
            Value : approvedBy,
        },
         {
            $Type : 'UI.DataField',
            Label : '{i18n>invoiceNumber}',
            Value : invoiceNumber,
        },
         {
            $Type : 'UI.DataField',
            Label : '{i18n>AccountingDocument}',
            Value : AccountingDocument,
        },
         {
            $Type : 'UI.DataField',
            Label : '{i18n>LineNumber}',
            Value : LineNumber,
        }
    ]
);


annotate service.Deductions with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Assignment ID',
                Value : AssignmentID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FMNO',
                Value : fmno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Company Code',
                Value : companyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Source System',
                Value : sourceSystem,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Charge Description',
                Value : chargeDescription,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Invoice Number',
                Value : invoiceNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Component ID',
                Value : componentID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Source Amount',
                Value : sourceAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Source Currency',
                Value : sourceCurrency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Month of Deduction',
                Value : monthOfDeduction,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Origination Date',
                Value : originationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Approved Date',
                Value : approvedDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Approved By',
                Value : approvedBy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Download Date',
                Value : downloadDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Accounting Document',
                Value : AccountingDocument,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Line Number',
                Value : LineNumber,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);