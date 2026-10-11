/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement
 */
package autosar40.swcomponent.datatype.dataprototypes;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;

public interface ApplicationRecordElement
extends ApplicationCompositeElementDataPrototype,
GApplicationRecordElement {
    public ApplicationRecordDataType getApplicationRecordDataType();

    public void setApplicationRecordDataType(ApplicationRecordDataType var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

