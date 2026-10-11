using System.Collections.Generic;
using de.kandid.logging;

namespace de.projector.ascet.model;

public class Context
{
	public readonly Logger _logger;

	public readonly Database _db;

	private Dictionary<string, OID> _oids = new Dictionary<string, OID>();

	public Context(Database db, Logger logger)
	{
		_db = db;
		_logger = logger;
	}

	public OID oid(string oid)
	{
		if (_oids.ContainsKey(oid))
		{
			return _oids[oid];
		}
		OID oID = new OID(oid);
		_oids[oid] = oID;
		return oID;
	}
}
