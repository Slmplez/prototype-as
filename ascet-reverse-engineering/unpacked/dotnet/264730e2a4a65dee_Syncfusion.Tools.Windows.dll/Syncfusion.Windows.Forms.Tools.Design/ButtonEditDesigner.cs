using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ButtonEditDesigner : ParentControlDesigner
{
	protected DesignerVerb dvAddButton;

	protected DesignerVerb dvRemoveButton;

	protected DesignerVerbCollection dvcVerbs;

	private ButtonEdit m_btn;

	private TextBoxExt m_txtBox;

	private DesignerActionListCollection actionLists;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (((ButtonEdit)Control).Buttons.Count > 0)
			{
				dvRemoveButton.Enabled = true;
			}
			else
			{
				dvRemoveButton.Enabled = false;
			}
			return dvcVerbs;
		}
	}

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new ButtonEditActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override ICollection AssociatedComponents
	{
		get
		{
			if (!(Control is ButtonEdit))
			{
				return base.AssociatedComponents;
			}
			return ((ButtonEdit)Control).Buttons;
		}
	}

	public override SelectionRules SelectionRules => base.SelectionRules & ~(SelectionRules.TopSizeable | SelectionRules.BottomSizeable);

	public ButtonEditDesigner()
	{
		dvAddButton = new DesignerVerb("Add Button", OnAddButton);
		dvRemoveButton = new DesignerVerb("Remove Button", OnRemoveButton);
		dvRemoveButton.Enabled = false;
		DesignerVerb[] value = new DesignerVerb[2] { dvAddButton, dvRemoveButton };
		dvcVerbs = new DesignerVerbCollection(value);
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		IComponentChangeService componentChangeService = GetService(typeof(IComponentChangeService)) as IComponentChangeService;
		componentChangeService.ComponentChanged += HandleComponentChanged;
		m_btn = Control as ButtonEdit;
	}

	public override void InitializeNewComponent(IDictionary defaultValues)
	{
		CreateTextBox();
		m_btn.TextBox = m_txtBox;
		base.InitializeNewComponent(defaultValues);
	}

	protected override void Dispose(bool bdisposing)
	{
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentChanged -= HandleComponentChanged;
		}
		base.Dispose(bdisposing);
	}

	protected override void OnDragDrop(DragEventArgs de)
	{
		if (GetSelectedControl() is TextBoxExt textBox)
		{
			m_btn.TextBox = textBox;
			m_btn.Layout();
			base.OnDragDrop(de);
		}
	}

	public void HandleComponentChanged(object sender, ComponentChangedEventArgs e)
	{
		if (Control == null)
		{
			return;
		}
		ButtonEdit buttonEdit = Control as ButtonEdit;
		if (dvcVerbs != null && dvcVerbs.Count > 0)
		{
			if (buttonEdit.Buttons.Count > 0)
			{
				dvRemoveButton.Enabled = true;
			}
			else
			{
				dvRemoveButton.Enabled = false;
			}
		}
		if (buttonEdit.TextBox.Parent != buttonEdit && buttonEdit.TextBox != null)
		{
			buttonEdit.DetachTextBox();
			buttonEdit.SetTextBoxNull();
		}
	}

	public void OnAddButton(object sender, EventArgs e)
	{
		if (Control != null)
		{
			ButtonEdit buttonEdit = Control as ButtonEdit;
			IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
			ButtonEdit.ButtonEditChildButtonCollection buttons = buttonEdit.Buttons;
			ButtonEditChildButton buttonEditChildButton = (ButtonEditChildButton)designerHost.CreateComponent(typeof(ButtonEditChildButton));
			buttonEditChildButton.Text = buttonEditChildButton.Name;
			buttonEditChildButton.ButtonType = ButtonTypes.Normal;
			buttonEdit.Buttons.Add(buttonEditChildButton);
			RaiseComponentChanged(TypeDescriptor.GetProperties(buttonEdit)["Buttons"], buttons, buttonEdit.Buttons);
		}
	}

	public void OnRemoveButton(object sender, EventArgs e)
	{
		if (Control != null)
		{
			ButtonEdit buttonEdit = Control as ButtonEdit;
			IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
			ButtonEdit.ButtonEditChildButtonCollection buttons = buttonEdit.Buttons;
			if (buttons.Count > 0)
			{
				ButtonEditChildButton button = buttons[buttons.Count - 1];
				buttonEdit.Buttons.Remove(button);
				designerHost.DestroyComponent(button);
				RaiseComponentChanged(TypeDescriptor.GetProperties(buttonEdit)["Buttons"], buttons, buttonEdit.Buttons);
			}
		}
	}

	private void CreateTextBox()
	{
		TextBoxExt textBoxExt = null;
		if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			textBoxExt = designerHost.CreateComponent(typeof(TextBoxExt)) as TextBoxExt;
			textBoxExt.BorderStyle = BorderStyle.None;
		}
		m_txtBox = textBoxExt;
	}

	private Control GetSelectedControl()
	{
		if (base.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			return selectionService.PrimarySelection as Control;
		}
		return null;
	}
}
