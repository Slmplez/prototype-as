/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.datatype.constants;

import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;

public interface ConstantSpecification
extends ARElement {
    public ValueSpecification getValue();

    public void setValue(ValueSpecification var1);
}

