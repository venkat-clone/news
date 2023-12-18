
const host = process.env.DB_HOST ?? 'localhost';
const user = process.env.DB_USER ?? 'root';
const password = process.env.DB_USER ?? '123456789';
const db = process.env.DB_NAME ?? 'Patient';
const dialect = process.env.DB_DIALECT ?? 'mysql';


module.exports = {
    HOST: host,
    USER: user,
    PASSWORD: password,
    DB: db,
    DIALECT: dialect,
}