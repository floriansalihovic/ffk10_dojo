package de.flashforum.ffk10.dojo.domain
{

    import de.flashforum.ffk10.dojo.domain.contacts.Contacts;

    import flash.events.EventDispatcher;

    public class Addressbook extends EventDispatcher
    {

        //---------------------------------------------------------------------
        //
        //          Properties
        //
        //---------------------------------------------------------------------

        //-----------------------------
        //          contacts
        //-----------------------------

        private var _contacts:Contacts;

        [Bindable("contactsChanged")]
        public function get contacts():Contacts
        {
            return _contacts;
        }

        //---------------------------------------------------------------------
        //
        //          Constructor
        //
        //---------------------------------------------------------------------

        public function Addressbook()
        {
            _contacts = new Contacts();
        }
    }
}
