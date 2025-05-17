const cloudinary = require('cloudinary').v2;
const multer = require('multer');

cloudinary.config({
    cloud_name: 'duqkdsrmv',
    api_key: '572936582684349',
    api_secret: "a51XXd_slemSsRTpZoJa69viL2Q",
});

const storage = new multer.memoryStorage();

async function imageUploadUtil(file) {
    const result = await cloudinary.uploader.upload(file, {
        resource_type: 'auto'
    });

    return result;
}

const upload = multer({ storage });

module.exports = { upload, imageUploadUtil };