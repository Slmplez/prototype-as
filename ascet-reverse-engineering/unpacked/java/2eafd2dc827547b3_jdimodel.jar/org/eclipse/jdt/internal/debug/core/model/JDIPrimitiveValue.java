/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.PrimitiveValue
 *  com.sun.jdi.Value
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.sun.jdi.PrimitiveValue;
import com.sun.jdi.Value;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JDIPrimitiveValue
extends JDIValue
implements IJavaPrimitiveValue {
    public JDIPrimitiveValue(JDIDebugTarget target, Value value) {
        super(target, value);
    }

    protected PrimitiveValue getUnderlyingPrimitiveValue() {
        return (PrimitiveValue)this.getUnderlyingValue();
    }

    public boolean getBooleanValue() {
        return this.getUnderlyingPrimitiveValue().booleanValue();
    }

    public byte getByteValue() {
        return this.getUnderlyingPrimitiveValue().byteValue();
    }

    public char getCharValue() {
        return this.getUnderlyingPrimitiveValue().charValue();
    }

    public double getDoubleValue() {
        return this.getUnderlyingPrimitiveValue().doubleValue();
    }

    public float getFloatValue() {
        return this.getUnderlyingPrimitiveValue().floatValue();
    }

    public int getIntValue() {
        return this.getUnderlyingPrimitiveValue().intValue();
    }

    public long getLongValue() {
        return this.getUnderlyingPrimitiveValue().longValue();
    }

    public short getShortValue() {
        return this.getUnderlyingPrimitiveValue().shortValue();
    }
}

