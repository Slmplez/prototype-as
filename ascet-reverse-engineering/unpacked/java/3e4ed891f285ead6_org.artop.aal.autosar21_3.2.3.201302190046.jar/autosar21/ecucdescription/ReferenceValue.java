/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GReferenceValue
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.ConfigReferenceValue;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucdescription.GReferenceValue;

public interface ReferenceValue
extends ConfigReferenceValue,
GReferenceValue {
    public Identifiable getValue();

    public void setValue(Identifiable var1);
}

