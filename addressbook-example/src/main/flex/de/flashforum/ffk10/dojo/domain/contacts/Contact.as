package de.flashforum.ffk10.dojo.domain.contacts
{

    import flash.events.Event;
    import flash.events.EventDispatcher;

    public class Contact extends EventDispatcher
    {

        //---------------------------------------------------------------------
        //
        //          Properties
        //
        //---------------------------------------------------------------------

        //-----------------------------
        //          city
        //-----------------------------

        private var _city:String;

        public function get city():String
        {
            return _city;
        }

        [Bindable("cityChanged")]
        public function set city(value:String):void
        {
            if (_city == value)
            {
                return;
            }
            _city = value;
            dispatchEvent(new Event("cityChanged"));
        }

        //-----------------------------
        //          country
        //-----------------------------

        private var _country:String;

        public function get country():String
        {
            return _country;
        }

        [Bindable("countryChanged")]
        public function set country(value:String):void
        {
            if (_country == value)
            {
                return;
            }
            _country = value;
            dispatchEvent(new Event("countryChanged"));
        }

        //-----------------------------
        //          firstName
        //-----------------------------

        private var _firstName:String;

        public function get firstName():String
        {
            return _firstName;
        }

        [Bindable("firstNameChanged")]
        public function set firstName(value:String):void
        {
            if (_firstName == value)
            {
                return;
            }
            _firstName = value;
            dispatchEvent(new Event("firstNameChanged"));
        }

        //-----------------------------
        //          lastName
        //-----------------------------

        private var _lastName:String;

        public function get lastName():String
        {
            return _lastName;
        }

        [Bindable("lastNameChanged")]
        public function set lastName(value:String):void
        {
            if (_lastName == value)
            {
                return;
            }
            _lastName = value;
            dispatchEvent(new Event("lastNameChanged"));
        }

        //-----------------------------
        //          street
        //-----------------------------

        private var _street:String;

        public function get street():String
        {
            return _street;
        }

        [Bindable("streetChanged")]
        public function set street(value:String):void
        {
            if (_street == value)
            {
                return;
            }
            _street = value;
            dispatchEvent(new Event("streetChanged"));
        }

        //-----------------------------
        //          zipCode
        //-----------------------------

        private var _zipCode:String;

        public function get zipCode():String
        {
            return _zipCode;
        }

        [Bindable("zipCodeChanged")]
        public function set zipCode(value:String):void
        {
            if (_zipCode == value)
            {
                return;
            }
            _zipCode = value;
            dispatchEvent(new Event("zipCodeChanged"));
        }

        //---------------------------------------------------------------------
        //
        //          Overridden Methods
        //
        //---------------------------------------------------------------------

        /**
         * @inheritDoc
         */
        override public function toString():String
        {
            return "[object Contact firstName:" + _firstName + " lastName:" + _lastName + "]";
        }
    }
}