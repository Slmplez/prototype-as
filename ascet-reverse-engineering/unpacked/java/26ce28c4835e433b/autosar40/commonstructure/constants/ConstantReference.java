/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.constants;

import autosar40.commonstructure.constants.ConstantSpecification;
import autosar40.commonstructure.constants.ValueSpecification;

public interface ConstantReference
extends ValueSpecification {
    public ConstantSpecification getConstant();

    public void setConstant(ConstantSpecification var1);
}

