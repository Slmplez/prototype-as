/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GReferenceValue
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucAbstractReferenceValue;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import gautosar.gecucdescription.GReferenceValue;

public interface EcucReferenceValue
extends EcucAbstractReferenceValue,
GReferenceValue {
    public Identifiable getValue();

    public void setValue(Identifiable var1);
}

