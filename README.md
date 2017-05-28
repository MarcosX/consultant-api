# Local setup

```
rails db:migrate
rails db:seed
rails server
```

Point to [localhost:3000/graphiql](http://localhost:3000/graphiql) to access the GraphiQL query interface

Or call the endpoint directly:
```
curl http://localhost:3000/graphql -XPOST -H 'content-type: application/json'  -d '{"query":"query {consultant(name:\"DK\") {current_project }}"}'
```

## TODO

- How to split types in different files
- Add more types (office, projects)
- Add more relationships (consultants and old projects, office and projects)

## Findings

- The GraphiQL interface requires some extra dependecies (this is an API project): [https://github.com/rmosolgo/graphiql-rails/issues/13](https://github.com/rmosolgo/graphiql-rails/issues/13)
