const cds = require('@sap/cds');


class LaasDeductionsService extends cds.ApplicationService {
    async init() {
        const { Deductions } = this.entities
       
        this.on('approve', Deductions, async req => {
            await cds.update(Deductions, req.params[0].ID).set({status: "APPROVED"});
        });
    
        this.on('unapprove', Deductions, async req => {
            await cds.update(Deductions, req.params[0].ID).set({status: "UNAPPROVED"});
        });

        this.on('post', Deductions, async req => {
            await cds.update(Deductions, req.params[0].ID).set({status: "POSTED"});
        });
      
        // required
        await super.init()
    }
};

module.exports = LaasDeductionsService;