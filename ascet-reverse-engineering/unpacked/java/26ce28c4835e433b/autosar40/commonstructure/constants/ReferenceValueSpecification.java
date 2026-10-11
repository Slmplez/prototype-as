/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.constants;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;

public interface ReferenceValueSpecification
extends ValueSpecification {
    public DataPrototype getReferenceValue();

    public void setReferenceValue(DataPrototype var1);
}

