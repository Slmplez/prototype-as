using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[DesignerSerializer(typeof(CaptionButtonsCodeDomSerializer), typeof(CodeDomSerializer))]
public class CaptionButtonsCollection : CollectionBase
{
	public CaptionButton this[int index]
	{
		get
		{
			return base.List[index] as CaptionButton;
		}
		set
		{
			if (index < 0 || index > base.List.Count)
			{
				throw new IndexOutOfRangeException("Incorrect index.");
			}
			if (value == null)
			{
				throw new NullReferenceException("Incorrect value (null).");
			}
			if (base.List[index] != value)
			{
				base.List[index] = value;
			}
		}
	}

	public CaptionButton this[string name]
	{
		get
		{
			if (name == null)
			{
				throw new NullReferenceException("Index.");
			}
			for (int i = 0; i < base.List.Count; i++)
			{
				if (name == this[i].Name)
				{
					return this[i];
				}
			}
			return null;
		}
		set
		{
			if (name == null)
			{
				throw new NullReferenceException("Index.");
			}
			if (value == null)
			{
				throw new NullReferenceException("Incorrect value (null).");
			}
			for (int i = 0; i < base.List.Count; i++)
			{
				if (name == this[i].Name && base.List[i] != value)
				{
					base.List[i] = value;
				}
			}
		}
	}

	public event EventHandler CollectionChanged;

	public event EventHandler CollectionItemChanged;

	protected void OnCollectionChanged()
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, EventArgs.Empty);
		}
	}

	protected void OnCollectionItemChanged()
	{
		if (this.CollectionItemChanged != null)
		{
			this.CollectionItemChanged(this, EventArgs.Empty);
		}
	}

	protected override void OnRemove(int index, object value)
	{
		if (value is CaptionButton captionButton)
		{
			captionButton.Changed -= button_Changed;
		}
		OnCollectionChanged();
		base.OnRemove(index, value);
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		OnCollectionChanged();
		base.OnRemoveComplete(index, value);
	}

	protected override void OnInsertComplete(int index, object value)
	{
		if (value is CaptionButton { Name: null } captionButton)
		{
			captionButton.Name = GetCaptionButtonDefaultName();
			captionButton.Changed += button_Changed;
			captionButton.TypeChanging += button_TypeChanging;
		}
		OnCollectionChanged();
		base.OnInsertComplete(index, value);
	}

	protected override void OnClear()
	{
		for (int i = 0; i < base.Count; i++)
		{
			CaptionButton captionButton = this[i];
			if (captionButton != null)
			{
				captionButton.Changed -= button_Changed;
			}
		}
		OnCollectionChanged();
		base.OnClear();
	}

	protected override void OnClearComplete()
	{
		OnCollectionChanged();
		base.OnClearComplete();
	}

	private void button_Changed(object sender, EventArgs e)
	{
		OnCollectionItemChanged();
	}

	protected virtual void button_TypeChanging(object sender, CancelEventArgs e)
	{
		if (!(sender is CaptionButton captionButton) || (captionButton.Type != CaptionButtonType.Maximize && captionButton.Type != CaptionButtonType.Restore))
		{
			return;
		}
		foreach (CaptionButton item in base.List)
		{
			if (item.Type == captionButton.Type && item != captionButton)
			{
				e.Cancel = true;
				break;
			}
		}
	}

	protected internal bool ContainsName(string name)
	{
		for (int i = 0; i < base.Count; i++)
		{
			if (this[i].Name == name)
			{
				return true;
			}
		}
		return false;
	}

	protected string GetCaptionButtonDefaultName()
	{
		int num = 1;
		while (ContainsName("CaptionButton" + num))
		{
			num++;
		}
		return "CaptionButton" + num;
	}

	protected internal bool ContainsButtonType(CaptionButtonType type)
	{
		foreach (CaptionButton item in base.List)
		{
			if (item.Type == type)
			{
				return true;
			}
		}
		return false;
	}

	private bool EqualToolTipInfo(ToolTipInfo tti1, ToolTipInfo tti2)
	{
		if (tti1.BackColor == tti2.BackColor && tti1.BorderColor == tti2.BorderColor && tti1.ForeColor == tti2.ForeColor && tti1.Separator == tti2.Separator && EqualToolTipItem(tti1.Footer, tti2.Footer) && EqualToolTipItem(tti1.Header, tti2.Header) && EqualToolTipItem(tti1.Body, tti2.Body))
		{
			return true;
		}
		return false;
	}

	private bool EqualToolTipItem(ToolTipInfo.ToolTipItem tti1, ToolTipInfo.ToolTipItem tti2)
	{
		if (tti1.Bounds == tti2.Bounds && tti1.Font == tti2.Font && tti1.ForeColor == tti2.ForeColor && tti1.Hidden == tti2.Hidden && tti1.Image == tti2.Image && tti1.ImageAlign == tti2.ImageAlign && tti1.ImageBounds == tti2.ImageBounds && tti1.ImageScalingSize == tti2.ImageScalingSize && tti1.ImageTransparentColor == tti2.ImageTransparentColor && tti1.Text == tti2.Text && tti1.TextAlign == tti2.TextAlign && tti1.TextBounds == tti2.TextBounds && tti1.TextImageRelation == tti2.TextImageRelation && tti1.TextMargin == tti2.TextMargin)
		{
			return true;
		}
		return false;
	}

	internal bool NeedSerializeToolTipInfo()
	{
		bool result = false;
		ToolTipInfo tti = new ToolTipInfo();
		for (int i = 0; i < base.Count; i++)
		{
			if (!EqualToolTipInfo(tti, this[i].SuperToolTipInfo))
			{
				result = true;
				break;
			}
		}
		return result;
	}

	public virtual void Add(CaptionButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		if (button.Type == CaptionButtonType.Custom || !ContainsButtonType(button.Type))
		{
			base.List.Add(button);
			button.Changed += button_Changed;
			button.TypeChanging += button_TypeChanging;
			OnCollectionChanged();
		}
	}

	public bool Contains(CaptionButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		return base.List.Contains(button);
	}

	public void Remove(CaptionButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		if (!Contains(button))
		{
			throw new ArgumentException("Not in list.");
		}
		base.List.Remove(button);
		button.Changed -= button_Changed;
		button.TypeChanging -= button_TypeChanging;
		OnCollectionChanged();
	}

	public int IndexOf(CaptionButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		return base.List.IndexOf(button);
	}

	public virtual void Insert(int index, CaptionButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		if (index < 0 || index > base.List.Count)
		{
			throw new ArgumentException("Incorrect index");
		}
		if ((button.Type != CaptionButtonType.Maximize && button.Type != CaptionButtonType.Restore) || !ContainsButtonType(button.Type))
		{
			base.List.Insert(index, button);
			button.Changed += button_Changed;
			button.TypeChanging += button_TypeChanging;
			OnCollectionChanged();
		}
	}

	public void Dispose()
	{
		foreach (CaptionButton item in base.List)
		{
			item.Changed -= button_Changed;
			item.TypeChanging -= button_TypeChanging;
		}
		base.List.Clear();
	}

	public CaptionButtonsCollection Clone()
	{
		CaptionButtonsCollection captionButtonsCollection = new CaptionButtonsCollection();
		for (int i = 0; i < base.Count; i++)
		{
			captionButtonsCollection.Add(this[i].Clone());
		}
		return captionButtonsCollection;
	}

	public void MergeWith(CaptionButtonsCollection collection, bool bCloneButtons)
	{
		for (int i = 0; i < collection.Count; i++)
		{
			if (ContainsName(collection[i].Name))
			{
				if (bCloneButtons)
				{
					this[collection[i].Name] = collection[i].Clone();
				}
				else
				{
					this[collection[i].Name] = collection[i];
				}
			}
			else if (bCloneButtons)
			{
				Add(collection[i].Clone());
			}
			else
			{
				Add(collection[i]);
			}
		}
	}

	public void ExcludeCommonButtonsWith(CaptionButtonsCollection collection)
	{
		for (int i = 0; i < collection.Count; i++)
		{
			if (ContainsName(collection[i].Name))
			{
				Remove(this[collection[i].Name]);
			}
		}
	}
}
