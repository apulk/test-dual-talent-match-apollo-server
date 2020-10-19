module.exports =  `
type School {
  name: String
  id: ID
}
type Class {
    name: String!
    id: ID!
}
type Query {
  schools: [School]
  classes: [Class]
}

`; 