/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GInstanceReferenceValue
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.ConfigReferenceValue;
import autosar21.ecucdescription.instanceref.InstanceReferenceValueValue;
import gautosar.gecucdescription.GInstanceReferenceValue;

public interface InstanceReferenceValue
extends ConfigReferenceValue,
GInstanceReferenceValue {
    public InstanceReferenceValueValue getValue();

    public void setValue(InstanceReferenceValueValue var1);
}

