
module.exports = (sequelize, DataTypes) => {
    return sequelize.define('User', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        uid: {
            type: DataTypes.STRING,
            allowNull: false,
            unique: true,

        },
        email: {
            type: DataTypes.STRING,
            allowNull: false,
            unique: true,
        },
        enableNotifications: {
            type: DataTypes.BOOLEAN,
            defaultValue: false,
            allowNull: false,
        },
        favourite: {
            type: DataTypes.STRING,
            allowNull: false,
            defaultValue: ''
        },
        favouriteInt: {
            type: DataTypes.INTEGER,
            allowNull: false,
            defaultValue: 0
        },
        isAdmin: {
            type: DataTypes.BOOLEAN,
            defaultValue: false,
            allowNull: false,
        },

    })
};