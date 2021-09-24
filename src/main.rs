#[macro_use]
extern crate diesel;
extern crate dotenv;

pub mod models;
pub mod schema;

use diesel::pg::PgConnection;
use diesel::prelude::*;
use dotenv::dotenv;
use std::env;

pub fn establish_connection() -> PgConnection {
    dotenv().ok();

    let database_url = env::var("DATABASE_URL").expect("DATABASE_URL must be set");
    PgConnection::establish(&database_url).expect(&format!("Error connecting to {}", database_url))
}

use self::models::*;

fn main() {
    use self::schema::users;

    let connection = establish_connection();
    let users = users::table.load::<User>(&connection).unwrap();
    let posts = Post::belonging_to(&users)
        .load::<Post>(&connection)
        .unwrap()
        .grouped_by(&users);
    let data = users.into_iter().zip(posts).collect::<Vec<_>>();

    for (user, posts) in data {
        println!("{}", user.full_name);
        println!("Email: {}", user.email);
        println!("");

        for post in posts {
            println!("\t Title: {}", post.title);
            println!("\t Body: {}", post.body);
            println!("");
        }
    }
}
