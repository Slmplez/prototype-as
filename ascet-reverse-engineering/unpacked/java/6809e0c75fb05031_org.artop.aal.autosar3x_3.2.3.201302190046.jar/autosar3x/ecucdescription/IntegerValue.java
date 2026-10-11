/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GIntegerValue
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.ParameterValue;
import gautosar.gecucdescription.GIntegerValue;
import java.math.BigInteger;

public interface IntegerValue
extends ParameterValue,
GIntegerValue {
    public BigInteger getValue();

    public void setValue(BigInteger var1);

    public void unsetValue();

    public boolean isSetValue();
}

