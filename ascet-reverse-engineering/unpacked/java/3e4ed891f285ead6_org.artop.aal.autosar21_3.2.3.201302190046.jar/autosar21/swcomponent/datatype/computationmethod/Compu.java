/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.computationmethod.CompuConst;
import autosar21.swcomponent.datatype.computationmethod.CompuContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;

public interface Compu
extends ARObject,
GCompu {
    public CompuContent getCompuContentType();

    public void setCompuContentType(CompuContent var1);

    public CompuConst getCompuDefaultValue();

    public void setCompuDefaultValue(CompuConst var1);
}

