﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Peliculas.Bussines.Entity
{
   public class EntUsuario
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Correo { get; set; }
        public string Password { get; set; }
    }
}
