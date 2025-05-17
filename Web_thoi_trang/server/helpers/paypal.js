const paypal = require('paypal-rest-sdk');

paypal.configure({
    mode: 'sandbox',
    client_id: 'ARjLVTA7ISnKwxVkzWEJoMmUl3AV4ZkgrYaMf988sSxXi1rwk5B5Vno_lszcWW-7hLrmYArWU6m5FwTY',
    client_secret: 'EC-wL_FHHvntaMLAIXOkHolVPdrgW63HpxME3vnpgZgTLHtWos1cyiK8dFqBSyc5GcpPcqzAiKaRJxZK',
});

module.exports = paypal;