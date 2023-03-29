sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mck/laas/staging/cdlaasstagingfs/cdlaasstagingfs/test/integration/FirstJourney',
		'mck/laas/staging/cdlaasstagingfs/cdlaasstagingfs/test/integration/pages/DeductionsList',
		'mck/laas/staging/cdlaasstagingfs/cdlaasstagingfs/test/integration/pages/DeductionsObjectPage'
    ],
    function(JourneyRunner, opaJourney, DeductionsList, DeductionsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mck/laas/staging/cdlaasstagingfs/cdlaasstagingfs') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheDeductionsList: DeductionsList,
					onTheDeductionsObjectPage: DeductionsObjectPage
                }
            },
            opaJourney.run
        );
    }
);