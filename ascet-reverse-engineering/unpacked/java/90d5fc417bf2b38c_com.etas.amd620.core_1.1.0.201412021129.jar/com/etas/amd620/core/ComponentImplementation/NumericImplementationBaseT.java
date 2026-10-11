/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.LimitOverflowType;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;

public interface NumericImplementationBaseT
extends PrimitiveImplementationT {
    public boolean isIsLimitOverflow();

    public void setIsLimitOverflow(boolean var1);

    public void unsetIsLimitOverflow();

    public boolean isSetIsLimitOverflow();

    public boolean isLimitAssignments();

    public void setLimitAssignments(boolean var1);

    public void unsetLimitAssignments();

    public boolean isSetLimitAssignments();

    public LimitOverflowType getLimitOverflow();

    public void setLimitOverflow(LimitOverflowType var1);

    public void unsetLimitOverflow();

    public boolean isSetLimitOverflow();
}

