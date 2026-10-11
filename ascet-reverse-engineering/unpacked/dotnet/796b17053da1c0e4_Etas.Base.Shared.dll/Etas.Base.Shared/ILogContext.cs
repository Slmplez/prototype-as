namespace Etas.Base.Shared;

public interface ILogContext
{
	string Application { get; }

	string Module { get; }

	string Method { get; }
}
