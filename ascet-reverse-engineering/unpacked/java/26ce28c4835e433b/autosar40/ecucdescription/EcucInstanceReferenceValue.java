/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GInstanceReferenceValue
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucAbstractReferenceValue;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import gautosar.gecucdescription.GInstanceReferenceValue;

public interface EcucInstanceReferenceValue
extends EcucAbstractReferenceValue,
GInstanceReferenceValue {
    public AnyInstanceRef getValue();

    public void setValue(AnyInstanceRef var1);
}

