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
public partial class banxemayDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertDANHMUCSP(DANHMUCSP instance);
  partial void UpdateDANHMUCSP(DANHMUCSP instance);
  partial void DeleteDANHMUCSP(DANHMUCSP instance);
  partial void InsertGIOHANG(GIOHANG instance);
  partial void UpdateGIOHANG(GIOHANG instance);
  partial void DeleteGIOHANG(GIOHANG instance);
  partial void InsertHOADON(HOADON instance);
  partial void UpdateHOADON(HOADON instance);
  partial void DeleteHOADON(HOADON instance);
  partial void InsertKHACHHANG(KHACHHANG instance);
  partial void UpdateKHACHHANG(KHACHHANG instance);
  partial void DeleteKHACHHANG(KHACHHANG instance);
  partial void InsertSANPHAM(SANPHAM instance);
  partial void UpdateSANPHAM(SANPHAM instance);
  partial void DeleteSANPHAM(SANPHAM instance);
  partial void InsertTAIKHOAN(TAIKHOAN instance);
  partial void UpdateTAIKHOAN(TAIKHOAN instance);
  partial void DeleteTAIKHOAN(TAIKHOAN instance);
  #endregion
	
	public banxemayDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["XEMAY1ConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public banxemayDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public banxemayDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public banxemayDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public banxemayDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<DANHMUCSP> DANHMUCSPs
	{
		get
		{
			return this.GetTable<DANHMUCSP>();
		}
	}
	
	public System.Data.Linq.Table<GIOHANG> GIOHANGs
	{
		get
		{
			return this.GetTable<GIOHANG>();
		}
	}
	
	public System.Data.Linq.Table<HOADON> HOADONs
	{
		get
		{
			return this.GetTable<HOADON>();
		}
	}
	
	public System.Data.Linq.Table<KHACHHANG> KHACHHANGs
	{
		get
		{
			return this.GetTable<KHACHHANG>();
		}
	}
	
	public System.Data.Linq.Table<SANPHAM> SANPHAMs
	{
		get
		{
			return this.GetTable<SANPHAM>();
		}
	}
	
	public System.Data.Linq.Table<TAIKHOAN> TAIKHOANs
	{
		get
		{
			return this.GetTable<TAIKHOAN>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.DANHMUCSP")]
public partial class DANHMUCSP : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _IDDanhMuc;
	
	private string _TenDanhMucSP;
	
	private EntitySet<SANPHAM> _SANPHAMs;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDDanhMucChanging(int value);
    partial void OnIDDanhMucChanged();
    partial void OnTenDanhMucSPChanging(string value);
    partial void OnTenDanhMucSPChanged();
    #endregion
	
	public DANHMUCSP()
	{
		this._SANPHAMs = new EntitySet<SANPHAM>(new Action<SANPHAM>(this.attach_SANPHAMs), new Action<SANPHAM>(this.detach_SANPHAMs));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDDanhMuc", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int IDDanhMuc
	{
		get
		{
			return this._IDDanhMuc;
		}
		set
		{
			if ((this._IDDanhMuc != value))
			{
				this.OnIDDanhMucChanging(value);
				this.SendPropertyChanging();
				this._IDDanhMuc = value;
				this.SendPropertyChanged("IDDanhMuc");
				this.OnIDDanhMucChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenDanhMucSP", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string TenDanhMucSP
	{
		get
		{
			return this._TenDanhMucSP;
		}
		set
		{
			if ((this._TenDanhMucSP != value))
			{
				this.OnTenDanhMucSPChanging(value);
				this.SendPropertyChanging();
				this._TenDanhMucSP = value;
				this.SendPropertyChanged("TenDanhMucSP");
				this.OnTenDanhMucSPChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="DANHMUCSP_SANPHAM", Storage="_SANPHAMs", ThisKey="IDDanhMuc", OtherKey="IDDanhMuc")]
	public EntitySet<SANPHAM> SANPHAMs
	{
		get
		{
			return this._SANPHAMs;
		}
		set
		{
			this._SANPHAMs.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_SANPHAMs(SANPHAM entity)
	{
		this.SendPropertyChanging();
		entity.DANHMUCSP = this;
	}
	
	private void detach_SANPHAMs(SANPHAM entity)
	{
		this.SendPropertyChanging();
		entity.DANHMUCSP = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.GIOHANG")]
public partial class GIOHANG : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _IDGioHang;
	
	private int _IDHoaDon;
	
	private int _IDKhachHang;
	
	private int _IDSanPham;
	
	private int _SoLuongSP;
	
	private double _TongGia;
	
	private EntityRef<HOADON> _HOADON;
	
	private EntityRef<KHACHHANG> _KHACHHANG;
	
	private EntityRef<SANPHAM> _SANPHAM;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDGioHangChanging(int value);
    partial void OnIDGioHangChanged();
    partial void OnIDHoaDonChanging(int value);
    partial void OnIDHoaDonChanged();
    partial void OnIDKhachHangChanging(int value);
    partial void OnIDKhachHangChanged();
    partial void OnIDSanPhamChanging(int value);
    partial void OnIDSanPhamChanged();
    partial void OnSoLuongSPChanging(int value);
    partial void OnSoLuongSPChanged();
    partial void OnTongGiaChanging(double value);
    partial void OnTongGiaChanged();
    #endregion
	
	public GIOHANG()
	{
		this._HOADON = default(EntityRef<HOADON>);
		this._KHACHHANG = default(EntityRef<KHACHHANG>);
		this._SANPHAM = default(EntityRef<SANPHAM>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDGioHang", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int IDGioHang
	{
		get
		{
			return this._IDGioHang;
		}
		set
		{
			if ((this._IDGioHang != value))
			{
				this.OnIDGioHangChanging(value);
				this.SendPropertyChanging();
				this._IDGioHang = value;
				this.SendPropertyChanged("IDGioHang");
				this.OnIDGioHangChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDHoaDon", DbType="Int NOT NULL")]
	public int IDHoaDon
	{
		get
		{
			return this._IDHoaDon;
		}
		set
		{
			if ((this._IDHoaDon != value))
			{
				if (this._HOADON.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnIDHoaDonChanging(value);
				this.SendPropertyChanging();
				this._IDHoaDon = value;
				this.SendPropertyChanged("IDHoaDon");
				this.OnIDHoaDonChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDKhachHang", DbType="Int NOT NULL")]
	public int IDKhachHang
	{
		get
		{
			return this._IDKhachHang;
		}
		set
		{
			if ((this._IDKhachHang != value))
			{
				if (this._KHACHHANG.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnIDKhachHangChanging(value);
				this.SendPropertyChanging();
				this._IDKhachHang = value;
				this.SendPropertyChanged("IDKhachHang");
				this.OnIDKhachHangChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDSanPham", DbType="Int NOT NULL")]
	public int IDSanPham
	{
		get
		{
			return this._IDSanPham;
		}
		set
		{
			if ((this._IDSanPham != value))
			{
				if (this._SANPHAM.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnIDSanPhamChanging(value);
				this.SendPropertyChanging();
				this._IDSanPham = value;
				this.SendPropertyChanged("IDSanPham");
				this.OnIDSanPhamChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoLuongSP", DbType="Int NOT NULL")]
	public int SoLuongSP
	{
		get
		{
			return this._SoLuongSP;
		}
		set
		{
			if ((this._SoLuongSP != value))
			{
				this.OnSoLuongSPChanging(value);
				this.SendPropertyChanging();
				this._SoLuongSP = value;
				this.SendPropertyChanged("SoLuongSP");
				this.OnSoLuongSPChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TongGia", DbType="Float NOT NULL")]
	public double TongGia
	{
		get
		{
			return this._TongGia;
		}
		set
		{
			if ((this._TongGia != value))
			{
				this.OnTongGiaChanging(value);
				this.SendPropertyChanging();
				this._TongGia = value;
				this.SendPropertyChanged("TongGia");
				this.OnTongGiaChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="HOADON_GIOHANG", Storage="_HOADON", ThisKey="IDHoaDon", OtherKey="IDHoaDon", IsForeignKey=true)]
	public HOADON HOADON
	{
		get
		{
			return this._HOADON.Entity;
		}
		set
		{
			HOADON previousValue = this._HOADON.Entity;
			if (((previousValue != value) 
						|| (this._HOADON.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._HOADON.Entity = null;
					previousValue.GIOHANGs.Remove(this);
				}
				this._HOADON.Entity = value;
				if ((value != null))
				{
					value.GIOHANGs.Add(this);
					this._IDHoaDon = value.IDHoaDon;
				}
				else
				{
					this._IDHoaDon = default(int);
				}
				this.SendPropertyChanged("HOADON");
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KHACHHANG_GIOHANG", Storage="_KHACHHANG", ThisKey="IDKhachHang", OtherKey="IDKhachHang", IsForeignKey=true)]
	public KHACHHANG KHACHHANG
	{
		get
		{
			return this._KHACHHANG.Entity;
		}
		set
		{
			KHACHHANG previousValue = this._KHACHHANG.Entity;
			if (((previousValue != value) 
						|| (this._KHACHHANG.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._KHACHHANG.Entity = null;
					previousValue.GIOHANGs.Remove(this);
				}
				this._KHACHHANG.Entity = value;
				if ((value != null))
				{
					value.GIOHANGs.Add(this);
					this._IDKhachHang = value.IDKhachHang;
				}
				else
				{
					this._IDKhachHang = default(int);
				}
				this.SendPropertyChanged("KHACHHANG");
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="SANPHAM_GIOHANG", Storage="_SANPHAM", ThisKey="IDSanPham", OtherKey="IDSanPham", IsForeignKey=true)]
	public SANPHAM SANPHAM
	{
		get
		{
			return this._SANPHAM.Entity;
		}
		set
		{
			SANPHAM previousValue = this._SANPHAM.Entity;
			if (((previousValue != value) 
						|| (this._SANPHAM.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._SANPHAM.Entity = null;
					previousValue.GIOHANGs.Remove(this);
				}
				this._SANPHAM.Entity = value;
				if ((value != null))
				{
					value.GIOHANGs.Add(this);
					this._IDSanPham = value.IDSanPham;
				}
				else
				{
					this._IDSanPham = default(int);
				}
				this.SendPropertyChanged("SANPHAM");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.HOADON")]
public partial class HOADON : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _IDHoaDon;
	
	private int _IDKhachHang;
	
	private System.DateTime _NgayMua;
	
	private double _TongTien;
	
	private EntitySet<GIOHANG> _GIOHANGs;
	
	private EntityRef<KHACHHANG> _KHACHHANG;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDHoaDonChanging(int value);
    partial void OnIDHoaDonChanged();
    partial void OnIDKhachHangChanging(int value);
    partial void OnIDKhachHangChanged();
    partial void OnNgayMuaChanging(System.DateTime value);
    partial void OnNgayMuaChanged();
    partial void OnTongTienChanging(double value);
    partial void OnTongTienChanged();
    #endregion
	
	public HOADON()
	{
		this._GIOHANGs = new EntitySet<GIOHANG>(new Action<GIOHANG>(this.attach_GIOHANGs), new Action<GIOHANG>(this.detach_GIOHANGs));
		this._KHACHHANG = default(EntityRef<KHACHHANG>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDHoaDon", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int IDHoaDon
	{
		get
		{
			return this._IDHoaDon;
		}
		set
		{
			if ((this._IDHoaDon != value))
			{
				this.OnIDHoaDonChanging(value);
				this.SendPropertyChanging();
				this._IDHoaDon = value;
				this.SendPropertyChanged("IDHoaDon");
				this.OnIDHoaDonChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDKhachHang", DbType="Int NOT NULL")]
	public int IDKhachHang
	{
		get
		{
			return this._IDKhachHang;
		}
		set
		{
			if ((this._IDKhachHang != value))
			{
				if (this._KHACHHANG.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnIDKhachHangChanging(value);
				this.SendPropertyChanging();
				this._IDKhachHang = value;
				this.SendPropertyChanged("IDKhachHang");
				this.OnIDKhachHangChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayMua", DbType="Date NOT NULL")]
	public System.DateTime NgayMua
	{
		get
		{
			return this._NgayMua;
		}
		set
		{
			if ((this._NgayMua != value))
			{
				this.OnNgayMuaChanging(value);
				this.SendPropertyChanging();
				this._NgayMua = value;
				this.SendPropertyChanged("NgayMua");
				this.OnNgayMuaChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TongTien", DbType="Float NOT NULL")]
	public double TongTien
	{
		get
		{
			return this._TongTien;
		}
		set
		{
			if ((this._TongTien != value))
			{
				this.OnTongTienChanging(value);
				this.SendPropertyChanging();
				this._TongTien = value;
				this.SendPropertyChanged("TongTien");
				this.OnTongTienChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="HOADON_GIOHANG", Storage="_GIOHANGs", ThisKey="IDHoaDon", OtherKey="IDHoaDon")]
	public EntitySet<GIOHANG> GIOHANGs
	{
		get
		{
			return this._GIOHANGs;
		}
		set
		{
			this._GIOHANGs.Assign(value);
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KHACHHANG_HOADON", Storage="_KHACHHANG", ThisKey="IDKhachHang", OtherKey="IDKhachHang", IsForeignKey=true)]
	public KHACHHANG KHACHHANG
	{
		get
		{
			return this._KHACHHANG.Entity;
		}
		set
		{
			KHACHHANG previousValue = this._KHACHHANG.Entity;
			if (((previousValue != value) 
						|| (this._KHACHHANG.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._KHACHHANG.Entity = null;
					previousValue.HOADONs.Remove(this);
				}
				this._KHACHHANG.Entity = value;
				if ((value != null))
				{
					value.HOADONs.Add(this);
					this._IDKhachHang = value.IDKhachHang;
				}
				else
				{
					this._IDKhachHang = default(int);
				}
				this.SendPropertyChanged("KHACHHANG");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_GIOHANGs(GIOHANG entity)
	{
		this.SendPropertyChanging();
		entity.HOADON = this;
	}
	
	private void detach_GIOHANGs(GIOHANG entity)
	{
		this.SendPropertyChanging();
		entity.HOADON = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.KHACHHANG")]
public partial class KHACHHANG : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _IDKhachHang;
	
	private string _HoTenKH;
	
	private System.DateTime _NgaySinh;
	
	private string _DiaChi;
	
	private string _SDT;
	
	private string _SoCMND;
	
	private int _IDTaiKhoan;
	
	private EntitySet<GIOHANG> _GIOHANGs;
	
	private EntitySet<HOADON> _HOADONs;
	
	private EntityRef<TAIKHOAN> _TAIKHOAN;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDKhachHangChanging(int value);
    partial void OnIDKhachHangChanged();
    partial void OnHoTenKHChanging(string value);
    partial void OnHoTenKHChanged();
    partial void OnNgaySinhChanging(System.DateTime value);
    partial void OnNgaySinhChanged();
    partial void OnDiaChiChanging(string value);
    partial void OnDiaChiChanged();
    partial void OnSDTChanging(string value);
    partial void OnSDTChanged();
    partial void OnSoCMNDChanging(string value);
    partial void OnSoCMNDChanged();
    partial void OnIDTaiKhoanChanging(int value);
    partial void OnIDTaiKhoanChanged();
    #endregion
	
	public KHACHHANG()
	{
		this._GIOHANGs = new EntitySet<GIOHANG>(new Action<GIOHANG>(this.attach_GIOHANGs), new Action<GIOHANG>(this.detach_GIOHANGs));
		this._HOADONs = new EntitySet<HOADON>(new Action<HOADON>(this.attach_HOADONs), new Action<HOADON>(this.detach_HOADONs));
		this._TAIKHOAN = default(EntityRef<TAIKHOAN>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDKhachHang", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int IDKhachHang
	{
		get
		{
			return this._IDKhachHang;
		}
		set
		{
			if ((this._IDKhachHang != value))
			{
				this.OnIDKhachHangChanging(value);
				this.SendPropertyChanging();
				this._IDKhachHang = value;
				this.SendPropertyChanged("IDKhachHang");
				this.OnIDKhachHangChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HoTenKH", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string HoTenKH
	{
		get
		{
			return this._HoTenKH;
		}
		set
		{
			if ((this._HoTenKH != value))
			{
				this.OnHoTenKHChanging(value);
				this.SendPropertyChanging();
				this._HoTenKH = value;
				this.SendPropertyChanged("HoTenKH");
				this.OnHoTenKHChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgaySinh", DbType="Date NOT NULL")]
	public System.DateTime NgaySinh
	{
		get
		{
			return this._NgaySinh;
		}
		set
		{
			if ((this._NgaySinh != value))
			{
				this.OnNgaySinhChanging(value);
				this.SendPropertyChanging();
				this._NgaySinh = value;
				this.SendPropertyChanged("NgaySinh");
				this.OnNgaySinhChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaChi", DbType="NVarChar(200) NOT NULL", CanBeNull=false)]
	public string DiaChi
	{
		get
		{
			return this._DiaChi;
		}
		set
		{
			if ((this._DiaChi != value))
			{
				this.OnDiaChiChanging(value);
				this.SendPropertyChanging();
				this._DiaChi = value;
				this.SendPropertyChanged("DiaChi");
				this.OnDiaChiChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SDT", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
	public string SDT
	{
		get
		{
			return this._SDT;
		}
		set
		{
			if ((this._SDT != value))
			{
				this.OnSDTChanging(value);
				this.SendPropertyChanging();
				this._SDT = value;
				this.SendPropertyChanged("SDT");
				this.OnSDTChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoCMND", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
	public string SoCMND
	{
		get
		{
			return this._SoCMND;
		}
		set
		{
			if ((this._SoCMND != value))
			{
				this.OnSoCMNDChanging(value);
				this.SendPropertyChanging();
				this._SoCMND = value;
				this.SendPropertyChanged("SoCMND");
				this.OnSoCMNDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDTaiKhoan", DbType="Int NOT NULL")]
	public int IDTaiKhoan
	{
		get
		{
			return this._IDTaiKhoan;
		}
		set
		{
			if ((this._IDTaiKhoan != value))
			{
				if (this._TAIKHOAN.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnIDTaiKhoanChanging(value);
				this.SendPropertyChanging();
				this._IDTaiKhoan = value;
				this.SendPropertyChanged("IDTaiKhoan");
				this.OnIDTaiKhoanChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KHACHHANG_GIOHANG", Storage="_GIOHANGs", ThisKey="IDKhachHang", OtherKey="IDKhachHang")]
	public EntitySet<GIOHANG> GIOHANGs
	{
		get
		{
			return this._GIOHANGs;
		}
		set
		{
			this._GIOHANGs.Assign(value);
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KHACHHANG_HOADON", Storage="_HOADONs", ThisKey="IDKhachHang", OtherKey="IDKhachHang")]
	public EntitySet<HOADON> HOADONs
	{
		get
		{
			return this._HOADONs;
		}
		set
		{
			this._HOADONs.Assign(value);
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="TAIKHOAN_KHACHHANG", Storage="_TAIKHOAN", ThisKey="IDTaiKhoan", OtherKey="IDTaiKhoan", IsForeignKey=true)]
	public TAIKHOAN TAIKHOAN
	{
		get
		{
			return this._TAIKHOAN.Entity;
		}
		set
		{
			TAIKHOAN previousValue = this._TAIKHOAN.Entity;
			if (((previousValue != value) 
						|| (this._TAIKHOAN.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._TAIKHOAN.Entity = null;
					previousValue.KHACHHANGs.Remove(this);
				}
				this._TAIKHOAN.Entity = value;
				if ((value != null))
				{
					value.KHACHHANGs.Add(this);
					this._IDTaiKhoan = value.IDTaiKhoan;
				}
				else
				{
					this._IDTaiKhoan = default(int);
				}
				this.SendPropertyChanged("TAIKHOAN");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_GIOHANGs(GIOHANG entity)
	{
		this.SendPropertyChanging();
		entity.KHACHHANG = this;
	}
	
	private void detach_GIOHANGs(GIOHANG entity)
	{
		this.SendPropertyChanging();
		entity.KHACHHANG = null;
	}
	
	private void attach_HOADONs(HOADON entity)
	{
		this.SendPropertyChanging();
		entity.KHACHHANG = this;
	}
	
	private void detach_HOADONs(HOADON entity)
	{
		this.SendPropertyChanging();
		entity.KHACHHANG = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.SANPHAM")]
public partial class SANPHAM : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _IDSanPham;
	
	private string _TenSP;
	
	private string _HinhSP;
	
	private double _Gia;
	
	private string _MaSP;
	
	private string _DongCo;
	
	private string _XuatXu;
	
	private string _KichThuoc;
	
	private string _TrongLuong;
	
	private string _BaoHanh;
	
	private System.DateTime _NgayCapNhat;
	
	private int _IDDanhMuc;
	
	private EntitySet<GIOHANG> _GIOHANGs;
	
	private EntityRef<DANHMUCSP> _DANHMUCSP;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDSanPhamChanging(int value);
    partial void OnIDSanPhamChanged();
    partial void OnTenSPChanging(string value);
    partial void OnTenSPChanged();
    partial void OnHinhSPChanging(string value);
    partial void OnHinhSPChanged();
    partial void OnGiaChanging(double value);
    partial void OnGiaChanged();
    partial void OnMaSPChanging(string value);
    partial void OnMaSPChanged();
    partial void OnDongCoChanging(string value);
    partial void OnDongCoChanged();
    partial void OnXuatXuChanging(string value);
    partial void OnXuatXuChanged();
    partial void OnKichThuocChanging(string value);
    partial void OnKichThuocChanged();
    partial void OnTrongLuongChanging(string value);
    partial void OnTrongLuongChanged();
    partial void OnBaoHanhChanging(string value);
    partial void OnBaoHanhChanged();
    partial void OnNgayCapNhatChanging(System.DateTime value);
    partial void OnNgayCapNhatChanged();
    partial void OnIDDanhMucChanging(int value);
    partial void OnIDDanhMucChanged();
    #endregion
	
	public SANPHAM()
	{
		this._GIOHANGs = new EntitySet<GIOHANG>(new Action<GIOHANG>(this.attach_GIOHANGs), new Action<GIOHANG>(this.detach_GIOHANGs));
		this._DANHMUCSP = default(EntityRef<DANHMUCSP>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDSanPham", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int IDSanPham
	{
		get
		{
			return this._IDSanPham;
		}
		set
		{
			if ((this._IDSanPham != value))
			{
				this.OnIDSanPhamChanging(value);
				this.SendPropertyChanging();
				this._IDSanPham = value;
				this.SendPropertyChanged("IDSanPham");
				this.OnIDSanPhamChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenSP", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string TenSP
	{
		get
		{
			return this._TenSP;
		}
		set
		{
			if ((this._TenSP != value))
			{
				this.OnTenSPChanging(value);
				this.SendPropertyChanging();
				this._TenSP = value;
				this.SendPropertyChanged("TenSP");
				this.OnTenSPChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HinhSP", DbType="NVarChar(200)")]
	public string HinhSP
	{
		get
		{
			return this._HinhSP;
		}
		set
		{
			if ((this._HinhSP != value))
			{
				this.OnHinhSPChanging(value);
				this.SendPropertyChanging();
				this._HinhSP = value;
				this.SendPropertyChanged("HinhSP");
				this.OnHinhSPChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Gia", DbType="Float NOT NULL")]
	public double Gia
	{
		get
		{
			return this._Gia;
		}
		set
		{
			if ((this._Gia != value))
			{
				this.OnGiaChanging(value);
				this.SendPropertyChanging();
				this._Gia = value;
				this.SendPropertyChanged("Gia");
				this.OnGiaChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaSP", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string MaSP
	{
		get
		{
			return this._MaSP;
		}
		set
		{
			if ((this._MaSP != value))
			{
				this.OnMaSPChanging(value);
				this.SendPropertyChanging();
				this._MaSP = value;
				this.SendPropertyChanged("MaSP");
				this.OnMaSPChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DongCo", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string DongCo
	{
		get
		{
			return this._DongCo;
		}
		set
		{
			if ((this._DongCo != value))
			{
				this.OnDongCoChanging(value);
				this.SendPropertyChanging();
				this._DongCo = value;
				this.SendPropertyChanged("DongCo");
				this.OnDongCoChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_XuatXu", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string XuatXu
	{
		get
		{
			return this._XuatXu;
		}
		set
		{
			if ((this._XuatXu != value))
			{
				this.OnXuatXuChanging(value);
				this.SendPropertyChanging();
				this._XuatXu = value;
				this.SendPropertyChanged("XuatXu");
				this.OnXuatXuChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_KichThuoc", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string KichThuoc
	{
		get
		{
			return this._KichThuoc;
		}
		set
		{
			if ((this._KichThuoc != value))
			{
				this.OnKichThuocChanging(value);
				this.SendPropertyChanging();
				this._KichThuoc = value;
				this.SendPropertyChanged("KichThuoc");
				this.OnKichThuocChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TrongLuong", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string TrongLuong
	{
		get
		{
			return this._TrongLuong;
		}
		set
		{
			if ((this._TrongLuong != value))
			{
				this.OnTrongLuongChanging(value);
				this.SendPropertyChanging();
				this._TrongLuong = value;
				this.SendPropertyChanged("TrongLuong");
				this.OnTrongLuongChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_BaoHanh", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string BaoHanh
	{
		get
		{
			return this._BaoHanh;
		}
		set
		{
			if ((this._BaoHanh != value))
			{
				this.OnBaoHanhChanging(value);
				this.SendPropertyChanging();
				this._BaoHanh = value;
				this.SendPropertyChanged("BaoHanh");
				this.OnBaoHanhChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayCapNhat", DbType="Date NOT NULL")]
	public System.DateTime NgayCapNhat
	{
		get
		{
			return this._NgayCapNhat;
		}
		set
		{
			if ((this._NgayCapNhat != value))
			{
				this.OnNgayCapNhatChanging(value);
				this.SendPropertyChanging();
				this._NgayCapNhat = value;
				this.SendPropertyChanged("NgayCapNhat");
				this.OnNgayCapNhatChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDDanhMuc", DbType="Int NOT NULL")]
	public int IDDanhMuc
	{
		get
		{
			return this._IDDanhMuc;
		}
		set
		{
			if ((this._IDDanhMuc != value))
			{
				if (this._DANHMUCSP.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnIDDanhMucChanging(value);
				this.SendPropertyChanging();
				this._IDDanhMuc = value;
				this.SendPropertyChanged("IDDanhMuc");
				this.OnIDDanhMucChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="SANPHAM_GIOHANG", Storage="_GIOHANGs", ThisKey="IDSanPham", OtherKey="IDSanPham")]
	public EntitySet<GIOHANG> GIOHANGs
	{
		get
		{
			return this._GIOHANGs;
		}
		set
		{
			this._GIOHANGs.Assign(value);
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="DANHMUCSP_SANPHAM", Storage="_DANHMUCSP", ThisKey="IDDanhMuc", OtherKey="IDDanhMuc", IsForeignKey=true)]
	public DANHMUCSP DANHMUCSP
	{
		get
		{
			return this._DANHMUCSP.Entity;
		}
		set
		{
			DANHMUCSP previousValue = this._DANHMUCSP.Entity;
			if (((previousValue != value) 
						|| (this._DANHMUCSP.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._DANHMUCSP.Entity = null;
					previousValue.SANPHAMs.Remove(this);
				}
				this._DANHMUCSP.Entity = value;
				if ((value != null))
				{
					value.SANPHAMs.Add(this);
					this._IDDanhMuc = value.IDDanhMuc;
				}
				else
				{
					this._IDDanhMuc = default(int);
				}
				this.SendPropertyChanged("DANHMUCSP");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_GIOHANGs(GIOHANG entity)
	{
		this.SendPropertyChanging();
		entity.SANPHAM = this;
	}
	
	private void detach_GIOHANGs(GIOHANG entity)
	{
		this.SendPropertyChanging();
		entity.SANPHAM = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TAIKHOAN")]
public partial class TAIKHOAN : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _IDTaiKhoan;
	
	private string _TenDangNhap;
	
	private string _Email;
	
	private string _MatKhau;
	
	private int _LoaiTK;
	
	private EntitySet<KHACHHANG> _KHACHHANGs;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDTaiKhoanChanging(int value);
    partial void OnIDTaiKhoanChanged();
    partial void OnTenDangNhapChanging(string value);
    partial void OnTenDangNhapChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnMatKhauChanging(string value);
    partial void OnMatKhauChanged();
    partial void OnLoaiTKChanging(int value);
    partial void OnLoaiTKChanged();
    #endregion
	
	public TAIKHOAN()
	{
		this._KHACHHANGs = new EntitySet<KHACHHANG>(new Action<KHACHHANG>(this.attach_KHACHHANGs), new Action<KHACHHANG>(this.detach_KHACHHANGs));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDTaiKhoan", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int IDTaiKhoan
	{
		get
		{
			return this._IDTaiKhoan;
		}
		set
		{
			if ((this._IDTaiKhoan != value))
			{
				this.OnIDTaiKhoanChanging(value);
				this.SendPropertyChanging();
				this._IDTaiKhoan = value;
				this.SendPropertyChanged("IDTaiKhoan");
				this.OnIDTaiKhoanChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenDangNhap", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string TenDangNhap
	{
		get
		{
			return this._TenDangNhap;
		}
		set
		{
			if ((this._TenDangNhap != value))
			{
				this.OnTenDangNhapChanging(value);
				this.SendPropertyChanging();
				this._TenDangNhap = value;
				this.SendPropertyChanged("TenDangNhap");
				this.OnTenDangNhapChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string Email
	{
		get
		{
			return this._Email;
		}
		set
		{
			if ((this._Email != value))
			{
				this.OnEmailChanging(value);
				this.SendPropertyChanging();
				this._Email = value;
				this.SendPropertyChanged("Email");
				this.OnEmailChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MatKhau", DbType="VarChar(1000) NOT NULL", CanBeNull=false)]
	public string MatKhau
	{
		get
		{
			return this._MatKhau;
		}
		set
		{
			if ((this._MatKhau != value))
			{
				this.OnMatKhauChanging(value);
				this.SendPropertyChanging();
				this._MatKhau = value;
				this.SendPropertyChanged("MatKhau");
				this.OnMatKhauChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LoaiTK", DbType="Int NOT NULL")]
	public int LoaiTK
	{
		get
		{
			return this._LoaiTK;
		}
		set
		{
			if ((this._LoaiTK != value))
			{
				this.OnLoaiTKChanging(value);
				this.SendPropertyChanging();
				this._LoaiTK = value;
				this.SendPropertyChanged("LoaiTK");
				this.OnLoaiTKChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="TAIKHOAN_KHACHHANG", Storage="_KHACHHANGs", ThisKey="IDTaiKhoan", OtherKey="IDTaiKhoan")]
	public EntitySet<KHACHHANG> KHACHHANGs
	{
		get
		{
			return this._KHACHHANGs;
		}
		set
		{
			this._KHACHHANGs.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_KHACHHANGs(KHACHHANG entity)
	{
		this.SendPropertyChanging();
		entity.TAIKHOAN = this;
	}
	
	private void detach_KHACHHANGs(KHACHHANG entity)
	{
		this.SendPropertyChanging();
		entity.TAIKHOAN = null;
	}
}
#pragma warning restore 1591
