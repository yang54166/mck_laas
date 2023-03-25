const cds = require('@sap/cds');


class LaasDeductionsService extends cds.ApplicationService {
    async init() {
        const { Deductions } = this.entities
       
        this.on('approve', Deductions, async req => {
            await cds.update(Deductions, req.params[0].ID).set({status: "APPROVED"});
        });
    
    /*    this.on('approve', async (req) => {
            console.log(req.params);
            const id = req.params[0];
            console.log(id);
            const n = await UPDATE(Deductions).set({
            status: "APPROVED",
            approvedDate: new Date(),
            approvedBy: req.user.id }).where({ID: id}); 
            console.log(n);
        })  */

      
        // required
        await super.init()
    }
};

module.exports = LaasDeductionsService;