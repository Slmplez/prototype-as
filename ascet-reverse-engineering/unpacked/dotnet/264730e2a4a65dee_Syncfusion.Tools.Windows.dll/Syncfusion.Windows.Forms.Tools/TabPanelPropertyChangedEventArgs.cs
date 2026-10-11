namespace Syncfusion.Windows.Forms.Tools;

public class TabPanelPropertyChangedEventArgs
{
	private string changedProperty;

	private object oldValue;

	private object newValue;

	public string PropertyName => changedProperty;

	public object OldValue => oldValue;

	public object NewValue => newValue;

	public TabPanelPropertyChangedEventArgs(string affectedProperty, object oldValue, object newValue)
	{
		changedProperty = affectedProperty;
		this.oldValue = oldValue;
		this.newValue = newValue;
	}
}
