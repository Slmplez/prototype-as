/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.swcomponent.datatype.computationmethod.CompuConst;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents;

public interface CompuScaleConstantContents
extends CompuScaleContents,
GCompuScaleConstantContents {
    public CompuConst getCompuConst();

    public void setCompuConst(CompuConst var1);
}

