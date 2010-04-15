package de.flashforum.ffk10.dojo.components
{

    import de.flashforum.ffk10.dojo.domain.contacts.Contacts;
    import de.flashforum.ffk10.dojo.skins.ContactsViewSkin;

    import flash.events.Event;

    import spark.components.List;
    import spark.components.Panel;
    import spark.components.RadioButton;
    import spark.components.RadioButtonGroup;
    import spark.layouts.HorizontalLayout;

    public class ContactsView extends Panel
    {

        //---------------------------------------------------------------------
        //
        //          Children And Skin Parts
        //
        //---------------------------------------------------------------------

        //-----------------------------
        //          contactsList
        //-----------------------------

        [SkinPart(required="true")]
        public var contactsList:List;

        //-----------------------------
        //          contactsList
        //-----------------------------

        [SkinPart(required="true")]
        public var contactView:ContactView;

        //-----------------------------
        //          minimizeButton
        //-----------------------------

        public var minimizeButton:RadioButton;

        //-----------------------------
        //          normalButton
        //-----------------------------

        public var normalButton:RadioButton;

        //-----------------------------
        //          maximizeButton
        //-----------------------------

        public var maximizeButton:RadioButton;

        //-----------------------------
        //          contactsList
        //-----------------------------

        [SkinPart(required="true")]
        public var radioButtonGroup:RadioButtonGroup;

        //---------------------------------------------------------------------
        //
        //          Properties
        //
        //---------------------------------------------------------------------

        //-----------------------------
        //          contacts
        //-----------------------------

        private var _contacts:Contacts;

        private var _contactsChanged:Boolean;

        public function get contacts():Contacts
        {
            return _contacts;
        }

        [Bindable("contactsChanged")]
        public function set contacts(value:Contacts):void
        {
            if (_contacts == value)
            {
                return;
            }
            _contacts = value;
            _contactsChanged = true;
            invalidateProperties();
            dispatchEvent(new Event("contactsChanged"));
        }

        //---------------------------------------------------------------------
        //
        //          Constructor
        //
        //---------------------------------------------------------------------

        public function ContactsView()
        {
            super();
            setStyle("skinClass", ContactsViewSkin);

            controlBarVisible = true;
        }

        //---------------------------------------------------------------------
        //
        //          Event Handler
        //
        //---------------------------------------------------------------------

        private function handleRadioButtonChange(e:Event):void
        {
            invalidateProperties();
            invalidateSkinState();
        }

        //---------------------------------------------------------------------
        //
        //          Overridden Methods
        //
        //---------------------------------------------------------------------

        override protected function partAdded(partName:String, instance:Object):void
        {
            super.partAdded(partName, instance);

            if (instance == contentGroup)
            {
                contentGroup.layout = new HorizontalLayout();
            }

            if (instance == radioButtonGroup)
            {
                minimizeButton.group = radioButtonGroup;
                normalButton.group = radioButtonGroup;
                maximizeButton.group = radioButtonGroup;

                radioButtonGroup.addEventListener(Event.CHANGE, handleRadioButtonChange);
            }
        }

        override protected function createChildren():void
        {
            var arr:Array = [];
            minimizeButton = new RadioButton();
            minimizeButton.label = "minimized";
            arr.push(minimizeButton);
            normalButton = new RadioButton();
            normalButton.label = "normal";
            arr.push(normalButton);
            maximizeButton = new RadioButton();
            maximizeButton.label = "maximized";
            arr.push(maximizeButton);
            controlBarContent = arr;
        }


        override protected function commitProperties():void
        {
            super.commitProperties();
            if (_contactsChanged)
            {
                _contactsChanged = false;

                contactsList.dataProvider = _contacts.contacts;
            }
        }

        override protected function getCurrentSkinState():String
        {
            var skinState:String = super.getCurrentSkinState();
            skinState = radioButtonGroup.selectedValue as String;
            return skinState;
        }
    }
}