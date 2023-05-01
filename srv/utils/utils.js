const monthNames = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"];

const utils = {
    convertMonthOfDeduction: (d) => {
        const yy = d.getUTCFullYear().toString();
        const monthName = monthNames[d.getUTCMonth()];
        return monthName + '-' + yy;
     
    },

};

module.exports = utils;