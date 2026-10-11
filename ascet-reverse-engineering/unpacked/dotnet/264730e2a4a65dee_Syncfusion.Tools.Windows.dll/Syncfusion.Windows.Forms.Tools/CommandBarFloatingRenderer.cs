using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal abstract class CommandBarFloatingRenderer : CommandBarRenderer
{
	public CommandBarFloatingRenderer(CommandBar commandBar)
		: base(commandBar)
	{
	}

	protected abstract void DrawCloseButton(Graphics g, Rectangle rect, CBButtonState state);

	private Rectangle GetCloseButtonRect()
	{
		Rectangle closeButtonRect = CmdBar.CloseButtonRect;
		closeButtonRect.Width--;
		closeButtonRect.Height--;
		return closeButtonRect;
	}

	public override void Draw(Graphics g)
	{
		base.Draw(g);
		if (!IsMainCommandBar() && !CmdBar.HideCloseButton)
		{
			CBButtonState closeButtonState = CmdBar.GetCloseButtonState();
			Rectangle closeButtonRect = GetCloseButtonRect();
			DrawCloseButton(g, closeButtonRect, closeButtonState);
		}
	}

	protected override Rectangle GetTextRectangle()
	{
		return CmdBar.GetFloatingTextRectangle();
	}

	protected override Rectangle GetDropDownRect()
	{
		return CmdBar.DropDownRect;
	}
}
