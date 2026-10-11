using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Tools.Navigation.Design;

namespace Syncfusion.Windows.Forms.Tools.Navigation;

[Designer(typeof(CustomButtonsDesigner))]
[ToolboxItem(false)]
public class CustomButton : ButtonAdv
{
	public const int DefaultWidth = 26;

	private IContainer components;

	protected override Size DefaultSize => new Size(26, 22);

	public CustomButton()
	{
		InitializeComponent();
		UseVisualStyle = true;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
	}
}
