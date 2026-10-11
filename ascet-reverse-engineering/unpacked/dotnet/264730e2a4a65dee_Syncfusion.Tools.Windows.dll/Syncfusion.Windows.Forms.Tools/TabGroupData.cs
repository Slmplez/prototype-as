using System;
using System.ComponentModel;
using System.Drawing;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TabGroupData : TabData
{
	private TabGroupItemsList items;

	private Point padding = new Point(3, 3);

	private int selectedIndex = -1;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TabGroupItemsList Items => items;

	public Point Padding
	{
		get
		{
			return padding;
		}
		set
		{
			if (padding != value)
			{
				padding = value;
				OnPropertyChanged();
			}
		}
	}

	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			SetTextWithoutBoundsAffected(value);
		}
	}

	public override int ImageIndex
	{
		get
		{
			return base.ImageIndex;
		}
		set
		{
			SetImageIndexWithoutBoundsAffected(value);
		}
	}

	public int SelectedIndex
	{
		get
		{
			if (selectedIndex >= Items.Count)
			{
				ChangeSelectedIndex(Items.Count - 1);
			}
			if ((selectedIndex < 0 || selectedIndex >= Items.Count) && Items.Count > 0)
			{
				ChangeSelectedIndex(0);
			}
			return selectedIndex;
		}
		set
		{
			ChangeSelectedIndex(value);
		}
	}

	public event EventHandler SelectedIndexChanged;

	protected void ChangeSelectedIndex(int index)
	{
		if (Items.Count <= index)
		{
			throw new ArgumentOutOfRangeException();
		}
		selectedIndex = index;
		OnPropertyChanged();
		if (this.SelectedIndexChanged != null)
		{
			this.SelectedIndexChanged(this, EventArgs.Empty);
		}
	}

	public TabGroupData()
	{
		items = new TabGroupItemsList();
		items.CollectionChanged += Items_CollectionChanged;
		items.ItemPropertyChanged += Items_PropertyChanged;
	}

	private void Items_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		OnBoundsAffected();
	}

	private void Items_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyChangeEffect == PropertyChangeEffect.NeedLayout)
		{
			OnBoundsAffected();
		}
		else if (e.PropertyChangeEffect == PropertyChangeEffect.NeedRepaint)
		{
			OnPropertyChanged();
		}
	}
}
