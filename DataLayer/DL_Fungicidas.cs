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
    public class DL_Fungicidas
    {
        public List<Fungicidas> ToList(int usuario)
        {
            List<Fungicidas> FungicidasList = new List<Fungicidas>();

            using (SqlConnection objConnection = new SqlConnection(Connection.stringConnection))
            {
                try
                {
                    StringBuilder query = new StringBuilder();
                    query.AppendLine("SELECT idTerreno,producto,costoProducto,cantidadProducto,cantidadAplicada,costoPorAplicacion,ciclos,duracionCiclo,duracionTotal,resultadoFungicidas");
                    query.AppendLine("FROM tbl_Fungicidas");
                    query.AppendLine("WHERE idUsuario = @parametroIdUsuario");

                    SqlCommand cmd = new SqlCommand(query.ToString(), objConnection);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@parametroIdUsuario", usuario);

                    objConnection.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            FungicidasList.Add(new Fungicidas()
                            {
                                idTerreno = dr["idTerreno"].ToString(),
                                producto = dr["producto"].ToString(),
                                costoProducto = dr["costoProducto"].ToString(),
                                cantidadProducto = dr["cantidadProducto"].ToString(),
                                cantidadAplicada = dr["cantidadAplicada"].ToString().ToString(),
                                costoPorAplicacion = dr["costoPorAplicacion"].ToString(),
                                ciclos = dr["ciclos"].ToString(),
                                duracionCiclo = dr["duracionCiclo"].ToString(),
                                duracionTotal = dr["duracionTotal"].ToString(),
                                resultadoFungicidas = dr["resultadoFungicidas"].ToString()
                            });
                        }
                    }
                    objConnection.Close();
                }
                catch (Exception ex)
                {
                    FungicidasList = new List<Fungicidas>();
                }
                finally
                {
                    objConnection.Close();
                }
            }
            return FungicidasList;
        }

        public int InsertarDatosFungicidas(Fungicidas objFungicidas, out string message)
        {
            int result = 0;
            message = string.Empty;

            using (SqlConnection objConnection = new SqlConnection(Connection.stringConnection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_Insertar_Fungicidas", objConnection);

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@idTerreno", objFungicidas.idTerreno);
                    cmd.Parameters.AddWithValue("@producto", objFungicidas.producto);
                    cmd.Parameters.AddWithValue("@costoProducto", Convert.ToInt32(objFungicidas.costoProducto));
                    cmd.Parameters.AddWithValue("@cantidadProducto", Convert.ToInt32(objFungicidas.cantidadProducto));
                    cmd.Parameters.AddWithValue("@cantidadAplicada", Convert.ToInt32(objFungicidas.cantidadAplicada));
                    cmd.Parameters.AddWithValue("@costoPorAplicacion", Convert.ToInt32(objFungicidas.costoPorAplicacion));
                    cmd.Parameters.AddWithValue("@ciclos", Convert.ToInt32(objFungicidas.ciclos));
                    cmd.Parameters.AddWithValue("@duracionCiclo", Convert.ToInt32(objFungicidas.duracionCiclo));
                    cmd.Parameters.AddWithValue("@duracionTotal", Convert.ToInt32(objFungicidas.duracionTotal));
                    cmd.Parameters.AddWithValue("@resultadoFungicidas", Convert.ToDouble(objFungicidas.resultadoFungicidas));
                    cmd.Parameters.AddWithValue("@idUsuario", Convert.ToInt32(objFungicidas.idUsuario));

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