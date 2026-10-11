using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridHierarchyLevel
{
	internal PropertyDescriptorCollection itemProperties;

	internal int level;

	internal GridModelDataBinder binder;

	internal GridBoundColumnsCollection internalGridColumns;

	internal GridBoundColumnsCollection gridColumns;

	internal int[] coveredCells;

	internal GridModel gridModel;

	internal PropertyDescriptor relation;

	internal bool showHeaders = true;

	internal object table;

	internal GridStyleInfo headerStyle = new GridStyleInfo();

	internal GridStyleInfo rowStyle = new GridStyleInfo();

	internal int rowCount = 1;

	internal int headerTopRow = -1;

	private int[] lineBreaks = new int[0];

	private bool inInitializeColumns;

	public GridStyleInfo RowStyle => rowStyle;

	public GridStyleInfo HeaderStyle => headerStyle;

	public PropertyDescriptor Relation => relation;

	public GridBoundColumnsCollection InternalColumns
	{
		get
		{
			if (gridColumns.Count != 0)
			{
				return gridColumns;
			}
			return internalGridColumns;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Localizable(true)]
	public GridBoundColumnsCollection GridBoundColumns
	{
		get
		{
			return gridColumns;
		}
		set
		{
			if (gridColumns != value)
			{
				gridColumns = value;
				_InitializeColumns(table, itemProperties);
				OnGridBoundColumnsChanged(EventArgs.Empty);
			}
		}
	}

	public int LevelIndex => level;

	public int RowCountPerRecord => rowCount;

	public bool ShowHeaders
	{
		get
		{
			return showHeaders;
		}
		set
		{
			showHeaders = value;
			binder.SynchronizeRowHeaderCount();
			binder.OnGridBoundColumnsChanged(EventArgs.Empty);
		}
	}

	public event EventHandler GridBoundColumnsChanged;

	internal GridHierarchyLevel(GridModelDataBinder binder, int n)
	{
		level = n;
		this.binder = binder;
		internalGridColumns = binder.CreateBoundColumnsCollection();
		gridColumns = binder.CreateBoundColumnsCollection();
		gridModel = binder.gridModel;
	}

	private void OnGridBoundColumnsChanged(EventArgs e)
	{
		if (this.GridBoundColumnsChanged != null)
		{
			this.GridBoundColumnsChanged(this, e);
		}
	}

	public int GetColCount()
	{
		if (rowCount == 1)
		{
			return InternalColumns.Count;
		}
		int num = 0;
		int num2 = 0;
		for (int i = 0; i < rowCount; i++)
		{
			num = Math.Max(lineBreaks[i] - num2 - 1, num);
			num2 = lineBreaks[i];
		}
		return num;
	}

	public int RowFieldToField(int row, int fieldNum)
	{
		if (lineBreaks == null || lineBreaks.Length == 0)
		{
			return fieldNum;
		}
		if (row >= lineBreaks.Length)
		{
			return -1;
		}
		int num = ((row > 0) ? lineBreaks[row - 1] : 0);
		if (fieldNum < 0 || num + fieldNum >= lineBreaks[row] - 1)
		{
			return -1;
		}
		return num + fieldNum;
	}

	public int FieldToRowField(int fieldNum, out int row)
	{
		if (rowCount == 1)
		{
			row = 0;
			return fieldNum;
		}
		int num = 0;
		for (row = 0; row < rowCount; row++)
		{
			if (fieldNum < lineBreaks[row])
			{
				return fieldNum - num;
			}
			num = lineBreaks[row];
		}
		return -1;
	}

	public void LayoutColumns(string[] mappingNames)
	{
		GridBoundColumnsCollection gridBoundColumnsCollection = binder.CreateBoundColumnsCollection();
		GridBoundColumnsCollection internalColumns = InternalColumns;
		rowCount = 1;
		ArrayList arrayList = new ArrayList();
		binder.ResetRecordState();
		for (int i = 0; i < mappingNames.Length; i++)
		{
			int num = -1;
			if (mappingNames[i] != null && mappingNames[i].Length > 0)
			{
				if (mappingNames[i] == ".")
				{
					arrayList.Add(i + 1);
					rowCount++;
				}
				else if (mappingNames[i] != "-")
				{
					for (int j = 0; j < internalColumns.Count; j++)
					{
						if (internalColumns[j].MappingName == mappingNames[i])
						{
							num = j;
							break;
						}
					}
				}
			}
			if (num != -1)
			{
				gridBoundColumnsCollection.Add(internalColumns[num]);
				continue;
			}
			GridBoundColumn gridBoundColumn = InternalColumns.CreateBoundColumn(null);
			if (GridUtil.IsEmpty(mappingNames[i]))
			{
				gridBoundColumn.StyleInfo.Enabled = false;
			}
			gridBoundColumnsCollection.Add(gridBoundColumn);
		}
		gridColumns = gridBoundColumnsCollection;
		arrayList.Add(gridBoundColumnsCollection.Count + 1);
		lineBreaks = (int[])arrayList.ToArray(typeof(int));
		coveredCells = new int[gridBoundColumnsCollection.Count];
		for (int k = 0; k < coveredCells.Length; k++)
		{
			coveredCells[k] = -1;
		}
		int num2 = -1;
		for (int l = 0; l < mappingNames.Length; l++)
		{
			if (mappingNames[l] != null && mappingNames[l] == "-")
			{
				if (num2 != -1)
				{
					coveredCells[l] = num2;
					coveredCells[num2] = num2;
				}
			}
			else
			{
				num2 = l;
			}
		}
		binder.SynchronizeColCount();
		binder.SynchronizeRowHeaderCount();
		binder.OnGridBoundColumnsChanged(EventArgs.Empty);
	}

	private void CreateGridColumn(PropertyDescriptor pd)
	{
		internalGridColumns.Add(_CreateGridColumn(pd));
	}

	private GridBoundColumn _CreateGridColumn(PropertyDescriptor pd)
	{
		GridBoundColumn gridBoundColumn = InternalColumns.CreateBoundColumn(pd);
		_InitGridColumn(gridBoundColumn, pd);
		return gridBoundColumn;
	}

	private void _InitGridColumn(GridBoundColumn gcs, PropertyDescriptor pd)
	{
		bool autoInitCellTypes = GridModelDataBinder.AutoInitCellTypes;
		gcs.PropertyDescriptor = pd;
		Type propertyType = pd.PropertyType;
		if (gcs.StyleInfo.IsEmpty)
		{
			gcs.StyleInfo.CellValueType = pd.PropertyType;
			if (propertyType.Equals(typeof(bool)))
			{
				if (autoInitCellTypes)
				{
					gcs.StyleInfo.CellType = "CheckBox";
					gcs.StyleInfo.HorizontalAlignment = GridHorizontalAlignment.Center;
				}
			}
			else if (!propertyType.Equals(typeof(string)))
			{
				if (propertyType.Equals(typeof(DateTime)))
				{
					gcs.StyleInfo.Format = "d";
					if (autoInitCellTypes)
					{
						gcs.StyleInfo.CellType = "MonthCalendar";
					}
				}
				else if (propertyType.Equals(typeof(short)) || propertyType.Equals(typeof(int)) || propertyType.Equals(typeof(long)) || propertyType.Equals(typeof(ushort)) || propertyType.Equals(typeof(uint)) || propertyType.Equals(typeof(ulong)) || propertyType.Equals(typeof(decimal)) || propertyType.Equals(typeof(double)) || propertyType.Equals(typeof(float)) || propertyType.Equals(typeof(byte)) || propertyType.Equals(typeof(sbyte)))
				{
					gcs.StyleInfo.Format = "G";
					gcs.StyleInfo.HorizontalAlignment = GridHorizontalAlignment.Right;
					gcs.StyleInfo.RightToLeft = RightToLeft.No;
				}
				else if (propertyType == typeof(decimal))
				{
					gcs.StyleInfo.HorizontalAlignment = GridHorizontalAlignment.Right;
					gcs.StyleInfo.RightToLeft = RightToLeft.No;
				}
			}
		}
		else if (!gcs.StyleInfo.HasCellValueType)
		{
			gcs.StyleInfo.CellValueType = pd.PropertyType;
		}
		if (gcs.MappingName.Contains(".") && binder.UseComplexBinding)
		{
			gcs.MappingName = gcs.MappingName;
		}
		else
		{
			gcs.MappingName = pd.Name;
		}
	}

	private bool IsRightToLeft()
	{
		if (gridModel.ActiveGridView != null)
		{
			return gridModel.ActiveGridView.IsRightToLeft();
		}
		return false;
	}

	private void _InitializeColumns(GridBoundColumnsCollection boundColums, ITypedList list)
	{
		_InitializeColumns(boundColums, (list != null) ? list.GetItemProperties(null) : new PropertyDescriptorCollection(new PropertyDescriptor[0]));
	}

	private void _InitializeColumns(GridBoundColumnsCollection boundColums, PropertyDescriptorCollection pdc)
	{
		itemProperties = pdc;
		int count = itemProperties.Count;
		for (int i = 0; i < count; i++)
		{
			PropertyDescriptor propertyDescriptor = itemProperties[i];
			if (propertyDescriptor.IsBrowsable && !GridListUtil.PropertyDescriptorIsARelation(propertyDescriptor))
			{
				GridBoundColumn column = _CreateGridColumn(propertyDescriptor);
				boundColums.Add(column);
			}
		}
	}

	internal void _InitializeColumns(object table)
	{
		_InitializeColumns(table, GridListUtil.GetItemProperties(table));
	}

	internal void _InitializeColumns(object table, PropertyDescriptorCollection pdc)
	{
		if (inInitializeColumns)
		{
			return;
		}
		this.table = table;
		try
		{
			gridModel.BeginUpdate(BeginUpdateOptions.None);
			inInitializeColumns = true;
			internalGridColumns.Clear();
			if (gridColumns.Count == 0)
			{
				_InitializeColumns(internalGridColumns, pdc);
				binder.SynchronizeColCount();
			}
			else
			{
				itemProperties = pdc;
				int count = gridColumns.Count;
				for (int i = 0; i < count; i++)
				{
					string mappingName = gridColumns[i].MappingName;
					if (mappingName.Length <= 0)
					{
						continue;
					}
					bool flag = false;
					for (int j = 0; j < itemProperties.Count; j++)
					{
						if (itemProperties[j].Name == mappingName)
						{
							_InitGridColumn(gridColumns[i], itemProperties[j]);
							flag = true;
							break;
						}
					}
					if (!flag)
					{
						GridBoundColumn column = gridColumns[i];
						PropertyDescriptor propertyDescriptor = GetPropertyDescriptor(itemProperties, column);
						if (pdc != null && binder.UseComplexBinding)
						{
							_InitGridColumn(gridColumns[i], propertyDescriptor);
						}
						else
						{
							gridColumns[i].PropertyDescriptor = null;
						}
					}
				}
				binder.SynchronizeColCount();
			}
			gridModel.Data.RowCount = 1;
			binder.SynchronizeRowHeaderCount();
		}
		finally
		{
			inInitializeColumns = false;
			gridModel.EndUpdate(update: true);
		}
	}

	private PropertyDescriptor GetPropertyDescriptor(PropertyDescriptorCollection pdc, GridBoundColumn column)
	{
		if (column.MappingName.Contains("."))
		{
			string[] array = column.MappingName.Split(new char[1] { '.' }, StringSplitOptions.RemoveEmptyEntries);
			if (array.Length > 0)
			{
				_ = array[array.Length - 1];
				PropertyDescriptorCollection propertyDescriptorCollection = null;
				for (int i = 0; i <= array.Length - 2; i++)
				{
					propertyDescriptorCollection = pdc;
					foreach (PropertyDescriptor item in propertyDescriptorCollection)
					{
						if (item.Name.Equals(array[i]))
						{
							pdc = GridListUtil.GetInstanceProperties(item.PropertyType, isCollection: false);
							break;
						}
					}
					if (pdc.Equals(propertyDescriptorCollection))
					{
						return null;
					}
				}
				string value = array[array.Length - 1];
				foreach (PropertyDescriptor item2 in pdc)
				{
					if (item2.Name.Equals(value))
					{
						return item2;
					}
				}
			}
		}
		return null;
	}

	internal GridHierarchyLevel AddRelation(string nestedDataMember)
	{
		PropertyDescriptorCollection propertyDescriptorCollection = itemProperties;
		int count = propertyDescriptorCollection.Count;
		for (int i = 0; i < count; i++)
		{
			PropertyDescriptor propertyDescriptor = propertyDescriptorCollection[i];
			if (propertyDescriptor.IsBrowsable && GridListUtil.PropertyDescriptorIsARelation(propertyDescriptor) && propertyDescriptor.Name == nestedDataMember)
			{
				relation = propertyDescriptor;
				if (table is IList { Count: >0 } list)
				{
					gridModel.BeginUpdate();
					GridHierarchyLevel gridHierarchyLevel = new GridHierarchyLevel(binder, binder.levels.Count);
					binder.levels.Add(gridHierarchyLevel);
					object value = propertyDescriptor.GetValue(list[0]);
					gridHierarchyLevel._InitializeColumns(value);
					binder.ResetRecordState();
					binder.OnGridBoundColumnsChanged(EventArgs.Empty);
					gridModel.EndUpdate();
					return gridHierarchyLevel;
				}
				DataRelation dataRelation = GridListUtil.GetRelation(propertyDescriptor);
				if (dataRelation != null && dataRelation.ChildTable != null)
				{
					gridModel.BeginUpdate();
					GridHierarchyLevel gridHierarchyLevel2 = new GridHierarchyLevel(binder, binder.levels.Count);
					binder.levels.Add(gridHierarchyLevel2);
					ITypedList defaultView = dataRelation.ChildTable.DefaultView;
					gridHierarchyLevel2._InitializeColumns(defaultView);
					binder.ResetRecordState();
					binder.OnGridBoundColumnsChanged(EventArgs.Empty);
					gridModel.EndUpdate();
					return gridHierarchyLevel2;
				}
				PropertyDescriptorCollection propertyDescriptorCollection2 = GridListUtil.GetItemProperties(propertyDescriptor.PropertyType);
				if (propertyDescriptorCollection2.Count > 0)
				{
					gridModel.BeginUpdate();
					GridHierarchyLevel gridHierarchyLevel3 = new GridHierarchyLevel(binder, binder.levels.Count);
					binder.levels.Add(gridHierarchyLevel3);
					gridHierarchyLevel3._InitializeColumns((object)null, propertyDescriptorCollection2);
					binder.ResetRecordState();
					binder.OnGridBoundColumnsChanged(EventArgs.Empty);
					gridModel.EndUpdate();
					return gridHierarchyLevel3;
				}
				return null;
			}
		}
		return null;
	}
}
