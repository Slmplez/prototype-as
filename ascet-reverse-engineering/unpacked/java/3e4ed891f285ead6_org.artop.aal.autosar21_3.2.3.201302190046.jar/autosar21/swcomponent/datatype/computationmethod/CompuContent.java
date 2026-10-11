/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.computationmethod.Compu;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent;

public interface CompuContent
extends ARObject,
GCompuContent {
    public Compu getCompu();

    public void setCompu(Compu var1);
}

