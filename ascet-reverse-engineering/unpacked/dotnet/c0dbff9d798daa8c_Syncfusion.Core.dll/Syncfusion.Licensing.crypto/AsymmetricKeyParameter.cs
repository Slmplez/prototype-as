namespace Syncfusion.Licensing.crypto;

public class AsymmetricKeyParameter : CipherParameters
{
	private bool privateKey;

	public AsymmetricKeyParameter(bool privateKey)
	{
		this.privateKey = privateKey;
	}

	public bool isPrivate()
	{
		return privateKey;
	}
}
