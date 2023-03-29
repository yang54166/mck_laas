sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'mck.laas.staging.cdlaasstagingfs.cdlaasstagingfs',
            componentId: 'DeductionsList',
            entitySet: 'Deductions'
        },
        CustomPageDefinitions
    );
});