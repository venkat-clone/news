const dbConfig = require('../config/dbConfig');
const { Sequelize, DataTypes } = require('sequelize');
const user = require('./user');
const news = require('./news');
const sources = require('./sources');
const sequelize = new Sequelize(
    dbConfig.DB,
    dbConfig.USER,
    dbConfig.PASSWORD,
    {
        host: dbConfig.HOST,
        dialect: dbConfig.DIALECT,
        operatorsAliases: false,
    }
)


sequelize.authenticate().then(() => {
    console.log('Authentication successful');
}).catch(err => {
    console.log('Authentication failed with error: ' + err)
});


const db = {}
db.Sequelize = Sequelize
db.sequelize = sequelize

db.user = user(sequelize, DataTypes)
db.news = news(sequelize, DataTypes)

// db.sources = sources(sequelize, DataTypes)

// db.sources.hasMany(db.news, { as: "news" });
// db.sources.hasMany(db.news, { as: "news" });

db.news.belongsToMany(db.user, { through: "user_news" });
db.user.belongsToMany(db.news, { through: "user_news" });

const resetDb = false;

db.sequelize.sync({ force: resetDb })
    .then(async () => {
        console.log('Sync Compleated...!');
        if (resetDb) {
            console.log('Adding default data to db');
            await db.user.create({
                name: 'Venkatesh',
                picture: 'https://firebasestorage.googleapis.com/v0/b/news-8b76c.appspot.com/o/profile_images%2FR0LCW0dxUEXlHaXW7fq6oAZL1qc2%2F1700217994848?alt=media&token=96c1edda-3152-4dbd-94bd-79a83fc6b9c8',
                iss: 'https://securetoken.google.com/news-8b76c',
                aud: 'news-8b76c',
                auth_time: 1701597410,
                user_id: 'R0LCW0dxUEXlHaXW7fq6oAZL1qc2',
                sub: 'R0LCW0dxUEXlHaXW7fq6oAZL1qc2',
                iat: 1701597410,
                exp: 1701601010,
                email: 'lingampally.venkey@gmail.com',
                email_verified: true,
                firebase: {
                    identities: { 'google.com': [Array], email: [Array] },
                    sign_in_provider: 'google.com'
                },
                uid: 'R0LCW0dxUEXlHaXW7fq6oAZL1qc2'

            });

            await db.news.create(
                {
                    article_id: "81d589f7e40fc1907989cca8bcf4b7b9",
                    title: "Telangana Congress’s ‘Couple Goals’ Met: Uttam Kumar Reddy, Wife Padmavathi Inch Towards Victory",
                    link: "https://www.news18.com/elections/telangana-congresss-couple-goals-met-uttam-kumar-reddy-wife-padmavathi-inch-towards-victory-8689282.html",
                    source_id: "news18",
                    description: "Telangana election results 2023: There were rumours that the former TPCC president Uttam Kumar Reddy had threatened to leave the Congress and join the Bharat Rashtra Samithi (BRS) if his wife Padmavathi was not given a ticket",
                    content: "In a positive trend for the Congress in Telangana, Nalgonda MP N Uttam Kumar Reddy and his wife N Padmavathi Reddy are leading from their respective seats – Huzurnagar and Kodad – at 12:40 pm. ALSO READ | Telangana Election Results 2023 LIVE Updates HERE The Telangana Congress had violated its Udaipur Declaration to award multiple tickets to the same family. Uttam Kumar Reddy was one of them. There were rumours that the former TPCC president had threatened to leave the Congress and join the Bharat Rashtra Samithi (BRS) if his wife was not given a ticket. Has their gamble paid off? One can only be sure at the end of the day, however, the couple is leading from their seats right now. Uttam is leading with 60,345 votes, leaving Saidi Reddy Shanampudi of BRS behind by more than 23,000 votes and Pillutla Raghu of All India Forward Bloc by more than 55, 000 votes. Given the large vote margins, Uttam might emerge as the winner. In Kodad, Nalamada Padmavathi Reddy has bagged 11,413 votes. Bollam Malaiah Yadav from BRS is trailing at second spot with 7,845 votes and Pillutla Srinivas from the Bahujan Samaj Party (BSP) is at third position with 342 votes. In an interview with News18, Uttam Kumar Reddy had predicted that the Congress would win more than 70 seats. He was an MLA from Kodad between 1999 and 2009, and from Huzurnagar between 2009 and 2019. This former Air Force pilot was also one of the frontrunners from the CM seat. On several occasions, he had challenged TPCC president Revanth Reddy, but everyone had buried the hatchet as elections approached. ALSO READ | Telangana Polls: Congress Will Win 70+ Seats, No CM Face Before Polls: Uttam Kumar Reddy | Exclusive When asked about the reasons the voters are dissatisfied with the BRS, he had said: “Major sections feel that they have been cheated. Before 2014 elections, KCR said that he would make a Dalit the Chief Minister. The major SC community, the Madigas, constitute 12% of the population. There is not a single minister in his cabinet from that community. He promised to give three acre of agriculture land to every Dalit and tribal family. None of these promises has been fulfilled. He promised to give 2-BHK houses to every poor eligible family. They have just given some token numbers.” Padmavathi was the first woman contestant from Kodad and had won in 2014.",
                    image: "https://images.news18.com/ibnlive/uploads/2023/12/telangana-couple-uttam-kumar-reddy-2023-12-7a40a8a136e3080de979f4bb030447d5-3x2.jpg",
                    category: "top",
                    publishedAt: "2023-12-03 09:25:58"
                })
        }
    })


module.exports = db

