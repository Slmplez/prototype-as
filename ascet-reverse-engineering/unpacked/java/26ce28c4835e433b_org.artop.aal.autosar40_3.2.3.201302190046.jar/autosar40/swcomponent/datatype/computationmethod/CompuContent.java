/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent
 */
package autosar40.swcomponent.datatype.computationmethod;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.computationmethod.Compu;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent;

public interface CompuContent
extends ARObject,
GCompuContent {
    public Compu getCompu();

    public void setCompu(Compu var1);
}

