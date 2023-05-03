const cds = require('@sap/cds');
const utils = require('./utils/utils');

class LaasDeductionsService extends cds.ApplicationService {
    async init() {
        const { Deductions } = this.entities
       
        this.on('approve', Deductions, async req => {
            const ID = req.params;
            await cds.update(Deductions, {ID}).set({status: "APPROVED", approvedBy: req.user.id, approvedDate: new Date(), downloadDate: null, monthOfDeduction: null});
        });
    
        this.on('unapprove', Deductions, async req => {
            const ID = req.params;
            await cds.update(Deductions, {ID}).set({status: "UNAPPROVED", approvedDate: null, downloadDate: null, monthOfDeduction: null});
        });

        this.on('post', Deductions, async req => {
            const ID = req.params;
            const d = new Date();
            await cds.update(Deductions, {ID}).set({status: "POSTED", downloadDate: new Date(), approvedDate: new Date(), monthOfDeduction: utils.convertMonthOfDeduction(d)});
        });
      
        // required
        await super.init()
    }
};

module.exports = LaasDeductionsService;