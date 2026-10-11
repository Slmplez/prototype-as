using System.ComponentModel;
using Syncfusion.ComponentModel;

namespace Syncfusion.Reflection;

[TypeConverter(typeof(TypeNameConverter))]
public class TypeName : IChangeNotifyingItem
{
	private string typename;

	public string TypeFullName
	{
		get
		{
			return typename;
		}
		set
		{
			if (typename != value)
			{
				string oldValue = typename;
				typename = value;
				if (this.PropertyChanged != null)
				{
					this.PropertyChanged(this, new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "TypeFullName", oldValue, typename));
				}
			}
		}
	}

	public event SyncfusionPropertyChangedEventHandler PropertyChanged;

	public TypeName()
	{
	}

	public TypeName(string typename)
	{
		this.typename = typename;
	}
}
