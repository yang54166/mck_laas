sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'mck.laas.staging.cdlaasstagingfs.cdlaasstagingfs',
            componentId: 'DeductionsObjectPage',
            entitySet: 'Deductions'
        },
        CustomPageDefinitions
    );
});