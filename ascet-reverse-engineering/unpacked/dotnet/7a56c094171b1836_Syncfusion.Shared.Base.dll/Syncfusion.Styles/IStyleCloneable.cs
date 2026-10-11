namespace Syncfusion.Styles;

public interface IStyleCloneable
{
	object Clone();

	void Dispose();

	bool ShouldClone();

	bool ShouldDispose();
}
