
const axios = require('axios');
const { Op } = require("sequelize");
const db = require('../models');
const News = db.news;
const apiKey = process.env.NEWS_API_KEY || 'f5808133ba3b49d585ec923a38f600c8';
const { isToday, startOfDay, endOfDay } = require('date-fns');
module.exports = {
    updateNewsDb: async () => {
        const url = 'https://newsapi.org/v2/everything?country=in&apiKey=' + apiKey;
        console.log(url);
        const news = await axios.get(url);
        console.log(news.data);
        if (news.data.status === 'ok') {
            const articles = news.data.articles;
            for (let i = 0; i < articles.length; i++) {
                const article = articles[i];
                const news = await News.findOne({ where: { title: article.title } });
                if (!news) {
                    await News.create({
                        title: article.title,
                        description: article.description,
                        url: article.url,
                        urlToImage: article.urlToImage,
                        publishedAt: article.publishedAt,
                        content: article.content,
                        // author: article.author
                    });
                }
            }
        }
        return news.data;
    },
    feachNewsData: async () => {
        const url = 'https://newsdata.io/api/1/news?apikey=pub_33535285355801df6a022a3ab20c11f0cb5e6&country=in&language=en';
        console.log(url);
        const news = await axios.get(url);
        var newsList = [];
        if (news.data.status === 'success') {
            const articles = news.data.results;
            for (let i = 0; i < articles.length; i++) {
                const article = articles[i];
                const news = await News.findOne({ where: { article_id: article.article_id } });
                if (!news) {
                    const newNews = {
                        article_id: article.article_id,
                        title: article.title,
                        link: article.link,
                        source_id: article.source_id,
                        description: article?.description ?? '',
                        content: article.content,
                        image: article.image_url,
                        category: article.category[0],
                        publishedAt: article.pubDate
                    };

                    newsList.push(newNews);
                    try {
                        await News.create(newNews);
                    }
                    catch (e) {
                        console.log(newNews);
                        console.error(e);
                    }
                }
            }
        }
        return {
            new_list_added: newsList.length,
            newsList: newsList
        };
    },
    getNews: async (uid) => {
        const newses = await News.findAll(
            {
                include: [
                    {
                        model: db.user,
                        where: { uid: uid },
                        attributes: ["id", "uid"],
                        through: {
                            attributes: [],
                        },
                        required: false
                    },
                ],
            }
        );

        const newsWithSaved = newses.map(news => {
            return {
                ...news.dataValues,
                saved: news.Users.some((user) => user.uid === uid)
            }
        });
        return newsWithSaved;
    },
    getNewsById: async (id, uid) => {
        const news = await News.findByPk(id, {
            include: [
                {
                    model: db.user,
                    attributes: ["id", "uid"],
                    through: {
                        attributes: [],
                    },
                    required: false
                },
            ],
        });
        return {
            ...news.dataValues,
            saved: news.Users.some((user) => user.uid === uid)
        };
    },
    queryNews: async ({ sort_by, sort_type, published_from, published_to, categories, query }, uid) => {
        switch (sort_by) {
            case 'Alphabetically':
                sort_by = 'title';
                break;
            case 'Date':
                sort_by = 'publishedAt';
                break;
            default:
                sort_by = 'id';
                break;
        }
        console.log(query);

        const conditions = {
            [Op.or]: [
                {
                    title: {
                        [Op.like]: `%${query}%`
                    }
                },
                {
                    content: {
                        [Op.like]: `%${query}%`
                    }
                },
                {
                    description: {
                        [Op.like]: `%${query}%`
                    }
                }
            ]
        };

        if (categories && categories.length > 0) {
            conditions.category = {
                [Op.in]: categories
            };
        }
        if (published_from && published_to) {
            if (isToday(new Date(published_to))) {
                published_to = endOfDay(new Date(published_to));
            }

            conditions.publishedAt = {
                [Op.between]: [published_from, published_to]
            };
        }

        return await News.findAll({
            // include: [
            //     {
            //         model: db.user,
            //         where: { uid: uid },
            //         attributes: ["id", "uid"],
            //         through: {
            //             attributes: [],
            //         },
            //         required: false
            //     },
            // ],
            where: conditions,
            order: [
                [sort_by, sort_type === 'descending' ? 'DESC' : 'ASC'],
            ]
        });
    }


}