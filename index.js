const { ApolloServer, gql } = require('apollo-server-express')
const express = require('express')
const bodyParser = require('body-parser')
// require('./db')
require('dotenv').config()
const crypto = require('crypto')
const path = require('path');
 
const { loadFilesSync } = require('@graphql-tools/load-files');
const { mergeTypeDefs, mergeResolvers } = require('@graphql-tools/merge');
const { clone } = require('lodash')

const typeDefs = mergeTypeDefs(loadFilesSync(path.join(__dirname, './typeDefs')));
const resolvers = mergeResolvers(loadFilesSync(path.join(__dirname, './resolvers')));
 
const server = new ApolloServer({ 
  typeDefs, 
  resolvers,
  context: ({ req, res }) => ({ req, res })
});
const PORT = process.env.PORT

const app = express()
app.use(bodyParser.json())
server.applyMiddleware({app})
 
// Launch the server
app.listen({port: PORT},(port)=>
  console.log(`🚀  Server ready at http://localhost:${PORT}`)
)

 
 