/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gecucdescription;

import gautosar.gecucdescription.GParameterValue;
import java.math.BigInteger;

public interface GIntegerValue
extends GParameterValue {
    public BigInteger gGetValue();

    public void gSetValue(BigInteger var1);

    public void gUnsetValue();

    public boolean gIsSetValue();
}

