using System;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class WizardControlDesigner : WizardDesigner
{
	protected WizardControl WControl => (WizardControl)Control;

	protected override void ComponentRemoving(object sender, ComponentEventArgs e)
	{
		base.ComponentRemoving(sender, e);
		if (Control != null && e.Component == WControl.BannerPanel)
		{
			throw new NotSupportedException("You are not alowed to remove this component. If you want the Panel to dissapear change the FullPage property of the active WizardPage");
		}
	}

	protected override void OnMouseDragBegin(int x, int y)
	{
		WControl.Capture = true;
		if (WControl.NextButton.Visible && WControl.NextButton.ClientRectangle.Contains(WControl.NextButton.PointToClient(new Point(x, y))))
		{
			WControl.NextPage();
		}
		else if (WControl.BackButton.Visible && WControl.BackButton.ClientRectangle.Contains(WControl.BackButton.PointToClient(new Point(x, y))))
		{
			WControl.PreviousPage();
		}
		else
		{
			base.OnMouseDragBegin(x, y);
		}
	}

	protected override void OnAddPage(object sender, EventArgs e)
	{
		if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			WizardControlPage page = designerHost.CreateComponent(typeof(WizardControlPage)) as WizardControlPage;
			WControl.AddPage(page);
		}
	}

	protected override void InitializeNewComponent()
	{
		base.InitializeNewComponent();
		WizardControl wControl = WControl;
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		GradientPanel gradientPanel = (GradientPanel)designerHost.CreateComponent(typeof(GradientPanel));
		wControl.Controls.Add(gradientPanel);
		wControl.BannerPanel = gradientPanel;
		PictureBox pictureBox = (PictureBox)designerHost.CreateComponent(typeof(PictureBox));
		wControl.BannerPanel.Controls.Add(pictureBox);
		wControl.Banner = pictureBox;
		Label label = (Label)designerHost.CreateComponent(typeof(Label));
		label.AutoSize = true;
		wControl.BannerPanel.Controls.Add(label);
		wControl.Title = label;
		Label label2 = (Label)designerHost.CreateComponent(typeof(Label));
		label2.AutoSize = true;
		wControl.BannerPanel.Controls.Add(label2);
		wControl.Description = label2;
		wControl.EndInit();
		wControl.GridBagLayout.ComponentDesigner = this;
	}
}
