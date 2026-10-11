/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.computationmethod.CompuConst;
import autosar3x.swcomponent.datatype.computationmethod.CompuContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;

public interface Compu
extends ARObject,
GCompu {
    public CompuContent getCompuContentType();

    public void setCompuContentType(CompuContent var1);

    public CompuConst getCompuDefaultValue();

    public void setCompuDefaultValue(CompuConst var1);
}

