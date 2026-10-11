using System.Collections.Generic;
using de.kandid.logging;

namespace de.projector.ascet.model;

public class Database
{
	private Dictionary<OID, DBO> _dbos = new Dictionary<OID, DBO>();

	public void register(Context context, DBO dbo)
	{
		if (_dbos.ContainsKey(dbo._oid))
		{
			context._logger.log(Logger.SEVERE, string.Concat("OID ", dbo._oid, " already present"), null);
		}
		_dbos[dbo._oid] = dbo;
	}

	public DBO get(OID oid)
	{
		if (!_dbos.ContainsKey(oid))
		{
			return null;
		}
		return _dbos[oid];
	}

	public void addReference(Context context, DBO from, OID toOID)
	{
		if (toOID != null)
		{
			DBO dBO = get(toOID);
			if (dBO == null)
			{
				context._logger.log(Logger.WARNING, string.Concat("Referenced object ", toOID, " does not exist"), null);
			}
			else if (from._oid != toOID)
			{
				dBO.addReference(from);
			}
		}
	}
}
