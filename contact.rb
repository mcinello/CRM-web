gem 'activerecord', '=4.2.10'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name,  as: :string
  field :email,      as: :string
  field :note,       as: :text

  def full_name
    "#{first_name} #{last_name} (#{email})"
  end

end

Contact.auto_upgrade!

  # @@contacts = []
  # @@id = 1
  #
  # # This method should initialize the contact's attributes
  # def initialize(first_name, last_name, email, note = 'N/A')
  #   @first_name = first_name
  #   @last_name = last_name
  #   @email = email
      # @note = note
  #   @id = @@id
  #   @@id += 1
  # end
  #
  #
  #
  # # This method should call the initializer,
  # # store the newly created contact, and then return it
  # def self.create(first_name, last_name, email, note='N/A')
  #   new_contact = Contact.new(first_name, last_name, email, note)
  #   @@contacts << new_contact
  #   return new_contact
  # end
  #
  # # This method should return all of the existing contacts
  # def self.all
  #   @@contacts
  # end
  #
  # # This method should accept an id as an argument
  # # and return the contact who has that id
  # def self.find(id_num)
  #   found_contact = false
  #   @@contacts.each do |contact|
  #     if contact.id_number == id_num
  #       puts contact.all_info
  #       found_contact = true
  #       return contact
  #     end
  #   end
  #   if !found_contact
  #     puts "Contact not found."
  #   end
  # end
  #
  #
  # # This method should allow you to specify
  # # 1. which of the contact's attributes you want to update
  # # 2. the new value for that attribute
  # # and then make the appropriate change to the contact
  # def update(attribute, new_value)
  #   if attribute == 1
  #     @first_name = new_value
  #   elsif attribute == 2
  #     @last_name = new_value
  #   elsif attribute == 3
  #     @email = new_value
  #   elsif attribute == 4
  #     @note = new_value
  #   end
  # end
  #
  # # This method should work similarly to the find method above
  # # but it should allow you to search for a contact using attributes other than id
  # # by specifying both the name of the attribute and the value
  # # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  # def self.find_by(search_query)
  #   found_contact = false
  #   @@contacts.each do |contact|
  #     if contact.first_name.casecmp(search_query) == 0 || contact.last_name.casecmp(search_query) == 0 || contact.email.casecmp(search_query) == 0
  #       puts contact.all_info
  #       found_contact = true
  #       return contact
  #     end
  #   end
  #   if !found_contact
  #     puts "Contact not found."
  #   end
  # end
  #
  # # This method should delete all of the contacts
  # def self.delete_all
  #   @@contacts.clear
  # end
  #
  # def all_info
  #   return "Name: #{full_name} \nEmail: #{@email} \nNotes: #{@notes}"
  # end
  #
  # # This method should delete the contact
  # # HINT: Check the Array class docs for built-in methods that might be useful here
  #
  # def delete
  #   @@contacts.delete(self)
  # end
  # # Feel free to add other methods here, if you need them.



# michelle_cinello = Contact.create('Michelle', 'Cinello', 'm.cinello@gmail.com')
# random_person = Contact.create('Random', 'Person', 'random.person@gmail.com')

# puts Contact.find(1)
# puts Contact.find(2)
# puts Contact.find(3)
#
# # puts Contact.find_by("Michelle")
# puts Contact.find_by(nil, "Person")
# # puts Contact.find_by("Mimo")
#
# random_person.update("Random", "Nick")
#
# puts random_person.all_info
# #
# # random_person.delete
#
# puts Contact.all.inspect
