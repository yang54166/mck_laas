sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'cd_laasstaging_fs',
            componentId: 'DeductionsList',
            entitySet: 'Deductions'
        },
        CustomPageDefinitions
    );
});