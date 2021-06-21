namespace ControlLogUI.Classes
{
    public struct User
    {
        public string name { get; set; }
        public string sname { get; set; }
        public string family { get; set; }
        public string role { get; set; }
        public string fullName { get; set; }

        public User(string _name, string _sname, string _family, string _role)
        {
            name = _name;
            sname = _sname;
            family = _family;
            role = _role;
            fullName = _family + " " + _name.Substring(0, 1) + "." + _sname.Substring(0, 1) + ".";
        }
    }
}