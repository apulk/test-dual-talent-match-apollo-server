
module.exports =  `
  type User {
    name: String
    email: String!
    pass: String!
    token: String
    id: ID
    student_id: ID
    type: String
  }
  type Query {
    user: User!
  }
  type Mutation {
    login(email: String!,pass:String!):User!
  }
`; 