# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_04_223335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.string "a_type"
    t.string "a_id"
    t.string "atended"
    t.string "role"
    t.string "person_type"
    t.string "person_id"
    t.string "event_type"
    t.string "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "event_type"
    t.string "event_id"
    t.string "event_attributes_canceled"
    t.string "event_attributes_canceled_at"
    t.string "event_attributes_ends_at"
    t.string "ea_location_type"
    t.string "ea_multi_day"
    t.string "ea_name"
    t.string "ea_starts_at"
    t.string "ea_virtual_location"
    t.string "ras_type"
    t.string "ras_id"
    t.string "rl_type"
    t.string "rl_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "group_type"
    t.string "group_id"
    t.string "location_type"
    t.string "location_id"
  end

  create_table "group_people", force: :cascade do |t|
    t.string "gp_type"
    t.string "gp_id"
    t.string "first_name"
    t.string "last_name"
    t.string "permission"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "group_types", force: :cascade do |t|
    t.string "grouptype_type"
    t.string "grouptype_id"
    t.string "church_center_visable"
    t.string "church_center_map_visable"
    t.string "color"
    t.string "default_group_settings"
    t.string "name"
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "type"
    t.string "group_id"
    t.string "achived_at"
    t.string "contact_email"
    t.string "description"
    t.string "enrollment_open"
    t.string "enrollment_strategy"
    t.string "location_type_preference"
    t.string "memberships_count"
    t.string "name"
    t.string "public_church_center_web_url"
    t.string "schedule"
    t.string "virual_location_url"
    t.string "group_type"
    t.string "group_type_id"
    t.string "location_type"
    t.string "location_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_type"
    t.string "location_id"
    t.string "display_preference"
    t.string "full_formatted_address"
    t.string "latitude"
    t.string "longitude"
    t.string "name"
    t.string "radius"
    t.string "strategy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.string "membership_type"
    t.string "membership_id"
    t.string "account_center_identifier"
    t.string "avatar_url"
    t.string "color_identifier"
    t.string "email_address"
    t.string "first_name"
    t.string "joined_at"
    t.string "last_name"
    t.string "phone_number"
    t.string "role"
    t.string "group_type"
    t.string "group_id"
    t.string "person_type"
    t.string "person_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "organ_type"
    t.string "organ_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "person_id"
    t.string "name_prefix"
    t.string "given_name"
    t.string "first_name"
    t.string "nick_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "name_suffix"
    t.string "birth_date"
    t.string "anniversary"
    t.string "gender"
    t.string "grade"
    t.string "school"
    t.string "medical_notes"
    t.string "child"
    t.string "marital_notes"
    t.string "status"
    t.string "membership"
    t.string "inactive_reason"
    t.string "inactive_date"
    t.string "campus_name"
    t.string "group_user"
    t.string "home_address_street_line_1"
    t.string "home_address_street_line_2"
    t.string "home_address_city"
    t.string "home_address_state"
    t.string "home_address_zip_code"
    t.string "work_address_street_line_1"
    t.string "work_address_street_line_2"
    t.string "work_address_city"
    t.string "work_address_state"
    t.string "work_address_zip_code"
    t.string "other_address_street_line_1"
    t.string "other_address_street_line_2"
    t.string "other_address_city"
    t.string "other_address_state"
    t.string "other_address_zip_code"
    t.string "mobile_phone_number"
    t.string "home_phone_number"
    t.string "work_phone_number"
    t.string "pager_phone_number"
    t.string "fax_phone_number"
    t.string "skype_phone_number"
    t.string "other_phone_number"
    t.string "home_email"
    t.string "work_email"
    t.string "other_email"
    t.string "household_id"
    t.string "household_name"
    t.string "household_primary_contact"
    t.string "baptism_date"
    t.string "pastor_baptizer"
    t.string "baptism_referral"
    t.string "baptism_attended_class"
    t.string "baptism_campus"
    t.string "first_time_guests"
    t.string "first_time_kids_checkin"
    t.string "first_time_gathering_time"
    t.string "first_time_how_did_you_hear"
    t.string "first_time_meet_the_staff"
    t.string "fontana_launch_commitment"
    t.string "fontana_email_list"
    t.string "first_responder_certification"
    t.string "i_believe_ministry"
    t.string "i_believe_date"
    t.string "integration_meet_the_family"
    t.string "integration_next_step_2"
    t.string "integration_next_step_3"
    t.string "ministry_young_adults"
    t.string "ministry_arts_academy"
    t.string "ministry_senior_adult"
    t.string "missions_teams_india"
    t.string "missions_teams_kenya"
    t.string "missions_teams_mexico"
    t.string "missions_teams_rainbow_acres"
    t.string "prayer_team_6am"
    t.string "prayer_team_india"
    t.string "prayer_team_africa"
    t.string "prayer_team_easter"
    t.string "spirtual_formation_community_host_groups"
    t.string "spritual_formation_participant"
    t.string "spirtual_formation_rooted_participant"
    t.string "spritual_formation_rooted_facliltator"
    t.string "spirtual_formation_story_facliltator"
    t.string "spirtual_formation_story_participant"
    t.string "spirtual_formation_the_story"
    t.string "spirtual_formation_women_study"
    t.string "volunteer_care_ministry"
    t.string "volunteer_guest_experience"
    t.string "launch_2020_commit_to_pray"
    t.string "launch_2020_commit_to_generosity"
    t.string "covid_19_made_contact"
    t.string "covid_19_left_voicemail"
    t.string "covid_19_status_during_pandemic"
    t.string "covid_19_follow_up_needed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "res_type"
    t.string "res_id"
    t.string "description"
    t.string "last_updated"
    t.string "name"
    t.string "type"
    t.string "visibility"
    t.string "relationship_type"
    t.string "relationship_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tag_groups", force: :cascade do |t|
    t.string "taggroup_type"
    t.string "taggroup_id"
    t.string "name"
    t.string "position"
    t.string "display_publicly"
    t.string "multiple_options_enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_type"
    t.string "tag_id"
    t.string "name"
    t.string "postion"
    t.string "tag_group_type"
    t.string "tag_group_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
