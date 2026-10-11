using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Runtime.Serialization;
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace Etas.Base.UI.Framework.Help.HelpCore;

[Serializable]
[ToolboxItem(true)]
[XmlSchemaProvider("GetTypedDataSetSchema")]
[XmlRoot("MappingDB")]
[HelpKeyword("vs.data.DataSet")]
[DesignerCategory("code")]
[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
public class MappingDB : DataSet
{
	[Serializable]
	[XmlSchemaProvider("GetTypedTableSchema")]
	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class HelpFilesDataTable : DataTable, IEnumerable
	{
		private DataColumn columnName;

		private DataColumn columnExtension;

		[DebuggerNonUserCode]
		public DataColumn NameColumn => columnName;

		[DebuggerNonUserCode]
		public DataColumn ExtensionColumn => columnExtension;

		[DebuggerNonUserCode]
		[Browsable(false)]
		public int Count => base.Rows.Count;

		[DebuggerNonUserCode]
		public HelpFilesRow this[int index] => (HelpFilesRow)base.Rows[index];

		public event HelpFilesRowChangeEventHandler HelpFilesRowChanging;

		public event HelpFilesRowChangeEventHandler HelpFilesRowChanged;

		public event HelpFilesRowChangeEventHandler HelpFilesRowDeleting;

		public event HelpFilesRowChangeEventHandler HelpFilesRowDeleted;

		internal void Update(HelpFilesRow row)
		{
			HelpFilesRow helpFilesRow = FindByName(row.Name);
			if (helpFilesRow != null)
			{
				helpFilesRow.Extension = row.Extension;
			}
			else
			{
				AddHelpFilesRow(row.Name, row.Extension);
			}
		}

		internal void Update(HelpFilesDataTable table)
		{
			foreach (HelpFilesRow item in table)
			{
				Update(item);
			}
		}

		[DebuggerNonUserCode]
		public HelpFilesDataTable()
		{
			base.TableName = "HelpFiles";
			BeginInit();
			InitClass();
			EndInit();
		}

		[DebuggerNonUserCode]
		internal HelpFilesDataTable(DataTable table)
		{
			base.TableName = table.TableName;
			if (table.CaseSensitive != table.DataSet.CaseSensitive)
			{
				base.CaseSensitive = table.CaseSensitive;
			}
			if (table.Locale.ToString() != table.DataSet.Locale.ToString())
			{
				base.Locale = table.Locale;
			}
			if (table.Namespace != table.DataSet.Namespace)
			{
				base.Namespace = table.Namespace;
			}
			base.Prefix = table.Prefix;
			base.MinimumCapacity = table.MinimumCapacity;
		}

		[DebuggerNonUserCode]
		protected HelpFilesDataTable(SerializationInfo info, StreamingContext context)
			: base(info, context)
		{
			InitVars();
		}

		[DebuggerNonUserCode]
		public void AddHelpFilesRow(HelpFilesRow row)
		{
			base.Rows.Add(row);
		}

		[DebuggerNonUserCode]
		public HelpFilesRow AddHelpFilesRow(string Name, string Extension)
		{
			HelpFilesRow helpFilesRow = (HelpFilesRow)NewRow();
			helpFilesRow.ItemArray = new object[2] { Name, Extension };
			base.Rows.Add(helpFilesRow);
			return helpFilesRow;
		}

		[DebuggerNonUserCode]
		public HelpFilesRow FindByName(string Name)
		{
			return (HelpFilesRow)base.Rows.Find(new object[1] { Name });
		}

		[DebuggerNonUserCode]
		public virtual IEnumerator GetEnumerator()
		{
			return base.Rows.GetEnumerator();
		}

		[DebuggerNonUserCode]
		public override DataTable Clone()
		{
			HelpFilesDataTable helpFilesDataTable = (HelpFilesDataTable)base.Clone();
			helpFilesDataTable.InitVars();
			return helpFilesDataTable;
		}

		[DebuggerNonUserCode]
		protected override DataTable CreateInstance()
		{
			return new HelpFilesDataTable();
		}

		[DebuggerNonUserCode]
		internal void InitVars()
		{
			columnName = base.Columns["Name"];
			columnExtension = base.Columns["Extension"];
		}

		[DebuggerNonUserCode]
		private void InitClass()
		{
			columnName = new DataColumn("Name", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnName);
			columnExtension = new DataColumn("Extension", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnExtension);
			base.Constraints.Add(new UniqueConstraint("Constraint1", new DataColumn[1] { columnName }, isPrimaryKey: true));
			columnName.AllowDBNull = false;
			columnName.Unique = true;
			columnExtension.AllowDBNull = false;
			columnExtension.DefaultValue = "";
			base.Locale = new CultureInfo("");
		}

		[DebuggerNonUserCode]
		public HelpFilesRow NewHelpFilesRow()
		{
			return (HelpFilesRow)NewRow();
		}

		[DebuggerNonUserCode]
		protected override DataRow NewRowFromBuilder(DataRowBuilder builder)
		{
			return new HelpFilesRow(builder);
		}

		[DebuggerNonUserCode]
		protected override Type GetRowType()
		{
			return typeof(HelpFilesRow);
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanged(DataRowChangeEventArgs e)
		{
			base.OnRowChanged(e);
			if (this.HelpFilesRowChanged != null)
			{
				this.HelpFilesRowChanged(this, new HelpFilesRowChangeEvent((HelpFilesRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanging(DataRowChangeEventArgs e)
		{
			base.OnRowChanging(e);
			if (this.HelpFilesRowChanging != null)
			{
				this.HelpFilesRowChanging(this, new HelpFilesRowChangeEvent((HelpFilesRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleted(DataRowChangeEventArgs e)
		{
			base.OnRowDeleted(e);
			if (this.HelpFilesRowDeleted != null)
			{
				this.HelpFilesRowDeleted(this, new HelpFilesRowChangeEvent((HelpFilesRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleting(DataRowChangeEventArgs e)
		{
			base.OnRowDeleting(e);
			if (this.HelpFilesRowDeleting != null)
			{
				this.HelpFilesRowDeleting(this, new HelpFilesRowChangeEvent((HelpFilesRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		public void RemoveHelpFilesRow(HelpFilesRow row)
		{
			base.Rows.Remove(row);
		}

		[DebuggerNonUserCode]
		public static XmlSchemaComplexType GetTypedTableSchema(XmlSchemaSet xs)
		{
			XmlSchemaComplexType xmlSchemaComplexType = new XmlSchemaComplexType();
			XmlSchemaSequence xmlSchemaSequence = new XmlSchemaSequence();
			MappingDB mappingDB = new MappingDB();
			xs.Add(mappingDB.GetSchemaSerializable());
			XmlSchemaAny xmlSchemaAny = new XmlSchemaAny();
			xmlSchemaAny.Namespace = "http://www.w3.org/2001/XMLSchema";
			xmlSchemaAny.MinOccurs = 0m;
			xmlSchemaAny.MaxOccurs = decimal.MaxValue;
			xmlSchemaAny.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny);
			XmlSchemaAny xmlSchemaAny2 = new XmlSchemaAny();
			xmlSchemaAny2.Namespace = "urn:schemas-microsoft-com:xml-diffgram-v1";
			xmlSchemaAny2.MinOccurs = 1m;
			xmlSchemaAny2.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny2);
			XmlSchemaAttribute xmlSchemaAttribute = new XmlSchemaAttribute();
			xmlSchemaAttribute.Name = "namespace";
			xmlSchemaAttribute.FixedValue = mappingDB.Namespace;
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute);
			XmlSchemaAttribute xmlSchemaAttribute2 = new XmlSchemaAttribute();
			xmlSchemaAttribute2.Name = "tableTypeName";
			xmlSchemaAttribute2.FixedValue = "HelpFilesDataTable";
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute2);
			xmlSchemaComplexType.Particle = xmlSchemaSequence;
			return xmlSchemaComplexType;
		}
	}

	[Serializable]
	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	[XmlSchemaProvider("GetTypedTableSchema")]
	public class TypesDataTable : DataTable, IEnumerable
	{
		private DataColumn columnType;

		private DataColumn columnCallingByTypeAllowed;

		private DataColumn columnTopic;

		private DataColumn columnHelpFile;

		[DebuggerNonUserCode]
		public DataColumn TypeColumn => columnType;

		[DebuggerNonUserCode]
		public DataColumn CallingByTypeAllowedColumn => columnCallingByTypeAllowed;

		[DebuggerNonUserCode]
		public DataColumn TopicColumn => columnTopic;

		[DebuggerNonUserCode]
		public DataColumn HelpFileColumn => columnHelpFile;

		[DebuggerNonUserCode]
		[Browsable(false)]
		public int Count => base.Rows.Count;

		[DebuggerNonUserCode]
		public TypesRow this[int index] => (TypesRow)base.Rows[index];

		public event TypesRowChangeEventHandler TypesRowChanging;

		public event TypesRowChangeEventHandler TypesRowChanged;

		public event TypesRowChangeEventHandler TypesRowDeleting;

		public event TypesRowChangeEventHandler TypesRowDeleted;

		internal void Update(TypesRow row)
		{
			TypesRow typesRow = FindByType(row.Type);
			if (typesRow != null)
			{
				typesRow.CallingByTypeAllowed = row.CallingByTypeAllowed;
				typesRow.Topic = row.Topic;
				typesRow.HelpFile = row.HelpFile;
			}
			else
			{
				AddTypesRow(row.Type, row.CallingByTypeAllowed, row.Topic, row.HelpFile);
			}
		}

		internal void Update(TypesDataTable table)
		{
			foreach (TypesRow item in table)
			{
				Update(item);
			}
		}

		[DebuggerNonUserCode]
		public TypesDataTable()
		{
			base.TableName = "Types";
			BeginInit();
			InitClass();
			EndInit();
		}

		[DebuggerNonUserCode]
		internal TypesDataTable(DataTable table)
		{
			base.TableName = table.TableName;
			if (table.CaseSensitive != table.DataSet.CaseSensitive)
			{
				base.CaseSensitive = table.CaseSensitive;
			}
			if (table.Locale.ToString() != table.DataSet.Locale.ToString())
			{
				base.Locale = table.Locale;
			}
			if (table.Namespace != table.DataSet.Namespace)
			{
				base.Namespace = table.Namespace;
			}
			base.Prefix = table.Prefix;
			base.MinimumCapacity = table.MinimumCapacity;
		}

		[DebuggerNonUserCode]
		protected TypesDataTable(SerializationInfo info, StreamingContext context)
			: base(info, context)
		{
			InitVars();
		}

		[DebuggerNonUserCode]
		public void AddTypesRow(TypesRow row)
		{
			base.Rows.Add(row);
		}

		[DebuggerNonUserCode]
		public TypesRow AddTypesRow(string Type, bool CallingByTypeAllowed, string Topic, string HelpFile)
		{
			TypesRow typesRow = (TypesRow)NewRow();
			typesRow.ItemArray = new object[4] { Type, CallingByTypeAllowed, Topic, HelpFile };
			base.Rows.Add(typesRow);
			return typesRow;
		}

		[DebuggerNonUserCode]
		public TypesRow FindByType(string Type)
		{
			return (TypesRow)base.Rows.Find(new object[1] { Type });
		}

		[DebuggerNonUserCode]
		public virtual IEnumerator GetEnumerator()
		{
			return base.Rows.GetEnumerator();
		}

		[DebuggerNonUserCode]
		public override DataTable Clone()
		{
			TypesDataTable typesDataTable = (TypesDataTable)base.Clone();
			typesDataTable.InitVars();
			return typesDataTable;
		}

		[DebuggerNonUserCode]
		protected override DataTable CreateInstance()
		{
			return new TypesDataTable();
		}

		[DebuggerNonUserCode]
		internal void InitVars()
		{
			columnType = base.Columns["Type"];
			columnCallingByTypeAllowed = base.Columns["CallingByTypeAllowed"];
			columnTopic = base.Columns["Topic"];
			columnHelpFile = base.Columns["HelpFile"];
		}

		[DebuggerNonUserCode]
		private void InitClass()
		{
			columnType = new DataColumn("Type", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnType);
			columnCallingByTypeAllowed = new DataColumn("CallingByTypeAllowed", typeof(bool), null, MappingType.Element);
			base.Columns.Add(columnCallingByTypeAllowed);
			columnTopic = new DataColumn("Topic", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnTopic);
			columnHelpFile = new DataColumn("HelpFile", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnHelpFile);
			base.Constraints.Add(new UniqueConstraint("Constraint1", new DataColumn[1] { columnType }, isPrimaryKey: true));
			columnType.AllowDBNull = false;
			columnType.Unique = true;
			base.Locale = new CultureInfo("");
		}

		[DebuggerNonUserCode]
		public TypesRow NewTypesRow()
		{
			return (TypesRow)NewRow();
		}

		[DebuggerNonUserCode]
		protected override DataRow NewRowFromBuilder(DataRowBuilder builder)
		{
			return new TypesRow(builder);
		}

		[DebuggerNonUserCode]
		protected override Type GetRowType()
		{
			return typeof(TypesRow);
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanged(DataRowChangeEventArgs e)
		{
			base.OnRowChanged(e);
			if (this.TypesRowChanged != null)
			{
				this.TypesRowChanged(this, new TypesRowChangeEvent((TypesRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanging(DataRowChangeEventArgs e)
		{
			base.OnRowChanging(e);
			if (this.TypesRowChanging != null)
			{
				this.TypesRowChanging(this, new TypesRowChangeEvent((TypesRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleted(DataRowChangeEventArgs e)
		{
			base.OnRowDeleted(e);
			if (this.TypesRowDeleted != null)
			{
				this.TypesRowDeleted(this, new TypesRowChangeEvent((TypesRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleting(DataRowChangeEventArgs e)
		{
			base.OnRowDeleting(e);
			if (this.TypesRowDeleting != null)
			{
				this.TypesRowDeleting(this, new TypesRowChangeEvent((TypesRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		public void RemoveTypesRow(TypesRow row)
		{
			base.Rows.Remove(row);
		}

		[DebuggerNonUserCode]
		public static XmlSchemaComplexType GetTypedTableSchema(XmlSchemaSet xs)
		{
			XmlSchemaComplexType xmlSchemaComplexType = new XmlSchemaComplexType();
			XmlSchemaSequence xmlSchemaSequence = new XmlSchemaSequence();
			MappingDB mappingDB = new MappingDB();
			xs.Add(mappingDB.GetSchemaSerializable());
			XmlSchemaAny xmlSchemaAny = new XmlSchemaAny();
			xmlSchemaAny.Namespace = "http://www.w3.org/2001/XMLSchema";
			xmlSchemaAny.MinOccurs = 0m;
			xmlSchemaAny.MaxOccurs = decimal.MaxValue;
			xmlSchemaAny.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny);
			XmlSchemaAny xmlSchemaAny2 = new XmlSchemaAny();
			xmlSchemaAny2.Namespace = "urn:schemas-microsoft-com:xml-diffgram-v1";
			xmlSchemaAny2.MinOccurs = 1m;
			xmlSchemaAny2.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny2);
			XmlSchemaAttribute xmlSchemaAttribute = new XmlSchemaAttribute();
			xmlSchemaAttribute.Name = "namespace";
			xmlSchemaAttribute.FixedValue = mappingDB.Namespace;
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute);
			XmlSchemaAttribute xmlSchemaAttribute2 = new XmlSchemaAttribute();
			xmlSchemaAttribute2.Name = "tableTypeName";
			xmlSchemaAttribute2.FixedValue = "TypesDataTable";
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute2);
			xmlSchemaComplexType.Particle = xmlSchemaSequence;
			return xmlSchemaComplexType;
		}
	}

	public delegate void HelpFilesRowChangeEventHandler(object sender, HelpFilesRowChangeEvent e);

	public delegate void MetadataRowChangeEventHandler(object sender, MetadataRowChangeEvent e);

	public delegate void ControlsRowChangeEventHandler(object sender, ControlsRowChangeEvent e);

	public delegate void TypesRowChangeEventHandler(object sender, TypesRowChangeEvent e);

	public delegate void ControlMetadataRowChangeEventHandler(object sender, ControlMetadataRowChangeEvent e);

	[Serializable]
	[XmlSchemaProvider("GetTypedTableSchema")]
	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class MetadataDataTable : DataTable, IEnumerable
	{
		private DataColumn columnLastChanged;

		private DataColumn columnCompatibilityVersion;

		private DataColumn columnAppRangeStart;

		private DataColumn columnAppRangeEnd;

		[DebuggerNonUserCode]
		public DataColumn LastChangedColumn => columnLastChanged;

		[DebuggerNonUserCode]
		public DataColumn CompatibilityVersionColumn => columnCompatibilityVersion;

		[DebuggerNonUserCode]
		public DataColumn AppRangeStartColumn => columnAppRangeStart;

		[DebuggerNonUserCode]
		public DataColumn AppRangeEndColumn => columnAppRangeEnd;

		[DebuggerNonUserCode]
		[Browsable(false)]
		public int Count => base.Rows.Count;

		[DebuggerNonUserCode]
		public MetadataRow this[int index] => (MetadataRow)base.Rows[index];

		public event MetadataRowChangeEventHandler MetadataRowChanging;

		public event MetadataRowChangeEventHandler MetadataRowChanged;

		public event MetadataRowChangeEventHandler MetadataRowDeleting;

		public event MetadataRowChangeEventHandler MetadataRowDeleted;

		[DebuggerNonUserCode]
		public MetadataDataTable()
		{
			base.TableName = "Metadata";
			BeginInit();
			InitClass();
			EndInit();
		}

		[DebuggerNonUserCode]
		internal MetadataDataTable(DataTable table)
		{
			base.TableName = table.TableName;
			if (table.CaseSensitive != table.DataSet.CaseSensitive)
			{
				base.CaseSensitive = table.CaseSensitive;
			}
			if (table.Locale.ToString() != table.DataSet.Locale.ToString())
			{
				base.Locale = table.Locale;
			}
			if (table.Namespace != table.DataSet.Namespace)
			{
				base.Namespace = table.Namespace;
			}
			base.Prefix = table.Prefix;
			base.MinimumCapacity = table.MinimumCapacity;
		}

		[DebuggerNonUserCode]
		protected MetadataDataTable(SerializationInfo info, StreamingContext context)
			: base(info, context)
		{
			InitVars();
		}

		[DebuggerNonUserCode]
		public void AddMetadataRow(MetadataRow row)
		{
			base.Rows.Add(row);
		}

		[DebuggerNonUserCode]
		public MetadataRow AddMetadataRow(DateTime LastChanged, int CompatibilityVersion, string AppRangeStart, string AppRangeEnd)
		{
			MetadataRow metadataRow = (MetadataRow)NewRow();
			metadataRow.ItemArray = new object[4] { LastChanged, CompatibilityVersion, AppRangeStart, AppRangeEnd };
			base.Rows.Add(metadataRow);
			return metadataRow;
		}

		[DebuggerNonUserCode]
		public virtual IEnumerator GetEnumerator()
		{
			return base.Rows.GetEnumerator();
		}

		[DebuggerNonUserCode]
		public override DataTable Clone()
		{
			MetadataDataTable metadataDataTable = (MetadataDataTable)base.Clone();
			metadataDataTable.InitVars();
			return metadataDataTable;
		}

		[DebuggerNonUserCode]
		protected override DataTable CreateInstance()
		{
			return new MetadataDataTable();
		}

		[DebuggerNonUserCode]
		internal void InitVars()
		{
			columnLastChanged = base.Columns["LastChanged"];
			columnCompatibilityVersion = base.Columns["CompatibilityVersion"];
			columnAppRangeStart = base.Columns["AppRangeStart"];
			columnAppRangeEnd = base.Columns["AppRangeEnd"];
		}

		[DebuggerNonUserCode]
		private void InitClass()
		{
			columnLastChanged = new DataColumn("LastChanged", typeof(DateTime), null, MappingType.Element);
			base.Columns.Add(columnLastChanged);
			columnCompatibilityVersion = new DataColumn("CompatibilityVersion", typeof(int), null, MappingType.Element);
			base.Columns.Add(columnCompatibilityVersion);
			columnAppRangeStart = new DataColumn("AppRangeStart", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnAppRangeStart);
			columnAppRangeEnd = new DataColumn("AppRangeEnd", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnAppRangeEnd);
			base.Locale = new CultureInfo("");
		}

		[DebuggerNonUserCode]
		public MetadataRow NewMetadataRow()
		{
			return (MetadataRow)NewRow();
		}

		[DebuggerNonUserCode]
		protected override DataRow NewRowFromBuilder(DataRowBuilder builder)
		{
			return new MetadataRow(builder);
		}

		[DebuggerNonUserCode]
		protected override Type GetRowType()
		{
			return typeof(MetadataRow);
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanged(DataRowChangeEventArgs e)
		{
			base.OnRowChanged(e);
			if (this.MetadataRowChanged != null)
			{
				this.MetadataRowChanged(this, new MetadataRowChangeEvent((MetadataRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanging(DataRowChangeEventArgs e)
		{
			base.OnRowChanging(e);
			if (this.MetadataRowChanging != null)
			{
				this.MetadataRowChanging(this, new MetadataRowChangeEvent((MetadataRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleted(DataRowChangeEventArgs e)
		{
			base.OnRowDeleted(e);
			if (this.MetadataRowDeleted != null)
			{
				this.MetadataRowDeleted(this, new MetadataRowChangeEvent((MetadataRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleting(DataRowChangeEventArgs e)
		{
			base.OnRowDeleting(e);
			if (this.MetadataRowDeleting != null)
			{
				this.MetadataRowDeleting(this, new MetadataRowChangeEvent((MetadataRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		public void RemoveMetadataRow(MetadataRow row)
		{
			base.Rows.Remove(row);
		}

		[DebuggerNonUserCode]
		public static XmlSchemaComplexType GetTypedTableSchema(XmlSchemaSet xs)
		{
			XmlSchemaComplexType xmlSchemaComplexType = new XmlSchemaComplexType();
			XmlSchemaSequence xmlSchemaSequence = new XmlSchemaSequence();
			MappingDB mappingDB = new MappingDB();
			xs.Add(mappingDB.GetSchemaSerializable());
			XmlSchemaAny xmlSchemaAny = new XmlSchemaAny();
			xmlSchemaAny.Namespace = "http://www.w3.org/2001/XMLSchema";
			xmlSchemaAny.MinOccurs = 0m;
			xmlSchemaAny.MaxOccurs = decimal.MaxValue;
			xmlSchemaAny.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny);
			XmlSchemaAny xmlSchemaAny2 = new XmlSchemaAny();
			xmlSchemaAny2.Namespace = "urn:schemas-microsoft-com:xml-diffgram-v1";
			xmlSchemaAny2.MinOccurs = 1m;
			xmlSchemaAny2.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny2);
			XmlSchemaAttribute xmlSchemaAttribute = new XmlSchemaAttribute();
			xmlSchemaAttribute.Name = "namespace";
			xmlSchemaAttribute.FixedValue = mappingDB.Namespace;
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute);
			XmlSchemaAttribute xmlSchemaAttribute2 = new XmlSchemaAttribute();
			xmlSchemaAttribute2.Name = "tableTypeName";
			xmlSchemaAttribute2.FixedValue = "MetadataDataTable";
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute2);
			xmlSchemaComplexType.Particle = xmlSchemaSequence;
			return xmlSchemaComplexType;
		}
	}

	[Serializable]
	[XmlSchemaProvider("GetTypedTableSchema")]
	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class ControlsDataTable : DataTable, IEnumerable
	{
		private DataColumn columnName;

		private DataColumn columnType;

		private DataColumn columnSubrangeStart;

		private DataColumn columnSubrangeEnd;

		private DataColumn columnTopic;

		private DataColumn columnParentName;

		private DataColumn columnHelpFile;

		private DataColumn columnHelpNamespace;

		[DebuggerNonUserCode]
		public DataColumn NameColumn => columnName;

		[DebuggerNonUserCode]
		public DataColumn TypeColumn => columnType;

		[DebuggerNonUserCode]
		public DataColumn SubrangeStartColumn => columnSubrangeStart;

		[DebuggerNonUserCode]
		public DataColumn SubrangeEndColumn => columnSubrangeEnd;

		[DebuggerNonUserCode]
		public DataColumn TopicColumn => columnTopic;

		[DebuggerNonUserCode]
		public DataColumn ParentNameColumn => columnParentName;

		[DebuggerNonUserCode]
		public DataColumn HelpFileColumn => columnHelpFile;

		[DebuggerNonUserCode]
		public DataColumn HelpNamespaceColumn => columnHelpNamespace;

		[Browsable(false)]
		[DebuggerNonUserCode]
		public int Count => base.Rows.Count;

		[DebuggerNonUserCode]
		public ControlsRow this[int index] => (ControlsRow)base.Rows[index];

		public event ControlsRowChangeEventHandler ControlsRowChanging;

		public event ControlsRowChangeEventHandler ControlsRowChanged;

		public event ControlsRowChangeEventHandler ControlsRowDeleting;

		public event ControlsRowChangeEventHandler ControlsRowDeleted;

		[DebuggerNonUserCode]
		public ControlsDataTable()
		{
			base.TableName = "Controls";
			BeginInit();
			InitClass();
			EndInit();
		}

		[DebuggerNonUserCode]
		internal ControlsDataTable(DataTable table)
		{
			base.TableName = table.TableName;
			if (table.CaseSensitive != table.DataSet.CaseSensitive)
			{
				base.CaseSensitive = table.CaseSensitive;
			}
			if (table.Locale.ToString() != table.DataSet.Locale.ToString())
			{
				base.Locale = table.Locale;
			}
			if (table.Namespace != table.DataSet.Namespace)
			{
				base.Namespace = table.Namespace;
			}
			base.Prefix = table.Prefix;
			base.MinimumCapacity = table.MinimumCapacity;
		}

		[DebuggerNonUserCode]
		protected ControlsDataTable(SerializationInfo info, StreamingContext context)
			: base(info, context)
		{
			InitVars();
		}

		[DebuggerNonUserCode]
		public void AddControlsRow(ControlsRow row)
		{
			base.Rows.Add(row);
		}

		[DebuggerNonUserCode]
		public ControlsRow AddControlsRow(string Name, string Type, string SubrangeStart, string SubrangeEnd, string Topic, string ParentName, string HelpFile, string HelpNamespace)
		{
			ControlsRow controlsRow = (ControlsRow)NewRow();
			controlsRow.ItemArray = new object[8] { Name, Type, SubrangeStart, SubrangeEnd, Topic, ParentName, HelpFile, HelpNamespace };
			base.Rows.Add(controlsRow);
			return controlsRow;
		}

		[DebuggerNonUserCode]
		public ControlsRow FindByName(string Name)
		{
			return (ControlsRow)base.Rows.Find(new object[1] { Name });
		}

		[DebuggerNonUserCode]
		public virtual IEnumerator GetEnumerator()
		{
			return base.Rows.GetEnumerator();
		}

		[DebuggerNonUserCode]
		public override DataTable Clone()
		{
			ControlsDataTable controlsDataTable = (ControlsDataTable)base.Clone();
			controlsDataTable.InitVars();
			return controlsDataTable;
		}

		[DebuggerNonUserCode]
		protected override DataTable CreateInstance()
		{
			return new ControlsDataTable();
		}

		[DebuggerNonUserCode]
		internal void InitVars()
		{
			columnName = base.Columns["Name"];
			columnType = base.Columns["Type"];
			columnSubrangeStart = base.Columns["SubrangeStart"];
			columnSubrangeEnd = base.Columns["SubrangeEnd"];
			columnTopic = base.Columns["Topic"];
			columnParentName = base.Columns["ParentName"];
			columnHelpFile = base.Columns["HelpFile"];
			columnHelpNamespace = base.Columns["HelpNamespace"];
		}

		[DebuggerNonUserCode]
		private void InitClass()
		{
			columnName = new DataColumn("Name", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnName);
			columnType = new DataColumn("Type", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnType);
			columnSubrangeStart = new DataColumn("SubrangeStart", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnSubrangeStart);
			columnSubrangeEnd = new DataColumn("SubrangeEnd", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnSubrangeEnd);
			columnTopic = new DataColumn("Topic", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnTopic);
			columnParentName = new DataColumn("ParentName", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnParentName);
			columnHelpFile = new DataColumn("HelpFile", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnHelpFile);
			columnHelpNamespace = new DataColumn("HelpNamespace", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnHelpNamespace);
			base.Constraints.Add(new UniqueConstraint("Constraint1", new DataColumn[1] { columnName }, isPrimaryKey: true));
			columnName.AllowDBNull = false;
			columnName.Unique = true;
			base.Locale = new CultureInfo("");
		}

		[DebuggerNonUserCode]
		public ControlsRow NewControlsRow()
		{
			return (ControlsRow)NewRow();
		}

		[DebuggerNonUserCode]
		protected override DataRow NewRowFromBuilder(DataRowBuilder builder)
		{
			return new ControlsRow(builder);
		}

		[DebuggerNonUserCode]
		protected override Type GetRowType()
		{
			return typeof(ControlsRow);
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanged(DataRowChangeEventArgs e)
		{
			base.OnRowChanged(e);
			if (this.ControlsRowChanged != null)
			{
				this.ControlsRowChanged(this, new ControlsRowChangeEvent((ControlsRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanging(DataRowChangeEventArgs e)
		{
			base.OnRowChanging(e);
			if (this.ControlsRowChanging != null)
			{
				this.ControlsRowChanging(this, new ControlsRowChangeEvent((ControlsRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleted(DataRowChangeEventArgs e)
		{
			base.OnRowDeleted(e);
			if (this.ControlsRowDeleted != null)
			{
				this.ControlsRowDeleted(this, new ControlsRowChangeEvent((ControlsRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleting(DataRowChangeEventArgs e)
		{
			base.OnRowDeleting(e);
			if (this.ControlsRowDeleting != null)
			{
				this.ControlsRowDeleting(this, new ControlsRowChangeEvent((ControlsRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		public void RemoveControlsRow(ControlsRow row)
		{
			base.Rows.Remove(row);
		}

		[DebuggerNonUserCode]
		public static XmlSchemaComplexType GetTypedTableSchema(XmlSchemaSet xs)
		{
			XmlSchemaComplexType xmlSchemaComplexType = new XmlSchemaComplexType();
			XmlSchemaSequence xmlSchemaSequence = new XmlSchemaSequence();
			MappingDB mappingDB = new MappingDB();
			xs.Add(mappingDB.GetSchemaSerializable());
			XmlSchemaAny xmlSchemaAny = new XmlSchemaAny();
			xmlSchemaAny.Namespace = "http://www.w3.org/2001/XMLSchema";
			xmlSchemaAny.MinOccurs = 0m;
			xmlSchemaAny.MaxOccurs = decimal.MaxValue;
			xmlSchemaAny.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny);
			XmlSchemaAny xmlSchemaAny2 = new XmlSchemaAny();
			xmlSchemaAny2.Namespace = "urn:schemas-microsoft-com:xml-diffgram-v1";
			xmlSchemaAny2.MinOccurs = 1m;
			xmlSchemaAny2.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny2);
			XmlSchemaAttribute xmlSchemaAttribute = new XmlSchemaAttribute();
			xmlSchemaAttribute.Name = "namespace";
			xmlSchemaAttribute.FixedValue = mappingDB.Namespace;
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute);
			XmlSchemaAttribute xmlSchemaAttribute2 = new XmlSchemaAttribute();
			xmlSchemaAttribute2.Name = "tableTypeName";
			xmlSchemaAttribute2.FixedValue = "ControlsDataTable";
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute2);
			xmlSchemaComplexType.Particle = xmlSchemaSequence;
			return xmlSchemaComplexType;
		}
	}

	[Serializable]
	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	[XmlSchemaProvider("GetTypedTableSchema")]
	public class ControlMetadataDataTable : DataTable, IEnumerable
	{
		private DataColumn columnName;

		private DataColumn columnLastAdded;

		private DataColumn columnHelpRequestCatchable;

		private DataColumn columnGrabbersType;

		[DebuggerNonUserCode]
		public DataColumn NameColumn => columnName;

		[DebuggerNonUserCode]
		public DataColumn LastAddedColumn => columnLastAdded;

		[DebuggerNonUserCode]
		public DataColumn HelpRequestCatchableColumn => columnHelpRequestCatchable;

		[DebuggerNonUserCode]
		public DataColumn GrabbersTypeColumn => columnGrabbersType;

		[Browsable(false)]
		[DebuggerNonUserCode]
		public int Count => base.Rows.Count;

		[DebuggerNonUserCode]
		public ControlMetadataRow this[int index] => (ControlMetadataRow)base.Rows[index];

		public event ControlMetadataRowChangeEventHandler ControlMetadataRowChanging;

		public event ControlMetadataRowChangeEventHandler ControlMetadataRowChanged;

		public event ControlMetadataRowChangeEventHandler ControlMetadataRowDeleting;

		public event ControlMetadataRowChangeEventHandler ControlMetadataRowDeleted;

		[DebuggerNonUserCode]
		public ControlMetadataDataTable()
		{
			base.TableName = "ControlMetadata";
			BeginInit();
			InitClass();
			EndInit();
		}

		[DebuggerNonUserCode]
		internal ControlMetadataDataTable(DataTable table)
		{
			base.TableName = table.TableName;
			if (table.CaseSensitive != table.DataSet.CaseSensitive)
			{
				base.CaseSensitive = table.CaseSensitive;
			}
			if (table.Locale.ToString() != table.DataSet.Locale.ToString())
			{
				base.Locale = table.Locale;
			}
			if (table.Namespace != table.DataSet.Namespace)
			{
				base.Namespace = table.Namespace;
			}
			base.Prefix = table.Prefix;
			base.MinimumCapacity = table.MinimumCapacity;
		}

		[DebuggerNonUserCode]
		protected ControlMetadataDataTable(SerializationInfo info, StreamingContext context)
			: base(info, context)
		{
			InitVars();
		}

		[DebuggerNonUserCode]
		public void AddControlMetadataRow(ControlMetadataRow row)
		{
			base.Rows.Add(row);
		}

		[DebuggerNonUserCode]
		public ControlMetadataRow AddControlMetadataRow(string Name, DateTime LastAdded, bool HelpRequestCatchable, string GrabbersType)
		{
			ControlMetadataRow controlMetadataRow = (ControlMetadataRow)NewRow();
			controlMetadataRow.ItemArray = new object[4] { Name, LastAdded, HelpRequestCatchable, GrabbersType };
			base.Rows.Add(controlMetadataRow);
			return controlMetadataRow;
		}

		[DebuggerNonUserCode]
		public ControlMetadataRow FindByName(string Name)
		{
			return (ControlMetadataRow)base.Rows.Find(new object[1] { Name });
		}

		[DebuggerNonUserCode]
		public virtual IEnumerator GetEnumerator()
		{
			return base.Rows.GetEnumerator();
		}

		[DebuggerNonUserCode]
		public override DataTable Clone()
		{
			ControlMetadataDataTable controlMetadataDataTable = (ControlMetadataDataTable)base.Clone();
			controlMetadataDataTable.InitVars();
			return controlMetadataDataTable;
		}

		[DebuggerNonUserCode]
		protected override DataTable CreateInstance()
		{
			return new ControlMetadataDataTable();
		}

		[DebuggerNonUserCode]
		internal void InitVars()
		{
			columnName = base.Columns["Name"];
			columnLastAdded = base.Columns["LastAdded"];
			columnHelpRequestCatchable = base.Columns["HelpRequestCatchable"];
			columnGrabbersType = base.Columns["GrabbersType"];
		}

		[DebuggerNonUserCode]
		private void InitClass()
		{
			columnName = new DataColumn("Name", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnName);
			columnLastAdded = new DataColumn("LastAdded", typeof(DateTime), null, MappingType.Element);
			base.Columns.Add(columnLastAdded);
			columnHelpRequestCatchable = new DataColumn("HelpRequestCatchable", typeof(bool), null, MappingType.Element);
			base.Columns.Add(columnHelpRequestCatchable);
			columnGrabbersType = new DataColumn("GrabbersType", typeof(string), null, MappingType.Element);
			base.Columns.Add(columnGrabbersType);
			base.Constraints.Add(new UniqueConstraint("Constraint1", new DataColumn[1] { columnName }, isPrimaryKey: true));
			columnName.AllowDBNull = false;
			columnName.Unique = true;
			columnGrabbersType.DefaultValue = "";
		}

		[DebuggerNonUserCode]
		public ControlMetadataRow NewControlMetadataRow()
		{
			return (ControlMetadataRow)NewRow();
		}

		[DebuggerNonUserCode]
		protected override DataRow NewRowFromBuilder(DataRowBuilder builder)
		{
			return new ControlMetadataRow(builder);
		}

		[DebuggerNonUserCode]
		protected override Type GetRowType()
		{
			return typeof(ControlMetadataRow);
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanged(DataRowChangeEventArgs e)
		{
			base.OnRowChanged(e);
			if (this.ControlMetadataRowChanged != null)
			{
				this.ControlMetadataRowChanged(this, new ControlMetadataRowChangeEvent((ControlMetadataRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowChanging(DataRowChangeEventArgs e)
		{
			base.OnRowChanging(e);
			if (this.ControlMetadataRowChanging != null)
			{
				this.ControlMetadataRowChanging(this, new ControlMetadataRowChangeEvent((ControlMetadataRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleted(DataRowChangeEventArgs e)
		{
			base.OnRowDeleted(e);
			if (this.ControlMetadataRowDeleted != null)
			{
				this.ControlMetadataRowDeleted(this, new ControlMetadataRowChangeEvent((ControlMetadataRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		protected override void OnRowDeleting(DataRowChangeEventArgs e)
		{
			base.OnRowDeleting(e);
			if (this.ControlMetadataRowDeleting != null)
			{
				this.ControlMetadataRowDeleting(this, new ControlMetadataRowChangeEvent((ControlMetadataRow)e.Row, e.Action));
			}
		}

		[DebuggerNonUserCode]
		public void RemoveControlMetadataRow(ControlMetadataRow row)
		{
			base.Rows.Remove(row);
		}

		[DebuggerNonUserCode]
		public static XmlSchemaComplexType GetTypedTableSchema(XmlSchemaSet xs)
		{
			XmlSchemaComplexType xmlSchemaComplexType = new XmlSchemaComplexType();
			XmlSchemaSequence xmlSchemaSequence = new XmlSchemaSequence();
			MappingDB mappingDB = new MappingDB();
			xs.Add(mappingDB.GetSchemaSerializable());
			XmlSchemaAny xmlSchemaAny = new XmlSchemaAny();
			xmlSchemaAny.Namespace = "http://www.w3.org/2001/XMLSchema";
			xmlSchemaAny.MinOccurs = 0m;
			xmlSchemaAny.MaxOccurs = decimal.MaxValue;
			xmlSchemaAny.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny);
			XmlSchemaAny xmlSchemaAny2 = new XmlSchemaAny();
			xmlSchemaAny2.Namespace = "urn:schemas-microsoft-com:xml-diffgram-v1";
			xmlSchemaAny2.MinOccurs = 1m;
			xmlSchemaAny2.ProcessContents = XmlSchemaContentProcessing.Lax;
			xmlSchemaSequence.Items.Add(xmlSchemaAny2);
			XmlSchemaAttribute xmlSchemaAttribute = new XmlSchemaAttribute();
			xmlSchemaAttribute.Name = "namespace";
			xmlSchemaAttribute.FixedValue = mappingDB.Namespace;
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute);
			XmlSchemaAttribute xmlSchemaAttribute2 = new XmlSchemaAttribute();
			xmlSchemaAttribute2.Name = "tableTypeName";
			xmlSchemaAttribute2.FixedValue = "ControlMetadataDataTable";
			xmlSchemaComplexType.Attributes.Add(xmlSchemaAttribute2);
			xmlSchemaComplexType.Particle = xmlSchemaSequence;
			return xmlSchemaComplexType;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class HelpFilesRow : DataRow
	{
		private HelpFilesDataTable tableHelpFiles;

		[DebuggerNonUserCode]
		public string Name
		{
			get
			{
				return (string)base[tableHelpFiles.NameColumn];
			}
			set
			{
				base[tableHelpFiles.NameColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string Extension
		{
			get
			{
				return (string)base[tableHelpFiles.ExtensionColumn];
			}
			set
			{
				base[tableHelpFiles.ExtensionColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		internal HelpFilesRow(DataRowBuilder rb)
			: base(rb)
		{
			tableHelpFiles = (HelpFilesDataTable)base.Table;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class MetadataRow : DataRow
	{
		private MetadataDataTable tableMetadata;

		[DebuggerNonUserCode]
		public DateTime LastChanged
		{
			get
			{
				try
				{
					return (DateTime)base[tableMetadata.LastChangedColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'LastChanged' in table 'Metadata' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableMetadata.LastChangedColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public int CompatibilityVersion
		{
			get
			{
				try
				{
					return (int)base[tableMetadata.CompatibilityVersionColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'CompatibilityVersion' in table 'Metadata' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableMetadata.CompatibilityVersionColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string AppRangeStart
		{
			get
			{
				try
				{
					return (string)base[tableMetadata.AppRangeStartColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'AppRangeStart' in table 'Metadata' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableMetadata.AppRangeStartColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string AppRangeEnd
		{
			get
			{
				try
				{
					return (string)base[tableMetadata.AppRangeEndColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'AppRangeEnd' in table 'Metadata' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableMetadata.AppRangeEndColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		internal MetadataRow(DataRowBuilder rb)
			: base(rb)
		{
			tableMetadata = (MetadataDataTable)base.Table;
		}

		[DebuggerNonUserCode]
		public bool IsLastChangedNull()
		{
			return IsNull(tableMetadata.LastChangedColumn);
		}

		[DebuggerNonUserCode]
		public void SetLastChangedNull()
		{
			base[tableMetadata.LastChangedColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsCompatibilityVersionNull()
		{
			return IsNull(tableMetadata.CompatibilityVersionColumn);
		}

		[DebuggerNonUserCode]
		public void SetCompatibilityVersionNull()
		{
			base[tableMetadata.CompatibilityVersionColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsAppRangeStartNull()
		{
			return IsNull(tableMetadata.AppRangeStartColumn);
		}

		[DebuggerNonUserCode]
		public void SetAppRangeStartNull()
		{
			base[tableMetadata.AppRangeStartColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsAppRangeEndNull()
		{
			return IsNull(tableMetadata.AppRangeEndColumn);
		}

		[DebuggerNonUserCode]
		public void SetAppRangeEndNull()
		{
			base[tableMetadata.AppRangeEndColumn] = Convert.DBNull;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class ControlsRow : DataRow
	{
		private ControlsDataTable tableControls;

		[DebuggerNonUserCode]
		public string Name
		{
			get
			{
				return (string)base[tableControls.NameColumn];
			}
			set
			{
				base[tableControls.NameColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string Type
		{
			get
			{
				try
				{
					return (string)base[tableControls.TypeColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'Type' in table 'Controls' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControls.TypeColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string SubrangeStart
		{
			get
			{
				try
				{
					return (string)base[tableControls.SubrangeStartColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'SubrangeStart' in table 'Controls' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControls.SubrangeStartColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string SubrangeEnd
		{
			get
			{
				try
				{
					return (string)base[tableControls.SubrangeEndColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'SubrangeEnd' in table 'Controls' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControls.SubrangeEndColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string Topic
		{
			get
			{
				try
				{
					return (string)base[tableControls.TopicColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'Topic' in table 'Controls' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControls.TopicColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string ParentName
		{
			get
			{
				try
				{
					return (string)base[tableControls.ParentNameColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'ParentName' in table 'Controls' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControls.ParentNameColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string HelpFile
		{
			get
			{
				try
				{
					return (string)base[tableControls.HelpFileColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'HelpFile' in table 'Controls' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControls.HelpFileColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string HelpNamespace
		{
			get
			{
				try
				{
					return (string)base[tableControls.HelpNamespaceColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'HelpNamespace' in table 'Controls' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControls.HelpNamespaceColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		internal ControlsRow(DataRowBuilder rb)
			: base(rb)
		{
			tableControls = (ControlsDataTable)base.Table;
		}

		[DebuggerNonUserCode]
		public bool IsTypeNull()
		{
			return IsNull(tableControls.TypeColumn);
		}

		[DebuggerNonUserCode]
		public void SetTypeNull()
		{
			base[tableControls.TypeColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsSubrangeStartNull()
		{
			return IsNull(tableControls.SubrangeStartColumn);
		}

		[DebuggerNonUserCode]
		public void SetSubrangeStartNull()
		{
			base[tableControls.SubrangeStartColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsSubrangeEndNull()
		{
			return IsNull(tableControls.SubrangeEndColumn);
		}

		[DebuggerNonUserCode]
		public void SetSubrangeEndNull()
		{
			base[tableControls.SubrangeEndColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsTopicNull()
		{
			return IsNull(tableControls.TopicColumn);
		}

		[DebuggerNonUserCode]
		public void SetTopicNull()
		{
			base[tableControls.TopicColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsParentNameNull()
		{
			return IsNull(tableControls.ParentNameColumn);
		}

		[DebuggerNonUserCode]
		public void SetParentNameNull()
		{
			base[tableControls.ParentNameColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsHelpFileNull()
		{
			return IsNull(tableControls.HelpFileColumn);
		}

		[DebuggerNonUserCode]
		public void SetHelpFileNull()
		{
			base[tableControls.HelpFileColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsHelpNamespaceNull()
		{
			return IsNull(tableControls.HelpNamespaceColumn);
		}

		[DebuggerNonUserCode]
		public void SetHelpNamespaceNull()
		{
			base[tableControls.HelpNamespaceColumn] = Convert.DBNull;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class TypesRow : DataRow
	{
		private TypesDataTable tableTypes;

		[DebuggerNonUserCode]
		public string Type
		{
			get
			{
				return (string)base[tableTypes.TypeColumn];
			}
			set
			{
				base[tableTypes.TypeColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public bool CallingByTypeAllowed
		{
			get
			{
				try
				{
					return (bool)base[tableTypes.CallingByTypeAllowedColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'CallingByTypeAllowed' in table 'Types' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableTypes.CallingByTypeAllowedColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string Topic
		{
			get
			{
				try
				{
					return (string)base[tableTypes.TopicColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'Topic' in table 'Types' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableTypes.TopicColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string HelpFile
		{
			get
			{
				try
				{
					return (string)base[tableTypes.HelpFileColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'HelpFile' in table 'Types' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableTypes.HelpFileColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		internal TypesRow(DataRowBuilder rb)
			: base(rb)
		{
			tableTypes = (TypesDataTable)base.Table;
		}

		[DebuggerNonUserCode]
		public bool IsCallingByTypeAllowedNull()
		{
			return IsNull(tableTypes.CallingByTypeAllowedColumn);
		}

		[DebuggerNonUserCode]
		public void SetCallingByTypeAllowedNull()
		{
			base[tableTypes.CallingByTypeAllowedColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsTopicNull()
		{
			return IsNull(tableTypes.TopicColumn);
		}

		[DebuggerNonUserCode]
		public void SetTopicNull()
		{
			base[tableTypes.TopicColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsHelpFileNull()
		{
			return IsNull(tableTypes.HelpFileColumn);
		}

		[DebuggerNonUserCode]
		public void SetHelpFileNull()
		{
			base[tableTypes.HelpFileColumn] = Convert.DBNull;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class ControlMetadataRow : DataRow
	{
		private ControlMetadataDataTable tableControlMetadata;

		[DebuggerNonUserCode]
		public string Name
		{
			get
			{
				return (string)base[tableControlMetadata.NameColumn];
			}
			set
			{
				base[tableControlMetadata.NameColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public DateTime LastAdded
		{
			get
			{
				try
				{
					return (DateTime)base[tableControlMetadata.LastAddedColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'LastAdded' in table 'ControlMetadata' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControlMetadata.LastAddedColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public bool HelpRequestCatchable
		{
			get
			{
				try
				{
					return (bool)base[tableControlMetadata.HelpRequestCatchableColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'HelpRequestCatchable' in table 'ControlMetadata' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControlMetadata.HelpRequestCatchableColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		public string GrabbersType
		{
			get
			{
				try
				{
					return (string)base[tableControlMetadata.GrabbersTypeColumn];
				}
				catch (InvalidCastException innerException)
				{
					throw new StrongTypingException("The value for column 'GrabbersType' in table 'ControlMetadata' is DBNull.", innerException);
				}
			}
			set
			{
				base[tableControlMetadata.GrabbersTypeColumn] = value;
			}
		}

		[DebuggerNonUserCode]
		internal ControlMetadataRow(DataRowBuilder rb)
			: base(rb)
		{
			tableControlMetadata = (ControlMetadataDataTable)base.Table;
		}

		[DebuggerNonUserCode]
		public bool IsLastAddedNull()
		{
			return IsNull(tableControlMetadata.LastAddedColumn);
		}

		[DebuggerNonUserCode]
		public void SetLastAddedNull()
		{
			base[tableControlMetadata.LastAddedColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsHelpRequestCatchableNull()
		{
			return IsNull(tableControlMetadata.HelpRequestCatchableColumn);
		}

		[DebuggerNonUserCode]
		public void SetHelpRequestCatchableNull()
		{
			base[tableControlMetadata.HelpRequestCatchableColumn] = Convert.DBNull;
		}

		[DebuggerNonUserCode]
		public bool IsGrabbersTypeNull()
		{
			return IsNull(tableControlMetadata.GrabbersTypeColumn);
		}

		[DebuggerNonUserCode]
		public void SetGrabbersTypeNull()
		{
			base[tableControlMetadata.GrabbersTypeColumn] = Convert.DBNull;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class HelpFilesRowChangeEvent : EventArgs
	{
		private HelpFilesRow eventRow;

		private DataRowAction eventAction;

		[DebuggerNonUserCode]
		public HelpFilesRow Row => eventRow;

		[DebuggerNonUserCode]
		public DataRowAction Action => eventAction;

		[DebuggerNonUserCode]
		public HelpFilesRowChangeEvent(HelpFilesRow row, DataRowAction action)
		{
			eventRow = row;
			eventAction = action;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class MetadataRowChangeEvent : EventArgs
	{
		private MetadataRow eventRow;

		private DataRowAction eventAction;

		[DebuggerNonUserCode]
		public MetadataRow Row => eventRow;

		[DebuggerNonUserCode]
		public DataRowAction Action => eventAction;

		[DebuggerNonUserCode]
		public MetadataRowChangeEvent(MetadataRow row, DataRowAction action)
		{
			eventRow = row;
			eventAction = action;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class ControlsRowChangeEvent : EventArgs
	{
		private ControlsRow eventRow;

		private DataRowAction eventAction;

		[DebuggerNonUserCode]
		public ControlsRow Row => eventRow;

		[DebuggerNonUserCode]
		public DataRowAction Action => eventAction;

		[DebuggerNonUserCode]
		public ControlsRowChangeEvent(ControlsRow row, DataRowAction action)
		{
			eventRow = row;
			eventAction = action;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class TypesRowChangeEvent : EventArgs
	{
		private TypesRow eventRow;

		private DataRowAction eventAction;

		[DebuggerNonUserCode]
		public TypesRow Row => eventRow;

		[DebuggerNonUserCode]
		public DataRowAction Action => eventAction;

		[DebuggerNonUserCode]
		public TypesRowChangeEvent(TypesRow row, DataRowAction action)
		{
			eventRow = row;
			eventAction = action;
		}
	}

	[GeneratedCode("System.Data.Design.TypedDataSetGenerator", "2.0.0.0")]
	public class ControlMetadataRowChangeEvent : EventArgs
	{
		private ControlMetadataRow eventRow;

		private DataRowAction eventAction;

		[DebuggerNonUserCode]
		public ControlMetadataRow Row => eventRow;

		[DebuggerNonUserCode]
		public DataRowAction Action => eventAction;

		[DebuggerNonUserCode]
		public ControlMetadataRowChangeEvent(ControlMetadataRow row, DataRowAction action)
		{
			eventRow = row;
			eventAction = action;
		}
	}

	private HelpFilesDataTable tableHelpFiles;

	private MetadataDataTable tableMetadata;

	private ControlsDataTable tableControls;

	private TypesDataTable tableTypes;

	private ControlMetadataDataTable tableControlMetadata;

	private SchemaSerializationMode _schemaSerializationMode = SchemaSerializationMode.IncludeSchema;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DebuggerNonUserCode]
	public HelpFilesDataTable HelpFiles => tableHelpFiles;

	[DebuggerNonUserCode]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public MetadataDataTable Metadata => tableMetadata;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DebuggerNonUserCode]
	[Browsable(false)]
	public ControlsDataTable Controls => tableControls;

	[DebuggerNonUserCode]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TypesDataTable Types => tableTypes;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DebuggerNonUserCode]
	[Browsable(false)]
	public ControlMetadataDataTable ControlMetadata => tableControlMetadata;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DebuggerNonUserCode]
	[Browsable(true)]
	public override SchemaSerializationMode SchemaSerializationMode
	{
		get
		{
			return _schemaSerializationMode;
		}
		set
		{
			_schemaSerializationMode = value;
		}
	}

	[DebuggerNonUserCode]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new DataTableCollection Tables => base.Tables;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DebuggerNonUserCode]
	public new DataRelationCollection Relations => base.Relations;

	public MappingDB ConstructTypeExportDB()
	{
		MappingDB mappingDB = new MappingDB();
		foreach (TypesRow type in Types)
		{
			mappingDB.HelpFiles.Update(HelpFiles.FindByName(type.HelpFile));
			mappingDB.Types.AddTypesRow(type.Type, type.CallingByTypeAllowed, type.Topic, type.HelpFile);
		}
		return mappingDB;
	}

	public void Update(MappingDB db)
	{
		HelpFiles.Update(db.HelpFiles);
		Types.Update(db.Types);
	}

	[DebuggerNonUserCode]
	public MappingDB()
	{
		BeginInit();
		InitClass();
		CollectionChangeEventHandler value = SchemaChanged;
		base.Tables.CollectionChanged += value;
		base.Relations.CollectionChanged += value;
		EndInit();
	}

	[DebuggerNonUserCode]
	protected MappingDB(SerializationInfo info, StreamingContext context)
		: base(info, context, ConstructSchema: false)
	{
		if (IsBinarySerialized(info, context))
		{
			InitVars(initTable: false);
			CollectionChangeEventHandler value = SchemaChanged;
			Tables.CollectionChanged += value;
			Relations.CollectionChanged += value;
			return;
		}
		string s = (string)info.GetValue("XmlSchema", typeof(string));
		if (DetermineSchemaSerializationMode(info, context) == SchemaSerializationMode.IncludeSchema)
		{
			DataSet dataSet = new DataSet();
			dataSet.ReadXmlSchema(new XmlTextReader(new StringReader(s)));
			if (dataSet.Tables["HelpFiles"] != null)
			{
				base.Tables.Add(new HelpFilesDataTable(dataSet.Tables["HelpFiles"]));
			}
			if (dataSet.Tables["Metadata"] != null)
			{
				base.Tables.Add(new MetadataDataTable(dataSet.Tables["Metadata"]));
			}
			if (dataSet.Tables["Controls"] != null)
			{
				base.Tables.Add(new ControlsDataTable(dataSet.Tables["Controls"]));
			}
			if (dataSet.Tables["Types"] != null)
			{
				base.Tables.Add(new TypesDataTable(dataSet.Tables["Types"]));
			}
			if (dataSet.Tables["ControlMetadata"] != null)
			{
				base.Tables.Add(new ControlMetadataDataTable(dataSet.Tables["ControlMetadata"]));
			}
			base.DataSetName = dataSet.DataSetName;
			base.Prefix = dataSet.Prefix;
			base.Namespace = dataSet.Namespace;
			base.Locale = dataSet.Locale;
			base.CaseSensitive = dataSet.CaseSensitive;
			base.EnforceConstraints = dataSet.EnforceConstraints;
			Merge(dataSet, preserveChanges: false, MissingSchemaAction.Add);
			InitVars();
		}
		else
		{
			ReadXmlSchema(new XmlTextReader(new StringReader(s)));
		}
		GetSerializationData(info, context);
		CollectionChangeEventHandler value2 = SchemaChanged;
		base.Tables.CollectionChanged += value2;
		Relations.CollectionChanged += value2;
	}

	[DebuggerNonUserCode]
	protected override void InitializeDerivedDataSet()
	{
		BeginInit();
		InitClass();
		EndInit();
	}

	[DebuggerNonUserCode]
	public override DataSet Clone()
	{
		MappingDB mappingDB = (MappingDB)base.Clone();
		mappingDB.InitVars();
		mappingDB.SchemaSerializationMode = SchemaSerializationMode;
		return mappingDB;
	}

	[DebuggerNonUserCode]
	protected override bool ShouldSerializeTables()
	{
		return false;
	}

	[DebuggerNonUserCode]
	protected override bool ShouldSerializeRelations()
	{
		return false;
	}

	[DebuggerNonUserCode]
	protected override void ReadXmlSerializable(XmlReader reader)
	{
		if (DetermineSchemaSerializationMode(reader) == SchemaSerializationMode.IncludeSchema)
		{
			Reset();
			DataSet dataSet = new DataSet();
			dataSet.ReadXml(reader);
			if (dataSet.Tables["HelpFiles"] != null)
			{
				base.Tables.Add(new HelpFilesDataTable(dataSet.Tables["HelpFiles"]));
			}
			if (dataSet.Tables["Metadata"] != null)
			{
				base.Tables.Add(new MetadataDataTable(dataSet.Tables["Metadata"]));
			}
			if (dataSet.Tables["Controls"] != null)
			{
				base.Tables.Add(new ControlsDataTable(dataSet.Tables["Controls"]));
			}
			if (dataSet.Tables["Types"] != null)
			{
				base.Tables.Add(new TypesDataTable(dataSet.Tables["Types"]));
			}
			if (dataSet.Tables["ControlMetadata"] != null)
			{
				base.Tables.Add(new ControlMetadataDataTable(dataSet.Tables["ControlMetadata"]));
			}
			base.DataSetName = dataSet.DataSetName;
			base.Prefix = dataSet.Prefix;
			base.Namespace = dataSet.Namespace;
			base.Locale = dataSet.Locale;
			base.CaseSensitive = dataSet.CaseSensitive;
			base.EnforceConstraints = dataSet.EnforceConstraints;
			Merge(dataSet, preserveChanges: false, MissingSchemaAction.Add);
			InitVars();
		}
		else
		{
			ReadXml(reader);
			InitVars();
		}
	}

	[DebuggerNonUserCode]
	protected override XmlSchema GetSchemaSerializable()
	{
		MemoryStream memoryStream = new MemoryStream();
		WriteXmlSchema(new XmlTextWriter(memoryStream, null));
		memoryStream.Position = 0L;
		return XmlSchema.Read(new XmlTextReader(memoryStream), null);
	}

	[DebuggerNonUserCode]
	internal void InitVars()
	{
		InitVars(initTable: true);
	}

	[DebuggerNonUserCode]
	internal void InitVars(bool initTable)
	{
		tableHelpFiles = (HelpFilesDataTable)base.Tables["HelpFiles"];
		if (initTable && tableHelpFiles != null)
		{
			tableHelpFiles.InitVars();
		}
		tableMetadata = (MetadataDataTable)base.Tables["Metadata"];
		if (initTable && tableMetadata != null)
		{
			tableMetadata.InitVars();
		}
		tableControls = (ControlsDataTable)base.Tables["Controls"];
		if (initTable && tableControls != null)
		{
			tableControls.InitVars();
		}
		tableTypes = (TypesDataTable)base.Tables["Types"];
		if (initTable && tableTypes != null)
		{
			tableTypes.InitVars();
		}
		tableControlMetadata = (ControlMetadataDataTable)base.Tables["ControlMetadata"];
		if (initTable && tableControlMetadata != null)
		{
			tableControlMetadata.InitVars();
		}
	}

	[DebuggerNonUserCode]
	private void InitClass()
	{
		base.DataSetName = "MappingDB";
		base.Prefix = "";
		base.Namespace = "http://tempuri.org/MappingDB.xsd";
		base.Locale = new CultureInfo("");
		base.EnforceConstraints = true;
		SchemaSerializationMode = SchemaSerializationMode.IncludeSchema;
		tableHelpFiles = new HelpFilesDataTable();
		base.Tables.Add(tableHelpFiles);
		tableMetadata = new MetadataDataTable();
		base.Tables.Add(tableMetadata);
		tableControls = new ControlsDataTable();
		base.Tables.Add(tableControls);
		tableTypes = new TypesDataTable();
		base.Tables.Add(tableTypes);
		tableControlMetadata = new ControlMetadataDataTable();
		base.Tables.Add(tableControlMetadata);
		ForeignKeyConstraint foreignKeyConstraint = new ForeignKeyConstraint("ControlToHelpFile", new DataColumn[1] { tableHelpFiles.NameColumn }, new DataColumn[1] { tableControls.HelpFileColumn });
		tableControls.Constraints.Add(foreignKeyConstraint);
		foreignKeyConstraint.AcceptRejectRule = AcceptRejectRule.None;
		foreignKeyConstraint.DeleteRule = Rule.None;
		foreignKeyConstraint.UpdateRule = Rule.None;
		foreignKeyConstraint = new ForeignKeyConstraint("ControlToType", new DataColumn[1] { tableTypes.TypeColumn }, new DataColumn[1] { tableControls.TypeColumn });
		tableControls.Constraints.Add(foreignKeyConstraint);
		foreignKeyConstraint.AcceptRejectRule = AcceptRejectRule.None;
		foreignKeyConstraint.DeleteRule = Rule.None;
		foreignKeyConstraint.UpdateRule = Rule.None;
		foreignKeyConstraint = new ForeignKeyConstraint("ChildToParent", new DataColumn[1] { tableControls.NameColumn }, new DataColumn[1] { tableControls.ParentNameColumn });
		tableControls.Constraints.Add(foreignKeyConstraint);
		foreignKeyConstraint.AcceptRejectRule = AcceptRejectRule.None;
		foreignKeyConstraint.DeleteRule = Rule.Cascade;
		foreignKeyConstraint.UpdateRule = Rule.None;
		foreignKeyConstraint = new ForeignKeyConstraint("TypesToHelpFiles", new DataColumn[1] { tableHelpFiles.NameColumn }, new DataColumn[1] { tableTypes.HelpFileColumn });
		tableTypes.Constraints.Add(foreignKeyConstraint);
		foreignKeyConstraint.AcceptRejectRule = AcceptRejectRule.None;
		foreignKeyConstraint.DeleteRule = Rule.None;
		foreignKeyConstraint.UpdateRule = Rule.None;
		foreignKeyConstraint = new ForeignKeyConstraint("FK_Controls_ControlMetadata", new DataColumn[1] { tableControls.NameColumn }, new DataColumn[1] { tableControlMetadata.NameColumn });
		tableControlMetadata.Constraints.Add(foreignKeyConstraint);
		foreignKeyConstraint.AcceptRejectRule = AcceptRejectRule.None;
		foreignKeyConstraint.DeleteRule = Rule.Cascade;
		foreignKeyConstraint.UpdateRule = Rule.None;
	}

	[DebuggerNonUserCode]
	private bool ShouldSerializeHelpFiles()
	{
		return false;
	}

	[DebuggerNonUserCode]
	private bool ShouldSerializeMetadata()
	{
		return false;
	}

	[DebuggerNonUserCode]
	private bool ShouldSerializeControls()
	{
		return false;
	}

	[DebuggerNonUserCode]
	private bool ShouldSerializeTypes()
	{
		return false;
	}

	[DebuggerNonUserCode]
	private bool ShouldSerializeControlMetadata()
	{
		return false;
	}

	[DebuggerNonUserCode]
	private void SchemaChanged(object sender, CollectionChangeEventArgs e)
	{
		if (e.Action == CollectionChangeAction.Remove)
		{
			InitVars();
		}
	}

	[DebuggerNonUserCode]
	public static XmlSchemaComplexType GetTypedDataSetSchema(XmlSchemaSet xs)
	{
		MappingDB mappingDB = new MappingDB();
		XmlSchemaComplexType xmlSchemaComplexType = new XmlSchemaComplexType();
		XmlSchemaSequence xmlSchemaSequence = new XmlSchemaSequence();
		xs.Add(mappingDB.GetSchemaSerializable());
		XmlSchemaAny xmlSchemaAny = new XmlSchemaAny();
		xmlSchemaAny.Namespace = mappingDB.Namespace;
		xmlSchemaSequence.Items.Add(xmlSchemaAny);
		xmlSchemaComplexType.Particle = xmlSchemaSequence;
		return xmlSchemaComplexType;
	}
}
