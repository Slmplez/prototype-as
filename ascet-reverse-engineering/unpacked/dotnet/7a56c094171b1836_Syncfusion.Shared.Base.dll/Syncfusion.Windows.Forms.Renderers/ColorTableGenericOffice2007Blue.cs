using System.Drawing;

namespace Syncfusion.Windows.Forms.Renderers;

public class ColorTableGenericOffice2007Blue : ColorTableOffice2007, IColorTableOffice2007Creator
{
	internal ColorTableGenericOffice2007Blue()
	{
	}

	protected override void InitColors(ref Color[] colors)
	{
		base.InitColors(ref colors);
		ref Color reference = ref colors[0];
		reference = SystemColors.Window;
		ref Color reference2 = ref colors[1];
		reference2 = SystemColors.Window;
		ref Color reference3 = ref colors[2];
		reference3 = Color.FromArgb(229, 234, 238);
		ref Color reference4 = ref colors[3];
		reference4 = Color.FromArgb(201, 212, 225);
		ref Color reference5 = ref colors[17];
		reference5 = Color.FromArgb(216, 232, 249);
		ref Color reference6 = ref colors[18];
		reference6 = Color.FromArgb(176, 209, 242);
		ref Color reference7 = ref colors[19];
		reference7 = Color.FromArgb(180, 209, 247);
		ref Color reference8 = ref colors[20];
		reference8 = Color.FromArgb(121, 173, 241);
		ref Color reference9 = ref colors[4];
		reference9 = Color.FromArgb(96, 111, 148);
		ref Color reference10 = ref colors[5];
		reference10 = Color.FromArgb(225, 231, 239);
		ref Color reference11 = ref colors[21];
		reference11 = Color.FromArgb(60, 110, 176);
		ref Color reference12 = ref colors[22];
		reference12 = Color.FromArgb(253, 253, 255);
		ref Color reference13 = ref colors[23];
		reference13 = Color.FromArgb(23, 73, 138);
		ref Color reference14 = ref colors[24];
		reference14 = Color.FromArgb(194, 211, 231);
		ref Color reference15 = ref colors[6];
		reference15 = Color.FromArgb(110, 126, 166);
		ref Color reference16 = ref colors[7];
		reference16 = Color.FromArgb(66, 75, 99);
		ref Color reference17 = ref colors[8];
		reference17 = Color.FromArgb(110, 126, 166);
		ref Color reference18 = ref colors[9];
		reference18 = Color.FromArgb(66, 75, 99);
		ref Color reference19 = ref colors[10];
		reference19 = Color.FromArgb(139, 142, 144);
		ref Color reference20 = ref colors[11];
		reference20 = Color.FromArgb(120, 126, 134);
		ref Color reference21 = ref colors[25];
		reference21 = Color.FromArgb(209, 209, 209);
		ref Color reference22 = ref colors[26];
		reference22 = Color.FromArgb(217, 217, 217);
		ref Color reference23 = ref colors[12];
		reference23 = SystemColors.Window;
		ref Color reference24 = ref colors[13];
		reference24 = SystemColors.Window;
		ref Color reference25 = ref colors[14];
		reference25 = SystemColors.Window;
		ref Color reference26 = ref colors[15];
		reference26 = SystemColors.Window;
		ref Color reference27 = ref colors[16];
		reference27 = SystemColors.Window;
	}

	ColorTableOffice2007 IColorTableOffice2007Creator.Create()
	{
		return new ColorTableGenericOffice2007Blue();
	}
}
