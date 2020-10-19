module.exports =  `
type Student {
  name: String
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
  school: String
  class: String
  street: String
  file: String
  file_no: String
}
type Query {
  students: [Student]
  getStudentById(id: ID): [Student]
}

`; 