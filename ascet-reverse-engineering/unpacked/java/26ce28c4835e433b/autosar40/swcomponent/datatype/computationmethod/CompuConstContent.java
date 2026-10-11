/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent
 */
package autosar40.swcomponent.datatype.computationmethod;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.computationmethod.CompuConst;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent;

public interface CompuConstContent
extends ARObject,
GCompuConstContent {
    public CompuConst getCompuConst();

    public void setCompuConst(CompuConst var1);
}

