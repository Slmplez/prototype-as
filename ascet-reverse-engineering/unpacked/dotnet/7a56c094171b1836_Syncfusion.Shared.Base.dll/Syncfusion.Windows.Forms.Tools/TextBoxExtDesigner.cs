using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools;

public class TextBoxExtDesigner : ControlDesigner
{
	private class TextBoxExtGlyph : ControlBodyGlyph
	{
		public TextBoxExtGlyph(Rectangle bounds, Cursor cursor, IComponent relatedComponent, ControlDesigner designer)
			: base(bounds, cursor, relatedComponent, designer)
		{
		}

		public override Cursor GetHitTest(Point p)
		{
			Cursor cursor = base.GetHitTest(p);
			Rectangle rectangle = Bounds;
			if (cursor != null && !HitTest(base.RelatedComponent as TextBoxExt, ref p, ref rectangle))
			{
				cursor = null;
			}
			return cursor;
		}

		public static bool HitTest(TextBoxExt textBox, ref Point p, ref Rectangle bounds)
		{
			bool result = false;
			if (textBox != null && textBox.Region != null)
			{
				p.Offset(-bounds.Location.X, -bounds.Location.Y);
				result = textBox.Region.IsVisible(p);
			}
			return result;
		}
	}

	private TextBoxExt m_txtBox;

	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new TextBoxExtActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override SelectionRules SelectionRules
	{
		get
		{
			SelectionRules selectionRules = base.SelectionRules;
			if (m_txtBox != null && !m_txtBox.Multiline)
			{
				selectionRules &= ~(SelectionRules.TopSizeable | SelectionRules.BottomSizeable);
			}
			return selectionRules;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_txtBox = component as TextBoxExt;
		if (m_txtBox != null)
		{
			m_txtBox.TextAlignChanged += OnTextAlignChanged;
			m_txtBox.TextChanged += OnTextChanged;
			m_txtBox.ForeColorChanged += OnForeColorChanged;
			m_txtBox.BackColorChanged += OnBackColorChanged;
			m_txtBox.CharacterCasingChanged += OnCharacterCasingChanged;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (m_txtBox != null)
		{
			m_txtBox.TextAlignChanged -= OnTextAlignChanged;
			m_txtBox.TextChanged -= OnTextChanged;
			m_txtBox.ForeColorChanged -= OnForeColorChanged;
			m_txtBox.BackColorChanged -= OnBackColorChanged;
			m_txtBox.CharacterCasingChanged -= OnCharacterCasingChanged;
			m_txtBox = null;
		}
		base.Dispose(disposing);
	}

	protected override ControlBodyGlyph GetControlGlyph(GlyphSelectionType selectionType)
	{
		ControlBodyGlyph controlGlyph = base.GetControlGlyph(selectionType);
		Cursor cursor = Cursor.Current;
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if ((selectionService == null || !selectionService.GetComponentSelected(Control)) && cursor == Cursors.SizeAll)
		{
			cursor = Cursors.Default;
		}
		return new TextBoxExtGlyph(controlGlyph.Bounds, cursor, m_txtBox, this);
	}

	private void OnTextAlignChanged(object sender, EventArgs e)
	{
		if (sender is TextBoxExt textBoxExt)
		{
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(textBoxExt)["TextAlign"];
			if (propertyDescriptor != null)
			{
				RaiseComponentChanged(propertyDescriptor, textBoxExt.TextAlign, textBoxExt.TextAlign);
			}
		}
	}

	private void OnTextChanged(object sender, EventArgs e)
	{
		if (sender is TextBoxExt textBoxExt)
		{
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(textBoxExt)["Text"];
			if (propertyDescriptor != null)
			{
				RaiseComponentChanged(propertyDescriptor, textBoxExt.Text, textBoxExt.Text);
			}
		}
	}

	private void OnForeColorChanged(object sender, EventArgs e)
	{
		if (sender is TextBoxExt textBoxExt)
		{
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(textBoxExt)["ForeColor"];
			if (propertyDescriptor != null)
			{
				RaiseComponentChanged(propertyDescriptor, textBoxExt.ForeColor, textBoxExt.ForeColor);
			}
		}
	}

	private void OnCharacterCasingChanged(object sender, EventArgs e)
	{
		if (sender is TextBoxExt textBoxExt)
		{
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(textBoxExt)["CharacterCasing"];
			if (propertyDescriptor != null)
			{
				RaiseComponentChanged(propertyDescriptor, textBoxExt.CharacterCasing, textBoxExt.CharacterCasing);
			}
		}
	}

	private void OnBackColorChanged(object sender, EventArgs e)
	{
		if (sender is TextBoxExt textBoxExt)
		{
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(textBoxExt)["BackColor"];
			if (propertyDescriptor != null)
			{
				RaiseComponentChanged(propertyDescriptor, textBoxExt.BackColor, textBoxExt.BackColor);
			}
		}
	}
}
