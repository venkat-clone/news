const createError = require('http-errors');
const { Sequelize } = require('sequelize');

const handleSequelizeError = (error, next, rethow = false) => {
    if (!(error instanceof Sequelize.ValidationError)) {
        if (rethow) throw error;
        else next(error);
    }


    switch (error.name) {
        case 'SequelizeValidationError':
            // Handle validation errors
            next(createError(400, ErrorArrayToString(error.errors)));
            break;
        case 'SequelizeUniqueConstraintError':
            // Handle unique constraint violations
            next(createError(400, ErrorArrayToString(error.errors)));
            break;
        case 'SequelizeForeignKeyConstraintError':
            // Handle foreign key constraint violations
            next(createError(400, error.message));
            break;
        case 'SequelizeExclusionConstraintError':
            // Handle exclusion constraint violations
            next(createError(400, ErrorArrayToString(error.errors)));
            break;
        case 'SequelizeTimeoutError':
            // Handle timeout errors
            next(createError(400, error.message));
            break;
        case 'SequelizeConnectionError':
            // Handle connection errors
            next(createError(400, error.message));
            break;
        // Add more cases for other Sequelize error names as needed
        default:
            // Handle other types of Sequelize errors
            next(createError(400, error.message));
            break;
    }

}
// // Usage example

function ErrorArrayToString(errors) {
    if (!Array.isArray(errors)) {
        return errors.message;
    }

    const errorMessage = errors.map(error => error.message).join(', ');

    return errorMessage;
}

// Usage example


module.exports = handleSequelizeError;