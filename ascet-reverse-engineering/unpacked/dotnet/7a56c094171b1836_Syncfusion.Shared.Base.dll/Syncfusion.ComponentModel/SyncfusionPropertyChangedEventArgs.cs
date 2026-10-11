using System.ComponentModel;

namespace Syncfusion.ComponentModel;

public class SyncfusionPropertyChangedEventArgs : PropertyChangedEventArgs
{
	private PropertyChangeEffect propertyChangeType;

	private object oldValue;

	private object newValue;

	public PropertyChangeEffect PropertyChangeEffect
	{
		get
		{
			return propertyChangeType;
		}
		set
		{
			propertyChangeType = value;
		}
	}

	public object OldValue
	{
		get
		{
			return oldValue;
		}
		set
		{
			oldValue = value;
		}
	}

	public object NewValue
	{
		get
		{
			return newValue;
		}
		set
		{
			newValue = value;
		}
	}

	public SyncfusionPropertyChangedEventArgs(PropertyChangeEffect propertyChangeType, string propertyName, object oldValue, object newValue)
		: base(propertyName)
	{
		this.propertyChangeType = propertyChangeType;
		this.oldValue = oldValue;
		this.newValue = newValue;
	}
}
