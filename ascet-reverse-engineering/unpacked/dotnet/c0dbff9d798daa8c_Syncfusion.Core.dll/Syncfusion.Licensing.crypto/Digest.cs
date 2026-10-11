namespace Syncfusion.Licensing.crypto;

public interface Digest
{
	string getAlgorithmName();

	int getDigestSize();

	void update(byte inByte);

	void update(byte[] inBytes, int inOff, int len);

	int doFinal(byte[] outBytes, int outOff);

	void reset();
}
