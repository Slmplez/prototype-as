using System;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Design;

internal class CustomButtonsDesigner : ControlDesigner
{
	private bool _newComponent;

	public override SelectionRules SelectionRules => SelectionRules.BottomSizeable | SelectionRules.RightSizeable;

	public override void InitializeNewComponent(IDictionary defaultValues)
	{
		base.InitializeNewComponent(defaultValues);
		_newComponent = true;
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		Control.ParentChanged += OnControlParentChanged;
	}

	protected override void Dispose(bool disposing)
	{
		Control.ParentChanged -= OnControlParentChanged;
		base.Dispose(disposing);
	}

	private void OnControlParentChanged(object sender, EventArgs e)
	{
		if (!_newComponent)
		{
			return;
		}
		CustomButton customButton = (CustomButton)Control;
		if (customButton.Parent is NavigationView navigationView)
		{
			switch (navigationView.VisualStyle)
			{
			case VisualStyles.Office2007:
				customButton.Appearance = ButtonAppearance.Office2007;
				customButton.Office2007ColorScheme = navigationView.Office2007ColorTheme;
				break;
			case VisualStyles.Vista:
				break;
			}
		}
	}
}
