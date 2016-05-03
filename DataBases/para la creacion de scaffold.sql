rails g scaffold goal n_processArea:integer t_name:string t_description:string t_type:string --no- migration
rails g scaffold level t_name:string --no- migration
rails g scaffold practice t_name:string t_description:string n_goal:integer --no- migration
rails g scaffold processarea n_level:integer t_name:string t_description:string --no- migration
rails g scaffold project t_name:string --no- migration
rails g scaffold roles t_roleName:integer --no- migration
rails g scaffold steps t_description:string n_practice:integer n_yestStep:integer n_noStep:integer t_typeStep:binary n_rol:integer --no- migration
rails g scaffold company t_name:string t_logo:string t_slogan:string