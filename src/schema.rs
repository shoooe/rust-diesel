table! {
    posts (id) {
        id -> Int4,
        title -> Varchar,
        body -> Text,
        author_id -> Int4,
    }
}

table! {
    users (id) {
        id -> Int4,
        full_name -> Varchar,
        email -> Text,
    }
}

joinable!(posts -> users (author_id));

allow_tables_to_appear_in_same_query!(
    posts,
    users,
);
