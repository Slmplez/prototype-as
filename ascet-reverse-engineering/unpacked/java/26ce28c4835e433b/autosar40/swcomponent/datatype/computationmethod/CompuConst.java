/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst
 */
package autosar40.swcomponent.datatype.computationmethod;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.computationmethod.CompuConstContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst;

public interface CompuConst
extends ARObject,
GCompuConst {
    public CompuConstContent getCompuConstContentType();

    public void setCompuConstContentType(CompuConstContent var1);
}

