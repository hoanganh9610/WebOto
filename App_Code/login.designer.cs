﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="XEMAY1")]
public partial class loginDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  #endregion
	
	public loginDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["XEMAY1ConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public loginDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public loginDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public loginDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public loginDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.DangNhap")]
	public int DangNhap([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="NVarChar(50)")] string taikhoan, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="NVarChar(50)")] string matkhau, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> quyenhan)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), taikhoan, matkhau, quyenhan);
		return ((int)(result.ReturnValue));
	}
}
#pragma warning restore 1591