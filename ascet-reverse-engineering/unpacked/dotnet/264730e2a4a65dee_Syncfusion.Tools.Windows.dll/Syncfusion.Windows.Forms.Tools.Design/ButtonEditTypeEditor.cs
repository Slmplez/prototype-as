using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Reflection;
using System.Resources;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ButtonEditTypeEditor : UITypeEditor
{
	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override void PaintValue(PaintValueEventArgs pe)
	{
		ResourceManager resourceManager = new ResourceManager("ButtonEdit.ButtonEditIcons", Assembly.GetExecutingAssembly());
		Bitmap bitmap = null;
		bitmap = (ButtonTypes)pe.Value switch
		{
			ButtonTypes.Calculator => (Bitmap)ButtonEdit.GetImage("Calculator.bmp"), 
			ButtonTypes.Check => (Bitmap)ButtonEdit.GetImage("Check.bmp"), 
			ButtonTypes.Currency => (Bitmap)ButtonEdit.GetImage("Currency.bmp"), 
			ButtonTypes.Down => (Bitmap)ButtonEdit.GetImage("Down.bmp"), 
			ButtonTypes.Left => (Bitmap)ButtonEdit.GetImage("Left.bmp"), 
			ButtonTypes.Browse => (Bitmap)ButtonEdit.GetImage("Browse.bmp"), 
			ButtonTypes.Redo => (Bitmap)ButtonEdit.GetImage("Redo.bmp"), 
			ButtonTypes.Right => (Bitmap)ButtonEdit.GetImage("Right.bmp"), 
			ButtonTypes.Undo => (Bitmap)ButtonEdit.GetImage("Undo.bmp"), 
			ButtonTypes.Up => (Bitmap)ButtonEdit.GetImage("Up.bmp"), 
			ButtonTypes.LeftEnd => (Bitmap)ButtonEdit.GetImage("Leftend.bmp"), 
			ButtonTypes.RightEnd => (Bitmap)ButtonEdit.GetImage("Rightend.bmp"), 
			_ => (Bitmap)ButtonEdit.GetImage("Browse.bmp"), 
		};
		pe.Graphics.DrawImage(bitmap, pe.Bounds);
		bitmap.Dispose();
		resourceManager.ReleaseAllResources();
	}
}
