using System.Collections;

namespace Etas.Base.Shared;

internal class LoggerSettings
{
	private ArrayList _publishers = new ArrayList();

	private string _traceFileName;

	private bool _newTraceFile = true;

	public ArrayList Publishers => _publishers;

	public string TraceFileName
	{
		get
		{
			return _traceFileName;
		}
		set
		{
			_traceFileName = value;
		}
	}

	public bool NewTraceFile
	{
		get
		{
			return _newTraceFile;
		}
		set
		{
			_newTraceFile = value;
		}
	}

	public void AddPublisher(PublisherSettings publisher)
	{
		_publishers.Add(publisher);
	}
}
