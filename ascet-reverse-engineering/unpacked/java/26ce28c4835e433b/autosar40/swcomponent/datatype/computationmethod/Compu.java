/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu
 */
package autosar40.swcomponent.datatype.computationmethod;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.computationmethod.CompuConst;
import autosar40.swcomponent.datatype.computationmethod.CompuContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;

public interface Compu
extends ARObject,
GCompu {
    public CompuContent getCompuContent();

    public void setCompuContent(CompuContent var1);

    public CompuConst getCompuDefaultValue();

    public void setCompuDefaultValue(CompuConst var1);
}

