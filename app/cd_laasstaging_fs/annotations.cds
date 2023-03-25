using LaasDeductionsService as service from '../../srv/service';

annotate service.Deductions with @(
    UI.Identification : [
        { $Type : 'UI.DataFieldForAction', Action: 'LaasDeductionsService.approve', Label: 'Approve'},
        { $Type : 'UI.DataFieldForAction', Action: 'LaasDeductionsService.unapprove', Label: 'Unapprove'},
        { $Type : 'UI.DataFieldForAction', Action: 'LaasDeductionsService.post', Label: 'Post'}
    ],
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
            Label : 'Approved By',
            Value : approvedBy,
        },
         {
            $Type : 'UI.DataField',
            Label : 'Approve Date',
            Value : approvedDate,
        },
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
                Label : 'name',
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
                Label : 'sourceAmount',
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
