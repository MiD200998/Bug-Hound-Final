Create Table Report(
	report_id int unsigned primary key auto_increment,
    program int unsigned not null,
    Foreign Key (program) References Program(program_id),
    report_type varchar(30) not null,
    severity varchar(30) not null,
    problem_summary varchar(100) not null,
    problem varchar(100) not null,
    suggested_fix varchar(100) not null,
    reported_by int unsigned not null,
    Foreign Key (reported_by) References User(user_id),
    date date not null,
    reproducible varchar(5) not null,
    functional_area varchar(30),
    assigned_to int unsigned,
    Foreign Key (assigned_to) References User(user_id),
    comments varchar(100),
    status varchar(30),
    priority varchar(30),
    resolution varchar(30),
    resolution_version varchar(5),
    resolved_by int unsigned,
    Foreign Key (resolved_by) References User(user_id),
    resolved_date date,
    tested_by int unsigned,
    Foreign Key (tested_by) References User(user_id),
    test_date date,
    treat_as_deferred varchar(3)
)
ALTER TABLE Report ADD COLUMN attachment varchar(50);
SELECT * FROM Report;
DESCRIBE Report;