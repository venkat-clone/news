const { DataTypes } = require("sequelize");
module.exports = (sequlize, DataTypes) => {
    return sequlize.define('News', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        article_id: {
            type: DataTypes.STRING,
            allowNull: false,
            default: ''
        },
        category: {
            type: DataTypes.STRING,
            allowNull: false,
            default: ''
        },
        source_id: {
            type: DataTypes.STRING
        },
        // sourseID: {
        //     type: DataTypes.INTEGER,
        //     allowNull: false,
        //     defaultValue: 0
        // },
        description: {
            type: DataTypes.TEXT,
            allowNull: false,
            defaultValue: ''
        },
        content: {
            type: DataTypes.TEXT,
            allowNull: false,
            defaultValue: ''
        },
        title: {
            type: DataTypes.STRING,
            allowNull: false,
            defaultValue: ''
        },
        image: {
            type: DataTypes.STRING
        },
        link: {
            type: DataTypes.STRING
        },
        likes: {
            type: DataTypes.INTEGER,
            allowNull: false,
            defaultValue: 0
        },
        publishedAt: {
            type: DataTypes.DATE
        }

    }
    )
}