using System;
using System.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[ToolboxItem(false)]
[TypeConverter(typeof(MaskedEditDataGroupInfoConverter))]
[DesignTimeVisible(false)]
public sealed class MaskedEditDataGroupInfo : Component
{
	private MaskGroupAlignment dataGroupAlignment;

	private int dataGroupSize;

	private string dataGroupName;

	private string dataGroupValue = string.Empty;

	[DocumentationExclude]
	internal MaskedEditDataGroupInfoCollection dataGroups;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public MaskedEditDataGroupInfoCollection DataGroupsCollection
	{
		get
		{
			return dataGroups;
		}
		set
		{
			dataGroups = value;
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	public int DataGroupSize
	{
		get
		{
			return dataGroupSize;
		}
		set
		{
			if (value > 0)
			{
				dataGroupSize = value;
			}
		}
	}

	[Browsable(false)]
	[Category("Data")]
	public string DataGroupValue
	{
		get
		{
			if (dataGroups != null)
			{
				dataGroupValue = dataGroups.GetDataGroupValue(this);
				if (dataGroupValue == null)
				{
					dataGroupValue = string.Empty;
				}
			}
			else
			{
				dataGroupValue = string.Empty;
			}
			return dataGroupValue;
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	public string DataGroupName
	{
		get
		{
			return dataGroupName;
		}
		set
		{
			dataGroupName = value;
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	public MaskGroupAlignment DataGroupAlignment
	{
		get
		{
			return dataGroupAlignment;
		}
		set
		{
			dataGroupAlignment = value;
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	public event PropertyChangedEventHandler PropertyChanged;

	public MaskedEditDataGroupInfo()
	{
		dataGroupName = string.Empty;
		dataGroupSize = 0;
		dataGroupAlignment = MaskGroupAlignment.None;
	}

	public MaskedEditDataGroupInfo(string dataGroupName, int dataGroupSize, MaskGroupAlignment dataGroupAlignment)
	{
		this.dataGroupName = dataGroupName;
		this.dataGroupSize = dataGroupSize;
		this.dataGroupAlignment = dataGroupAlignment;
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
}
