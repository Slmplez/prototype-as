/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.datatype.constants;

import autosar3x.swcomponent.datatype.constants.ConstantSpecification;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;

public interface ConstantReference
extends ValueSpecification {
    public ConstantSpecification getConstant();

    public void setConstant(ConstantSpecification var1);
}

