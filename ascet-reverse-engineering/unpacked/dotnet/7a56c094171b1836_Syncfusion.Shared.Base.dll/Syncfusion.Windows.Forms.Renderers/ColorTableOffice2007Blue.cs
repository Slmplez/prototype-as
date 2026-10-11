namespace Syncfusion.Windows.Forms.Renderers;

public class ColorTableOffice2007Blue : ColorTableOffice2007, IColorTableOffice2007Creator
{
	internal ColorTableOffice2007Blue()
	{
	}

	ColorTableOffice2007 IColorTableOffice2007Creator.Create()
	{
		return new ColorTableOffice2007Blue();
	}
}
