# Scripts to load tables

require 'pco_api'

api = PCO::API.new(basic_auth_token: 'token', basic_auth_secret: 'secret')
api.people.v2.people.get(order: 'last_name')

group_event =
  api.groups.v2.events.get
  api.groups.v2.groups.get
  api.groups.v2.group_types.get


*** Event DB - Group Event

group_event.each_with_index do |sub_group, index|
   if index == 1
     sub_group.each_with_index do |val, i|
       if i == 1
         val.each do |cuts|
           db = Event.new
           db.event_type =  cuts['type']
           db.event_id = cuts['id']
           db.event_attributes_canceled = cuts['attributes']['canceled']
           db.event_attributes_canceled_at = cuts['attributes']['canceled_at']
           db.event_attributes_ends_at = cuts['attributes']['ends_at']
           db.ea_location_type = cuts['attributes']['location_type_preference']
           db.ea_multi_day = cuts['attributes']['multi_day']
           db.ea_name = cuts['attributes']['name']
           db.ea_starts_at = cuts['attributes']['starts_at']
           db.ea_virtual_location = cuts['attributes']['virtual_location_url']

           if db.group_type = cuts['relationships']['group']['data'] != nil
           db.group_type = cuts['relationships']['group']['data']['type']
           db.group_id = cuts['relationships']['group']['data']['id']
           end

           if db.location_id = cuts['relationships']['location']['data'] != nil
           db.location_type = cuts['relationships']['location']['data']['type']
            db.location_id = cuts['relationships']['location']['data']['id']
           end

           if cuts['relationships']['attendance_submitter']['data'] != nil
            db.ras_type = cuts['relationships']['attendance_submitter']['data']['type']
            db.ras_id = cuts['relationships']['attendance_submitter']['data']['id']
           end
           db.save
         end
       end
     end
   end
 end

 ***** Group DB
 group_event.each_with_index do |sub_group, index|
   if index == 1
     sub_group.each_with_index do |val, i|
     if i == 1
       val.each do |cuts|
       db = Group.new
        db.type = cuts['type']
        db.group_id =  cuts['id']
        db.achived_at = cuts['attributes']['archived_at']
        db.contact_email =  cuts['attributes']['contact_email']
        db.description = cuts['attributes']['description']
        db.enrollment_open = cuts['attributes']['enrollment_open']
        db.enrollment_strategy = cuts['attributes']['enrollment_strategy']
        db.location_type_preference = cuts['attributes']['location_type_preference']
        db.memberships_count = cuts['attributes']['memberships_count']
        db.name = cuts['attributes']['name']
        db.public_church_center_web_url =  cuts['attributes']['public_church_center_web_url']
        db.schedule = cuts['attributes']['schedule']
        db.virual_location_url = cuts['attributes']['virtual_location_url']

        if cuts['relationships']['group_type']['data'] != nil
          db.group_type =  cuts['relationships']['group_type']['data']['type']
          db.group_type_id = cuts['relationships']['group_type']['data']['id']
        end
        if cuts['relationships']['location']['data'] != nil
          db.location_type = cuts['relationships']['location']['data']['type']
          db.location_id =  cuts['relationships']['location']['data']['id']
        end
        db.save
       end
      end
     end
   end
 end
