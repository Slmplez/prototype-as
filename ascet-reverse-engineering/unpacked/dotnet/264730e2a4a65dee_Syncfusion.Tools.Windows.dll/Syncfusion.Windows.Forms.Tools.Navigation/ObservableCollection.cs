using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.Navigation;

[DefaultEvent("CollectionChanged")]
public class ObservableCollection<U> : ObservableCollectionBase<U> where U : INotifyPropertyChanged
{
	[Description("Occurs when property of item within the collection is changed.")]
	public event PropertyChangedEventHandler ItemPropertyChanged;

	protected override void InsertItem(int index, U item)
	{
		if (Contains(item))
		{
			throw new ArgumentException("Collection already contains the item.");
		}
		AdwiseEvents(item);
		base.InsertItem(index, item);
	}

	protected override void RemoveItem(int index)
	{
		U val = base[index];
		UnadwiseEvents(val);
		base.RemoveItem(index);
	}

	protected override void SetItem(int index, U item)
	{
		U val = base.Items[index];
		UnadwiseEvents(val);
		base.SetItem(index, item);
		AdwiseEvents(item);
	}

	private void AdwiseEvents(INotifyPropertyChanged item)
	{
		if (item != null)
		{
			item.PropertyChanged += OnItemPropertyChanged;
		}
	}

	private void UnadwiseEvents(INotifyPropertyChanged item)
	{
		if (item != null)
		{
			item.PropertyChanged -= OnItemPropertyChanged;
		}
	}

	private void OnItemPropertyChanged(object sender, PropertyChangedEventArgs e)
	{
		if (this.ItemPropertyChanged != null)
		{
			this.ItemPropertyChanged(sender, e);
		}
	}
}
