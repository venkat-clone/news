const { sign, verify } = require('jsonwebtoken');
const { InternalServerError } = require('http-errors')

const DOMAIN = process.env.DOMAIN ?? 'localhost'
const ADMIN_DEFAULT_KEY = 'admin-default-key'
const ADMIN_REFRESH_TOKEN_KEY = process.env.REFRESH_TOKEN_KEY ?? ADMIN_DEFAULT_KEY
const ADMIN_ACCESS_TOKEN_KEY = process.env.ACCESS_TOKEN_KEY ?? ADMIN_DEFAULT_KEY

const DEFAULT_KEY = 'default-key'
const REFRESH_TOKEN_KEY = process.env.REFRESH_TOKEN_KEY ?? DEFAULT_KEY
const ACCESS_TOKEN_KEY = process.env.ACCESS_TOKEN_KEY ?? DEFAULT_KEY

if (ADMIN_REFRESH_TOKEN_KEY == ADMIN_DEFAULT_KEY) {
    console.error('Please provide a secured refresh token curently using the ' + ADMIN_REFRESH_TOKEN_KEY +
        '\n you can provide the refresh token with everonment varable \'REFRESH_TOKEN_KEY\'')
}
if (ADMIN_ACCESS_TOKEN_KEY == ADMIN_DEFAULT_KEY) {
    console.error('Please provide a secured access token curently using the ' + ADMIN_ACCESS_TOKEN_KEY +
        '\n you can provide the refresh token with everonment varable \'ACCESS_TOKEN_KEY\'')
}

if (REFRESH_TOKEN_KEY == DEFAULT_KEY) {
    console.error('Please provide a secured refresh token curently using the ' + REFRESH_TOKEN_KEY +
        '\n you can provide the refresh token with everonment varable \'REFRESH_TOKEN_KEY\'')
}
if (ACCESS_TOKEN_KEY == DEFAULT_KEY) {
    console.error('Please provide a secured access token curently using the ' + ACCESS_TOKEN_KEY +
        '\n you can provide the refresh token with everonment varable \'ACCESS_TOKEN_KEY\'')
}


const generateAdminAccessToken = async (userId) => {
    const options = {
        expiresIn: '3d',
        audience: userId,
        issuer: DOMAIN
    }
    return await sign({}, ADMIN_ACCESS_TOKEN_KEY, options);
}
const generateAccessToken = async (userId) => {
    const options = {
        expiresIn: '3d',
        audience: userId,
        issuer: DOMAIN
    }
    return await sign({}, ACCESS_TOKEN_KEY, options);
}

const generateAdminRefreshToken = async (userId) => {
    const options = {
        expiresIn: '12d',
        audience: userId,
        issuer: DOMAIN
    }
    return await sign({}, ADMIN_REFRESH_TOKEN_KEY, options);
}
const generateRefreshToken = async (userId) => {
    const options = {
        expiresIn: '12d',
        audience: userId,
        issuer: DOMAIN
    }
    return await sign({}, REFRESH_TOKEN_KEY, options);
}
const verfiyAdminRefreshToken = async (refreshToken) => {
    console.log([refreshToken, ADMIN_ACCESS_TOKEN_KEY])
    const payload = verify(refreshToken, ADMIN_ACCESS_TOKEN_KEY, {}, (err, payload) => {
        // if (err) throw err;
        return payload
    });
    return payload?.aud ?? ''

}

const verfiyRefreshToken = async (refreshToken) => {
    console.log([refreshToken, ACCESS_TOKEN_KEY])
    const payload = verify(refreshToken, ACCESS_TOKEN_KEY, {}, (err, payload) => {
        // if (err) throw err;
        return payload
    });
    return payload?.aud ?? ''

}


// uncomment if you want to use the otp endpoint
// const generateOTPToken = async (userId) => {
//     const options = {
//         expiresIn: '30s',
//         audience: userId,
//         issuer: DOMAIN
//     }
//     return jwt.sign({}, REFRESH_TOKEN_KEY, options);
// }







module.exports = {
    admin: {
        generateAccessToken: generateAdminAccessToken,
        generateRefreshToken: generateAdminRefreshToken,
        verfiyRefreshToken: verfiyAdminRefreshToken
    },
    patientHelper: {
        generateAccessToken,
        generateRefreshToken,
        verfiyRefreshToken
    }
}