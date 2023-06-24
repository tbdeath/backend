const mongoose = require('mongoose');

const dataSchema = new mongoose.Schema({
    name: {
        required: true,
        type: String
    },
    SIN: {
        required: true,
        type: Number
    },
    share: {
        required: true,
        type: Number
    },
    WalletAddress:{
        required: true, 
        type: String
    }
})

module.exports = mongoose.model('Data', dataSchema)