using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Design.Behavior;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class CommandBarDesigner : ParentControlDesigner, ICommandBarDesignerComponentInvoke
{
	private bool iamSelected;

	protected override bool DrawGrid
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	protected override bool EnableDragRect => false;

	public override SelectionRules SelectionRules => SelectionRules.Visible;

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			selectionService.SelectionChanged += OnSelectionChanged;
		}
	}

	private void OnSelectionChanged(object sender, EventArgs e)
	{
		bool flag = iamSelected;
		iamSelected = false;
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			ICollection selectedComponents = selectionService.GetSelectedComponents();
			foreach (object item in selectedComponents)
			{
				if (item == base.Component)
				{
					iamSelected = true;
				}
			}
		}
		if (iamSelected != flag)
		{
			Control.Invalidate();
		}
	}

	protected override void Dispose(bool disposing)
	{
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			selectionService.SelectionChanged -= OnSelectionChanged;
		}
		base.Dispose(disposing);
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		if (iamSelected)
		{
			DrawingUtils.DrawDesignTimeBorder(pe.Graphics, Control);
		}
		base.OnPaintAdornments(pe);
	}

	protected override void OnDragDrop(DragEventArgs de)
	{
		base.OnDragDrop(de);
		CommandBar commandBar = Control as CommandBar;
		if (commandBar.Controls.Count > 0)
		{
			((ICommandBarDesignerInvoke)commandBar).SetChildControlBounds();
			ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
			object[] array = new object[1] { commandBar };
			selectionService.SetSelectedComponents(array);
			array[0] = commandBar.Controls[0];
			selectionService.SetSelectedComponents(array);
		}
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		RemovePropertyBrowsable(strcolln: new string[6] { "RightToLeft", "ContextMenu", "ImeMode", "Dock", "Anchor", "CausesValidation" }, control: Control, properties: properties);
	}

	private static void RemovePropertyBrowsable(Control control, string[] strcolln, IDictionary properties)
	{
		foreach (string key in strcolln)
		{
			PropertyDescriptor propertyDescriptor = (PropertyDescriptor)properties[key];
			if (propertyDescriptor == null || !propertyDescriptor.IsBrowsable)
			{
				continue;
			}
			AttributeCollection attributes = propertyDescriptor.Attributes;
			bool flag = false;
			foreach (Attribute item in attributes)
			{
				if (item is BrowsableAttribute)
				{
					flag = true;
					break;
				}
			}
			int num = (flag ? attributes.Count : (attributes.Count + 1));
			Attribute[] array = new Attribute[num];
			attributes.CopyTo(array, 0);
			if (flag)
			{
				array[Array.IndexOf(array, BrowsableAttribute.Yes)] = BrowsableAttribute.No;
			}
			else
			{
				array[num - 1] = BrowsableAttribute.No;
			}
			properties[key] = TypeDescriptor.CreateProperty(control.GetType(), propertyDescriptor, array);
		}
	}

	public void RaiseComponentChanged()
	{
		try
		{
			RaiseComponentChanged(null, null, null);
		}
		catch (Exception ex)
		{
			IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
			if (designerHost != null)
			{
				((IUIService)designerHost.GetService(typeof(IUIService)))?.ShowError(ex);
			}
		}
	}

	public override GlyphCollection GetGlyphs(GlyphSelectionType selectionType)
	{
		selectionType = GlyphSelectionType.NotSelected;
		return base.GetGlyphs(selectionType);
	}
}
