using System;
using System.ComponentModel;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[Serializable]
[TypeConverter(typeof(TreeNodePrimitiveConverter))]
public class TreeNodePrimitive : ICloneable
{
	private int m_index;

	private PredefinedPrimitiveTypes m_type;

	public int Index
	{
		get
		{
			return m_index;
		}
		set
		{
			if (value != m_index)
			{
				int index = m_index;
				SyncfusionPropertyChangedEventArgs e = new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "Index", index, value);
				OnPropertyChanging(e);
				m_index = value;
				e = new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "Index", index, value);
				OnPropertyChanged(e);
			}
		}
	}

	[DefaultValue(PredefinedPrimitiveTypes.Text)]
	public PredefinedPrimitiveTypes PrimitiveType
	{
		get
		{
			return m_type;
		}
		set
		{
			if (value != m_type)
			{
				PredefinedPrimitiveTypes type = m_type;
				SyncfusionPropertyChangedEventArgs e = new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "PrimitiveType", type, value);
				OnPropertyChanging(e);
				m_type = value;
				e = new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "PrimitiveType", type, value);
				OnPropertyChanged(e);
			}
		}
	}

	internal event SyncfusionPropertyChangedEventHandler PropertyChanged;

	internal event SyncfusionPropertyChangedEventHandler PropertyChanging;

	public TreeNodePrimitive()
	{
	}

	public TreeNodePrimitive(int index, PredefinedPrimitiveTypes primitiveType)
	{
		m_type = primitiveType;
		m_index = index;
	}

	protected virtual void OnPropertyChanged(SyncfusionPropertyChangedEventArgs e)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, e);
		}
	}

	protected virtual void OnPropertyChanging(SyncfusionPropertyChangedEventArgs e)
	{
		if (this.PropertyChanging != null)
		{
			this.PropertyChanging(this, e);
		}
	}

	public object Clone()
	{
		return new TreeNodePrimitive(m_index, m_type);
	}
}
