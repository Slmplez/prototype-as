/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GIntegerParamDef
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigParameter;
import gautosar.gecucparameterdef.GIntegerParamDef;
import java.math.BigInteger;

public interface IntegerParamDef
extends ConfigParameter,
GIntegerParamDef {
    public BigInteger getDefaultValue();

    public void setDefaultValue(BigInteger var1);

    public void unsetDefaultValue();

    public boolean isSetDefaultValue();

    public BigInteger getMax();

    public void setMax(BigInteger var1);

    public void unsetMax();

    public boolean isSetMax();

    public BigInteger getMin();

    public void setMin(BigInteger var1);

    public void unsetMin();

    public boolean isSetMin();
}

