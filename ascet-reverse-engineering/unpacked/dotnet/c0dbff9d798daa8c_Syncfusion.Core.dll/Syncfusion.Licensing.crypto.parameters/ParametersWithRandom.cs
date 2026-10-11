using Syncfusion.Licensing.security;

namespace Syncfusion.Licensing.crypto.parameters;

public class ParametersWithRandom : CipherParameters
{
	private SecureRandom random;

	private CipherParameters parameters;

	public ParametersWithRandom(CipherParameters parameters, SecureRandom random)
	{
		this.random = random;
		this.parameters = parameters;
	}

	public ParametersWithRandom(CipherParameters parameters)
	{
		random = null;
		this.parameters = parameters;
	}

	public SecureRandom getRandom()
	{
		if (random == null)
		{
			random = new SecureRandom();
		}
		return random;
	}

	public CipherParameters getParameters()
	{
		return parameters;
	}
}
