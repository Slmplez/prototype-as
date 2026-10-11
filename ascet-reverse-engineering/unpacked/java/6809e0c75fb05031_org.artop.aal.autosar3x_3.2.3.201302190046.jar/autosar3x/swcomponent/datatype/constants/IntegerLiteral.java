/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.datatype.constants;

import autosar3x.swcomponent.datatype.constants.PrimitiveSpecification;
import java.math.BigInteger;

public interface IntegerLiteral
extends PrimitiveSpecification {
    public BigInteger getValue();

    public void setValue(BigInteger var1);

    public void unsetValue();

    public boolean isSetValue();
}

