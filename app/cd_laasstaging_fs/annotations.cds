using LaasDeductionsService as service from '../../srv/service';

annotate service.Deductions with @(
    UI.Identification     : [
        {
            $Type             : 'UI.DataFieldForAction',
            Action            : 'LaasDeductionsService.approve',
            Label             : '{@i18n>Approve}',
            InvocationGrouping: #ChangeSet
        },
        {
            $Type             : 'UI.DataFieldForAction',
            Action            : 'LaasDeductionsService.unapprove',
            Label             : '{@i18n>Unapprove}',
            InvocationGrouping: #ChangeSet
        },
        {
            $Type             : 'UI.DataFieldForAction',
            Action            : 'LaasDeductionsService.post',
            Label             : '{@i18n>Post}',
            InvocationGrouping: #ChangeSet
        }
    ],
    UI.HeaderInfo         : {
        TypeName      : '{@i18n>Deduction}',
        TypeNamePlural: '{@i18n>Deductions}',
        Title         : {Value: {$edmJson: {
            $Apply   : [
                {Path: 'name'},
                ' - ',
                {Path: 'fmno'}
            ],
            $Function: 'odata.concat'
        }}},
        Description   : {
            $Type: 'UI.DataField',
            Value: chargeDescription
        }
    },
    UI.SelectionFields    : [
        fmno,
        companyCode,
        status
    ],
    UI.DeleteHidden       : true,
    UI.PresentationVariant: {
        Text          : 'Default',
        Visualizations: ['@UI.LineItem'],
        SortOrder     : [{
            $Type     : 'Common.SortOrderType',
            Property  : fmno,
            Descending: false
        }]
    },
    UI.LineItem           : [
        {
            $Type : 'UI.DataFieldForAction',
            Action: 'LaasDeductionsService.approve',
            Label : '{@i18n>Approve}'
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action: 'LaasDeductionsService.unapprove',
            Label : '{@i18n>Unapprove}'
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action: 'LaasDeductionsService.post',
            Label : '{@i18n>Post}'
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>companyCode}',
            Value                : companyCode,
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>fmno}',
            Value                : fmno,
            ![@HTML5.CssDefaults]: {width: '6rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>name}',
            Value                : name,
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>sourceCurrency}',
            Value                : sourceCurrency,
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>sourceAmount}',
            Value                : sourceAmount,
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>status}',
            Value                : status,
            ![@HTML5.CssDefaults]: {width: '6rem'}
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>monthOfDeduction}',
            Value: monthOfDeduction,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>sourceSystem}',
            Value: sourceSystem,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>chargeDescription}',
            Value: chargeDescription,
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>componentID}',
            Value                : componentID,
            ![@HTML5.CssDefaults]: {width: '7rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>AssignmentID}',
            Value                : AssignmentID,
            ![@HTML5.CssDefaults]: {width: '7rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>originationDate}',
            Value                : originationDate,
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>approvedDate}',
            Value                : approvedDate,
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>downloadDate}',
            Value                : downloadDate,
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>approvedBy}',
            Value: approvedBy,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>invoiceNumber}',
            Value: invoiceNumber,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>AccountingDocument}',
            Value: AccountingDocument,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>LineNumber}',
            Value: LineNumber,
        }
    ]
);


annotate service.Deductions with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>companyCode}',
                Value: companyCode,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>fmno}',
                Value: fmno,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>name}',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>sourceCurrency}',
                Value: sourceCurrency,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>sourceAmount}',
                Value: sourceAmount,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>status}',
                Value: status,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>monthOfDeduction}',
                Value: monthOfDeduction,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>sourceSystem}',
                Value: sourceSystem,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>chargeDescription}',
                Value: chargeDescription,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>componentID}',
                Value: componentID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>AssignmentID}',
                Value: AssignmentID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>originationDate}',
                Value: originationDate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>approvedDate}',
                Value: approvedDate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>downloadDate}',
                Value: downloadDate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>approvedBy}',
                Value: approvedBy,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>invoiceNumber}',
                Value: invoiceNumber,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>AccountingDocument}',
                Value: AccountingDocument,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>LineNumber}',
                Value: LineNumber,
            }
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
