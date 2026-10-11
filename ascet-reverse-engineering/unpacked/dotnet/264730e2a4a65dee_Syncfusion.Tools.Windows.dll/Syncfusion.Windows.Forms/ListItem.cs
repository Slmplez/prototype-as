using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class ListItem
{
	public Form Form;

	public ListItem(Form f)
	{
		Form = f;
	}

	public override string ToString()
	{
		return Form.Text;
	}
}
