using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Graduation_Student_Party.Register_Page
{
    public class clientvalidate
    {
        //first name 
        [Required]
        public string Fname { get; set; }
        // middle name 
        [Required]
        public string Mname { get; set; }
        //last name 
        [Required]
        public string Lname { get; set; }
        //student number 
        [Required]
        public int Studentnum { get; set; }
        //email
        [Required]
        [RegularExpression(".+\\@.+\\..", ErrorMessage= "plz enter valid email ")]
        public string Email { get; set; }
    }
}