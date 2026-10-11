/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.swcomponent.datatype.computationmethod.CompuConst;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents;

public interface CompuScaleConstantContents
extends CompuScaleContents,
GCompuScaleConstantContents {
    public CompuConst getCompuConst();

    public void setCompuConst(CompuConst var1);
}

