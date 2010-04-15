package de.flashforum.ffk10.dojo.mocks
{

    import de.flashforum.ffk10.dojo.domain.Addressbook;
    import de.flashforum.ffk10.dojo.domain.contacts.Contact;

    public class AddressbookFactory
    {

        public static function createAddressBook():Addressbook
        {
            var adressbook:Addressbook = new Addressbook();
            adressbook.contacts.contacts.addItem(createContact("Fred", "Flintstone"));
            adressbook.contacts.contacts.addItem(createContact("Barney", "Rubble"));
            return adressbook;
        }

        private static function createContact(firstName:String, lastName:String,
            city:String = "", zipCode:String = "", street:String = ""):Contact
        {
            var contact:Contact = new Contact();
            contact.firstName = firstName;
            contact.lastName = lastName;
            contact.city = city;
            contact.zipCode = zipCode;
            contact.street = street;
            return contact;
        }
    }
}