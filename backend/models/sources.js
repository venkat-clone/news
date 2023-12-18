module.exports = (sequelize, DataTypes) => {
    return sequelize.define('Source', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        name: {
            type: DataTypes.STRING(100),
            allowNull: false,
            unique: true
        }
    });
}