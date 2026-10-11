using System.Drawing;
using System.Windows.Forms;
using Etas.Base.UI.Framework.Help.HelpCore;

namespace Etas.Base.UI.Framework.Help.HelpGrabber;

internal class DefaultCtlHighlighter : IControlHighlighter
{
	private Control toHighlight;

	private Color origColor = Color.Black;

	public DefaultCtlHighlighter(Control toHighlight)
	{
		this.toHighlight = toHighlight;
		origColor = this.toHighlight.BackColor;
	}

	public void StartHighlight()
	{
		toHighlight.BackColor = Color.Red;
	}

	public void StopHighlight()
	{
		toHighlight.BackColor = origColor;
	}
}
