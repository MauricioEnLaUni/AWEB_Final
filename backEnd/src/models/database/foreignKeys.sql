-- Foreign Keys
ALTER TABLE `SEATS`
ADD FOREIGN KEY (`SH_id`)
REFERENCES `SHOWINGS`(`id`);

ALTER TABLE `SHOWINGS`
ADD FOREIGN KEY (`MV_id`)
REFERENCES `MOVIES`(`id`);

ALTER TABLE `SCORES`
ADD FOREIGN KEY (`MV_id`)
REFERENCES `MOVIES`(`id`);

ALTER TABLE `SCORES`
ADD FOREIGN KEY (`US_id`)
REFERENCES `USERS`(`id`);

ALTER TABLE `SALES`
ADD FOREIGN KEY (`US_id`)
REFERENCES `USERS`(`id`);

ALTER TABLE `SALES`
ADD FOREIGN KEY (`SH_id`)
REFERENCES `SHOWINGS`(`id`);

ALTER TABLE `SALES`
ADD FOREIGN KEY (`ST_id`)
REFERENCES `SEATS`(`id`);

ALTER TABLE `MOVIE_HAS_GENRE`
ADD FOREIGN KEY (`MV_id`)
REFERENCES `MOVIES`(`id`);

ALTER TABLE `MOVIE_HAS_GENRE`
ADD FOREIGN KEY (`GR_id`)
REFERENCES `GENRES`(`id`);

ALTER TABLE `PERSON_HAS_ROLE`
ADD FOREIGN KEY (`MV_id`)
REFERENCES `MOVIES`(`id`);

ALTER TABLE `PERSON_HAS_ROLE`
ADD FOREIGN KEY (`PP_id`)
REFERENCES `PEOPLE`(`id`);

ALTER TABLE `COMPANY_HAS_ROLE`
ADD FOREIGN KEY (`MV_id`)
REFERENCES `MOVIES`(`id`);

ALTER TABLE `COMPANY_HAS_ROLE`
ADD FOREIGN KEY (`CY_id`)
REFERENCES `COMPANIES`(`id`);

ALTER TABLE `seats`
ADD FOREIGN KEY (`US_id`)
REFERENCES `users`(`id`);