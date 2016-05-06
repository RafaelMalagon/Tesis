rails generate migration add_user_id_to_roles roles:references
rails generate migration add_roles_id_to_users rol:references
--Esta quedo bien
rails generate migration add_user_id_to_steps user:references

rails generate migration add_practice_id_to_steps practice:references
rails generate migration add_level_id_to_processareas level:references
rails generate migration add_processarea_id_to_goals processarea:references
rails generate migration add_goal_id_to_practices goal:references
rails generate migration add_company_id_to_projects company:references
--

ALTER TABLE `users` ADD FOREIGN KEY (`roles_id`) REFERENCES `roles` (`k_idRol`),
ALTER TABLE `roles`  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
http://stackoverflow.com/questions/13606469/cannot-change-column-used-in-a-foreign-key-constraint
Solcucion para la tabla roles-users