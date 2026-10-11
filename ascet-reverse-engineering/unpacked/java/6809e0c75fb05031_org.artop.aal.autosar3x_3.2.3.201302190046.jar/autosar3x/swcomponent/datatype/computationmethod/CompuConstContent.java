/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.computationmethod.CompuConst;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent;

public interface CompuConstContent
extends ARObject,
GCompuConstContent {
    public CompuConst getCompuConst();

    public void setCompuConst(CompuConst var1);
}

