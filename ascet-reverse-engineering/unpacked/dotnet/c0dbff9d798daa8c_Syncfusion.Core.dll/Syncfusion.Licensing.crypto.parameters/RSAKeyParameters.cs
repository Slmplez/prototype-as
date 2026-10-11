using Syncfusion.Licensing.math;

namespace Syncfusion.Licensing.crypto.parameters;

public class RSAKeyParameters : AsymmetricKeyParameter
{
	private BigInteger modulus;

	private BigInteger exponent;

	public RSAKeyParameters(bool isPrivate, BigInteger modulus, BigInteger exponent)
		: base(isPrivate)
	{
		this.modulus = modulus;
		this.exponent = exponent;
	}

	public BigInteger getModulus()
	{
		return modulus;
	}

	public BigInteger getExponent()
	{
		return exponent;
	}

	public override bool Equals(object obj)
	{
		if (obj is RSAKeyParameters)
		{
			RSAKeyParameters rSAKeyParameters = (RSAKeyParameters)obj;
			if (rSAKeyParameters.isPrivate() == isPrivate() && rSAKeyParameters.getModulus().Equals(modulus) && rSAKeyParameters.getExponent().Equals(exponent))
			{
				return true;
			}
		}
		return false;
	}

	public override int GetHashCode()
	{
		return getModulus().GetHashCode() ^ getExponent().GetHashCode() ^ (isPrivate() ? 1 : 0);
	}
}
