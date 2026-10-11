/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GReferenceValue
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.ConfigReferenceValue;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucdescription.GReferenceValue;

public interface ReferenceValue
extends ConfigReferenceValue,
GReferenceValue {
    public Identifiable getValue();

    public void setValue(Identifiable var1);
}

