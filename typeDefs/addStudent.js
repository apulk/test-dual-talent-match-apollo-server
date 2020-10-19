module.exports = `
    input StudentInput {
        name: String!
        email: String
        id: ID!
        gender: String
        class_id: ID
        birthdate: String
        city: String
        state: String
        country: String
        zipcode: String
        mobile: String
        school_id: ID
        street: String
        school: String
        file: String
        file_no: String
    }
    
    type Mutation {
        addStudent(input: StudentInput!): Student
    }
`