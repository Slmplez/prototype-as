/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.swcomponent.datatype.computationmethod.CompuConstContent;
import autosar3x.swcomponent.datatype.valuemodel.Vt;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent;

public interface CompuConstTextContent
extends CompuConstContent,
GCompuConstTextContent {
    public Vt getVt();

    public void setVt(Vt var1);
}

