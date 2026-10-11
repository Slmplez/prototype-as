using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TabGroupItem : IChangeNotifyingItem
{
	private string text;

	private int imageIndex;

	private object tag;

	public string Text
	{
		get
		{
			return text;
		}
		set
		{
			if (text != value)
			{
				text = value;
				OnPropertyChanged(PropertyChangeEffect.NeedLayout);
			}
		}
	}

	public int ImageIndex
	{
		get
		{
			return imageIndex;
		}
		set
		{
			if (imageIndex != value)
			{
				imageIndex = value;
				OnPropertyChanged(PropertyChangeEffect.NeedRepaint);
			}
		}
	}

	public object Tag
	{
		get
		{
			return tag;
		}
		set
		{
			tag = value;
		}
	}

	public event SyncfusionPropertyChangedEventHandler PropertyChanged;

	public TabGroupItem()
	{
	}

	public TabGroupItem(string text, int imageIndex, object tag)
	{
		Text = text;
		ImageIndex = imageIndex;
		this.tag = tag;
	}

	protected virtual void OnPropertyChanged(PropertyChangeEffect propertyChangeEffect)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, new SyncfusionPropertyChangedEventArgs(propertyChangeEffect, "", null, null));
		}
	}
}
