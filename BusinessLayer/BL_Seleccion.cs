﻿using DataLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class BL_Seleccion
    {
        private DL_Seleccion objDL_Seleccion = new DL_Seleccion();

        //This method allow to list the seleccion data
        public List<Seleccion> ToList(int usuario)
        {
            return objDL_Seleccion.ToList(usuario);
        }

        //This method allow to insert a seleccion data
        public int InsertSeleccionData(Seleccion objSeleccion, out string message)
        {   
            //Falta validación de datos

            return objDL_Seleccion.InsertSeleccionData(objSeleccion, out message);
        }
    }
}