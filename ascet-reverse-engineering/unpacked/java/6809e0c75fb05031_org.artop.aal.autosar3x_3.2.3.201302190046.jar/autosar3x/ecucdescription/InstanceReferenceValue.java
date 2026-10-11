/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GInstanceReferenceValue
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.ConfigReferenceValue;
import autosar3x.ecucdescription.instanceref.InstanceReferenceValueValue;
import gautosar.gecucdescription.GInstanceReferenceValue;

public interface InstanceReferenceValue
extends ConfigReferenceValue,
GInstanceReferenceValue {
    public InstanceReferenceValueValue getValue();

    public void setValue(InstanceReferenceValueValue var1);
}

