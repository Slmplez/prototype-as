/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.datatype.constants;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.datatype.constants.ValueSpecification;

public interface ConstantSpecification
extends ARElement {
    public ValueSpecification getValue();

    public void setValue(ValueSpecification var1);
}

