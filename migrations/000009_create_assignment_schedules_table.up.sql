CREATE TABLE "assigment_schedules"(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "assignment_id" INTEGER NOT NULL,
    "group_id" INTEGER NOT NULL,
    "open_at" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "close_at" TIME(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE "assigment_schedules"
ADD CONSTRAINT "assigment_schedules_assignment_id_foreign" FOREIGN KEY("assignment_id") REFERENCES "assignments"("id") ON DELETE CASCADE;
ALTER TABLE "assigment_schedules"
ADD CONSTRAINT "assigment_schedules_group_id_foreign" FOREIGN KEY("group_id") REFERENCES "groups"("id") ON DELETE CASCADE;