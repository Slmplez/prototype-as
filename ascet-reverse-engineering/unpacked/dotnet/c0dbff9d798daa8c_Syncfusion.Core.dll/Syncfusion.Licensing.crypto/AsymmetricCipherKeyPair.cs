namespace Syncfusion.Licensing.crypto;

public class AsymmetricCipherKeyPair
{
	private AsymmetricKeyParameter publicParam;

	private AsymmetricKeyParameter privateParam;

	public AsymmetricCipherKeyPair(AsymmetricKeyParameter publicParam, AsymmetricKeyParameter privateParam)
	{
		this.publicParam = publicParam;
		this.privateParam = privateParam;
	}

	public AsymmetricKeyParameter getPublic()
	{
		return publicParam;
	}

	public AsymmetricKeyParameter getPrivate()
	{
		return privateParam;
	}
}
