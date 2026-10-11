/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.datatype.constants;

import autosar21.swcomponent.datatype.constants.ConstantSpecification;
import autosar21.swcomponent.datatype.constants.ValueSpecification;

public interface ConstantReference
extends ValueSpecification {
    public ConstantSpecification getConstant();

    public void setConstant(ConstantSpecification var1);
}

