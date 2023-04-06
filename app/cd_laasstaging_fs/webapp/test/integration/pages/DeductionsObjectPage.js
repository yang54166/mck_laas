sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'cd_laasstaging_fs',
            componentId: 'DeductionsObjectPage',
            entitySet: 'Deductions'
        },
        CustomPageDefinitions
    );
});