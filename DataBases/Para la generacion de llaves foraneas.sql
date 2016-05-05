rails generate migration add_user_id_to_roles roles:references
rails generate migration add_roles_id_to_users rol:references
--Esta quedo bien
rails generate migration add_user_id_to_steps user:references

rails generate migration add_practice_id_to_steps practice:references
--