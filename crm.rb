require_relative './contact'

class CRM

attr_accessor :add_new_contact
attr_reader :name

  def initialize(name)
    @name = name
  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Search by attribute"
    puts "[6] Exit"
    puts "Enter a number:  "
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit
  end
end

  def add_new_contact
    puts "Enter First Name: "
    first_name = gets.chomp

    puts "Enter Last Name: "
    last_name = gets.chomp

    puts "Enter Email Address"
    email = gets.chomp

    p "Enter a Note:"
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    puts "We need to find the contact you want to modify."
      contact = search_by_attribute
        puts "[1] Modify first name"
        puts "[2] Modify last name"
        puts "[3] Modify email"
        puts "[4] Modify note"
        puts "[5] Exit"
        puts "Enter a number:  "
        value = gets.chomp.to_i
        case value
          when 1
            "What would you like to change the first name to?"
            first_name = gets.chomp
            contact[0].first_name = first_name_new
            "You have changed this contact's name to #{first_name}."
        when 2
          "What would you like to change the last name to?"
          last_name = gets.chomp
          contact[0].last_name = last_name_new
          "You have changed this contact's name to #{last_name}."
        when 3
          "What would you like to change the email to?"
          email = gets.chomp
          contact[0].email = email_new
          "You have changed this contact's email to #{email}."
        when 4
          "What would you like to change the note to?"
          note = gets.chomp
          contact[0].note = note_new
          "You have changed this contact's note to #{note}."
        when 5 then exit
    else
      return "Oops, that didn't work! Try entering a different number."
    end
  end


  def delete_contact
    puts "We need to find the contact you want to delete."
    contact_to_remove = search_by_attribute
    # contact_to_remove.delete
    Contact.delete
    # self.delete
  end

  def display_all_contacts
    #return the entire array (call on a class Contact)
    input = Contact.all
    input.each do |list|
    puts "ID: #{list.id}"
    puts "First name: #{list.first_name}"
    puts "Last name: #{list.last_name}"
    puts "Email: #{list.email}"
    puts "Note: #{list.note}"

    end
  end

   def search_by_attribute
       puts "Select the contact field you wish to search by."
       puts "[1] Search by first name"
       puts "[2] Search by last name"
       puts "[3] Search by email"
       puts "[4] Search by note"
       puts "[5] Exit"
       puts "Enter a number:  "
       contact = gets.chomp.to_i
       case contact
       when 1 then
           puts "Enter contact's first name."
           value = gets.chomp
           return Contact.find_by(:first_name, value)
         when 2 then
           "Enter contact's last name."
           last_name = gets.chomp
           return Contact.find_by("last_name", last_name)
         when 3 then
           "Enter contact's email."
           email = gets.chomp
           return Contact.find_by("email", email)
         when 4 then
           "Enter the note for the contact."
           note = gets.chomp
           return Contact.find_by("note", note)
         when 5 then exit
     else
       return "Oops, that didn't work! Try entering a different number."
       contact = []
     end
   end
 end
