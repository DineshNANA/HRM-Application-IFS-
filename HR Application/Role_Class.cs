﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.Data;
using Oracle.DataAccess.Types;
using Oracle.DataAccess.Client;

namespace HR_Application
{
    class Role_Class
    {
         
        static string connstr = "Data Source=CMBTRNDB02/APP8SP2;User ID=ifsapp;Password=ifsapp";
        OracleConnection conn = new OracleConnection(connstr);

        public ArrayList Get_Role_Details()
        {
            conn.Open();
            ArrayList restl = new ArrayList();
            OracleCommand cmd = new OracleCommand("HR_GET_ROLE_DETAILS",conn);
            cmd.CommandType = CommandType.StoredProcedure;
            OracleParameter p1 = cmd.Parameters.Add("return_val", OracleDbType.RefCursor);
            p1.Direction = ParameterDirection.ReturnValue;
            OracleDataReader dr = cmd.ExecuteReader();

            while(dr.Read()){

                restl.Add(dr[1].ToString());

            }
            conn.Close();
            return restl;

        }
    }

    
}