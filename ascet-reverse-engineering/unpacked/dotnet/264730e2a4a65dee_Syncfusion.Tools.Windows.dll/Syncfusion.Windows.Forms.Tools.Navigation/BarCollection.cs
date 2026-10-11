namespace Syncfusion.Windows.Forms.Tools.Navigation;

public class BarCollection : ObservableCollection<Bar>
{
	public void AddRange(Bar[] bars)
	{
		base.AddRange(bars);
	}

	public int FindByText(string text)
	{
		int result = -1;
		for (int i = 0; i < base.Count; i++)
		{
			Bar bar = base[i];
			if (bar.Text == text)
			{
				result = i;
				break;
			}
		}
		return result;
	}
}
