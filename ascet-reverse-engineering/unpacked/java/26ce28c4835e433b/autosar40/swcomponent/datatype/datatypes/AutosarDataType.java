/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType
 */
package autosar40.swcomponent.datatype.datatypes;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;

public interface AutosarDataType
extends ARElement,
AtpType,
GAutosarDataType {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

