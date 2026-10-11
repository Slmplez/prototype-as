using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class NameGenerator
{
	public static string Generate(Control ctrl)
	{
		DateTime now = DateTime.Now;
		Random random = new Random();
		return $"{ctrl.Name}_{now.Year}_{now.Month}_{now.Day}_{now.Hour}_{now.Minute}_{now.Second}_{now.Millisecond}_{random.Next(1000)}";
	}
}
