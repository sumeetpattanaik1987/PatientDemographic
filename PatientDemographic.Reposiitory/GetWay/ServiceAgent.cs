using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace PatientDemographicService.Repository.GetWay
{

    public  class ServiceAgent : IServiceAgent
    {
        public SqlConnection _connection;
        public SqlCommand cmd;

        //---Method for Sql Connection
        public void connection()
        {

             _connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
            string msg = string.Empty;
            try
            {
                if (_connection.State == ConnectionState.Closed)
                    _connection.Open();
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
           
        }
        //---- Method for Save Personal Information in database
        public int SetPatientInfo(string xmlvalue)
        {            
            int i = 0;
            string msg = string.Empty;
            try
            {
                connection();
                cmd = new SqlCommand("SP_CREATE_PATIENTINFO", _connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@PatientDetails", SqlDbType.Xml).Value = xmlvalue;
                i = cmd.ExecuteNonQuery();
                _connection.Close();
            }
            catch (Exception ex)
            {

                msg=ex.Message;
            }            
                return i;            
        }
        //---- Method for Retrive Personal Information in database
        public List<string> GetPatientInfo( int? ID)
        {
            var patientmodellist = new List<string>();
            string msg = string.Empty;
            try
            {
                if (_connection.State == ConnectionState.Closed)
                {
                    connection();
                    cmd = new SqlCommand("SP_GET_PATIENTINFO", _connection);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID", SqlDbType.Int).Value = ID;                    
                    SqlDataReader _sqlDataReader = cmd.ExecuteReader();
                    while (_sqlDataReader.Read())
                    {
                        patientmodellist.Add(_sqlDataReader.GetString(_sqlDataReader.GetOrdinal("PatientInfo")));
                    }
                }
                _connection.Close();
            }
            catch (Exception ex)
            {

                msg = ex.Message;
            }          

            return patientmodellist;
        }
    }
    
}