using System;
using System.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[ToolboxItem(false)]
[DesignTimeVisible(false)]
[TypeConverter(typeof(DataColumnInfoConverter))]
public sealed class AutoCompleteDataColumnInfo : Component
{
	private string columnHeaderTextValue;

	private int minColumnWidthValue;

	private bool visible;

	private bool matchingColumn;

	private bool imageColumn;

	private string columnName;

	[DocumentationExclude]
	public AutoCompleteDataColumnInfoCollection columnsCollection;

	[Browsable(true)]
	[Category("Appearance")]
	public int MinColumnWidth
	{
		get
		{
			return minColumnWidthValue;
		}
		set
		{
			if (value > 0)
			{
				minColumnWidthValue = value;
			}
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	public string ColumnHeaderText
	{
		get
		{
			return columnHeaderTextValue;
		}
		set
		{
			columnHeaderTextValue = value;
			if (columnName == string.Empty)
			{
				columnName = value;
			}
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	public string ColumnName => columnName;

	[Category("Appearance")]
	[Browsable(true)]
	public bool Visible
	{
		get
		{
			return visible;
		}
		set
		{
			if (!matchingColumn || value)
			{
				visible = value;
			}
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	public bool MatchingColumn
	{
		get
		{
			return matchingColumn;
		}
		set
		{
			bool flag = matchingColumn;
			matchingColumn = value;
			if (columnsCollection == null || matchingColumn == flag || !value)
			{
				return;
			}
			visible = true;
			foreach (AutoCompleteDataColumnInfo item in columnsCollection)
			{
				if (item != this)
				{
					item.MatchingColumn = false;
				}
			}
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	public bool ImageColumn
	{
		get
		{
			return imageColumn;
		}
		set
		{
			bool flag = imageColumn;
			imageColumn = value;
			if (columnsCollection == null || imageColumn == flag || !value)
			{
				return;
			}
			foreach (AutoCompleteDataColumnInfo item in columnsCollection)
			{
				if (item != this)
				{
					item.ImageColumn = false;
				}
			}
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	public event PropertyChangedEventHandler PropertyChanged;

	public AutoCompleteDataColumnInfo()
	{
		columnHeaderTextValue = string.Empty;
		minColumnWidthValue = AutoComplete.MinColumnWidth;
		visible = true;
		columnName = string.Empty;
	}

	public AutoCompleteDataColumnInfo(string headerText, int width, bool visible)
	{
		columnHeaderTextValue = headerText;
		minColumnWidthValue = width;
		this.visible = visible;
		columnName = headerText;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMinColumnWidth()
	{
		return MinColumnWidth != AutoComplete.MinColumnWidth;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private void ResetMinColumnWidth()
	{
		MinColumnWidth = AutoComplete.MinColumnWidth;
	}

	private void OnPropertyChanged(PropertyChangedEventArgs args)
	{
		if (this.PropertyChanged != null)
		{
			try
			{
				this.PropertyChanged(this, args);
			}
			catch (Exception)
			{
			}
		}
	}

	public void SetColumnName(string columnName)
	{
		this.columnName = columnName;
	}
}
