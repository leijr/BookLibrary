create table if not exists users (
        user_id integer primary key autoincrement,
	user_name text not null,
	pwd text not null,
	department text,
	num text
);

create table if not exists  assets(
       asset_id text primary key,
       asset_name text not null,
       usage text not null
);

drop table if exists borrows;
create table  borrows(
       user_name text not null,
       asset_id text not null,
       date_borrow text not null,
       date_return text not null,
       primary key (user_name, asset_id)
);

drop table if exists histroys;
create table histroys(
       histroy_id integer primary key autoincrement,
       asset_id text not null,
       user_name text not null,
       date_borrow text not null,
       date_return text,
       status text not null default 'not return'
);
