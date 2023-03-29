const cds = require('@sap/cds');


class LaasDeductionsService extends cds.ApplicationService {
    async init() {
        const { Deductions } = this.entities
       
        this.on('approve', Deductions, async req => {
            const ID = req.params;
            await cds.update(Deductions, {ID}).set({status: "APPROVED", approvedBy: req.user.id, approvedDate: new Date()});
        });
    
        this.on('unapprove', Deductions, async req => {
            const ID = req.params;
            await cds.update(Deductions, {ID}).set({status: "UNAPPROVED"});
        });

        this.on('post', Deductions, async req => {
            const ID = req.params;
            await cds.update(Deductions, {ID}).set({status: "POSTED"});
        });
      
        // required
        await super.init()
    }
};

module.exports = LaasDeductionsService;