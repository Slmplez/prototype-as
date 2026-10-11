namespace Syncfusion.Licensing.crypto;

public interface AsymmetricBlockCipher
{
	void init(bool forEncryption, CipherParameters param);

	int getInputBlockSize();

	int getOutputBlockSize();

	byte[] processBlock(byte[] inBytes, int inOff, int len);
}
