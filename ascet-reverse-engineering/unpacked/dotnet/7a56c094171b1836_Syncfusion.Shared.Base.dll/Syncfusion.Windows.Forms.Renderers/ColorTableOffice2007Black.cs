using System.Drawing;

namespace Syncfusion.Windows.Forms.Renderers;

public class ColorTableOffice2007Black : ColorTableOffice2007, IColorTableOffice2007Creator
{
	internal ColorTableOffice2007Black()
	{
	}

	protected override void InitColors(ref Color[] colors)
	{
		base.InitColors(ref colors);
		ref Color reference = ref colors[0];
		reference = Color.FromArgb(61, 61, 61);
		ref Color reference2 = ref colors[1];
		reference2 = Color.FromArgb(84, 84, 84);
		ref Color reference3 = ref colors[2];
		reference3 = Color.FromArgb(249, 249, 249);
		ref Color reference4 = ref colors[3];
		reference4 = Color.FromArgb(193, 193, 197);
		ref Color reference5 = ref colors[17];
		reference5 = Color.FromArgb(225, 237, 250);
		ref Color reference6 = ref colors[18];
		reference6 = Color.FromArgb(165, 211, 240);
		ref Color reference7 = ref colors[19];
		reference7 = Color.FromArgb(199, 231, 248);
		ref Color reference8 = ref colors[20];
		reference8 = Color.FromArgb(110, 201, 242);
		ref Color reference9 = ref colors[4];
		reference9 = Color.FromArgb(52, 52, 52);
		ref Color reference10 = ref colors[5];
		reference10 = Color.FromArgb(237, 237, 237);
		ref Color reference11 = ref colors[6];
		reference11 = Color.FromArgb(131, 131, 131);
		ref Color reference12 = ref colors[7];
		reference12 = Color.FromArgb(78, 78, 78);
		ref Color reference13 = ref colors[8];
		reference13 = Color.FromArgb(202, 202, 202);
		ref Color reference14 = ref colors[9];
		reference14 = Color.FromArgb(121, 121, 121);
		ref Color reference15 = ref colors[10];
		reference15 = Color.FromArgb(125, 134, 146);
		ref Color reference16 = ref colors[11];
		reference16 = Color.FromArgb(113, 127, 146);
		ref Color reference17 = ref colors[12];
		reference17 = Color.FromArgb(45, 45, 45);
		ref Color reference18 = ref colors[13];
		reference18 = Color.FromArgb(54, 54, 54);
		ref Color reference19 = ref colors[14];
		reference19 = Color.FromArgb(37, 37, 37);
		ref Color reference20 = ref colors[15];
		reference20 = Color.FromArgb(204, 204, 204);
		ref Color reference21 = ref colors[16];
		reference21 = Color.FromArgb(112, 112, 112);
	}

	ColorTableOffice2007 IColorTableOffice2007Creator.Create()
	{
		return new ColorTableOffice2007Black();
	}
}
