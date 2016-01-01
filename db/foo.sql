use foo;

create table foo (
  id int not null,
  foo text,
  primary key (id)
);


create table bar (
  foo_id int not null,
  bar text,
  primary key (foo_id),
  foreign key (foo_id) references foo(id)
);

insert into foo values (1, 'foo');
insert into bar values (1, 'bar');

commit;

select * from foo;

select * from bar;
