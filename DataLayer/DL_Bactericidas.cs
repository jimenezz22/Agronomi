﻿using EntityLayer;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public class DL_Bactericidas
    {
        public List<Bactericidas> ToList(int usuario)
        {
            List<Bactericidas> BactericidasList = new List<Bactericidas>();

            using (SqlConnection objConnection = new SqlConnection(Connection.stringConnection))
            {
                try
                {
                    StringBuilder query = new StringBuilder();
                    query.AppendLine("SELECT idTerreno,NombreProducto,costoProducto,cantidadProducto,cantidadAplicada,costoPorAplicacion");
                    query.AppendLine("FROM tbl_Bactericidas");
                    query.AppendLine("WHERE idUsuario = @parametroIdUsuario");

                    SqlCommand cmd = new SqlCommand(query.ToString(), objConnection);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@parametroIdUsuario", usuario);

                    objConnection.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            BactericidasList.Add(new Bactericidas()
                            {
                                idTerreno = dr["idTerreno"].ToString(),
                                NombreProducto = dr["NombreProducto"].ToString(),
                                costoProducto = dr["costoProducto"].ToString(),
                                cantidadProducto = dr["cantidadProducto"].ToString(),
                                cantidadAplicada = dr["cantidadAplicada"].ToString().ToString(),
                                costoPorAplicacion = dr["costoPorAplicacion"].ToString()
                            });
                        }
                    }
                    objConnection.Close();
                }
                catch (Exception ex)
                {
                    BactericidasList = new List<Bactericidas>();
                }
                finally
                {
                    objConnection.Close();
                }
            }
            return BactericidasList;
        }

        public int InsertarDatosBactericidas(Bactericidas objBactericidas, out string message)
        {
            int result = 0;
            message = string.Empty;

            using (SqlConnection objConnection = new SqlConnection(Connection.stringConnection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_Insertar_Bactericidas", objConnection);

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@idTerreno", objBactericidas.idTerreno);
                    cmd.Parameters.AddWithValue("@NombreProducto",objBactericidas.NombreProducto);
                    cmd.Parameters.AddWithValue("@costoProducto", Convert.ToInt32(objBactericidas.costoProducto));
                    cmd.Parameters.AddWithValue("@cantidadProducto", Convert.ToInt32(objBactericidas.cantidadProducto));

                    // Convertir el valor de string a float
                    float cantidadAplicada;
                    if (float.TryParse(objBactericidas.cantidadAplicada, out cantidadAplicada))
                    {
                        cmd.Parameters.AddWithValue("@cantidadAplicada", cantidadAplicada);
                    }
                    else
                    {
                        // Manejar el caso en que la conversión falle
                        throw new FormatException("El valor de cantidadAplicada no es un número válido.");
                    }

                    cmd.Parameters.AddWithValue("@costoPorAplicacion", Convert.ToInt32(objBactericidas.costoPorAplicacion));
                    cmd.Parameters.AddWithValue("@idUsuario", Convert.ToInt32(objBactericidas.idUsuario));

                    cmd.Parameters.Add("result", SqlDbType.Int).Direction = ParameterDirection.Output;
                    cmd.Parameters.Add("message", SqlDbType.VarChar, 500).Direction = ParameterDirection.Output;

                    cmd.CommandType = CommandType.StoredProcedure;

                    objConnection.Open();

                    cmd.ExecuteNonQuery();

                    result = Convert.ToInt32(cmd.Parameters["result"].Value);
                    message = cmd.Parameters["message"].Value.ToString();

                    objConnection.Close();
                }
                catch (Exception ex)
                {
                    result = 0;
                }
                finally
                {
                    objConnection.Close();
                }
            }
            return result;
        }
    }
}
