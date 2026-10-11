/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 */
package autosar40.swcomponent.datatype.dataprototypes;

import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;

public interface ApplicationCompositeElementDataPrototype
extends DataPrototype,
GApplicationCompositeElementDataPrototype {
    public ApplicationDataType getType();

    public void setType(ApplicationDataType var1);
}

