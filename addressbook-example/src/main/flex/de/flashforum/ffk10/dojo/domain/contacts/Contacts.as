package de.flashforum.ffk10.dojo.domain.contacts
{

    import mx.collections.ArrayCollection;
    import mx.collections.IList;

    public class Contacts
    {

        //---------------------------------------------------------------------
        //
        //          Properties
        //
        //---------------------------------------------------------------------

        //-----------------------------
        //          contacts
        //-----------------------------

        private var _contacts:IList;

        public function get contacts():IList
        {
            return _contacts;
        }

        //---------------------------------------------------------------------
        //
        //          Constructor
        //
        //---------------------------------------------------------------------

        public function Contacts()
        {
            _contacts = new ArrayCollection();
        }
    }
}