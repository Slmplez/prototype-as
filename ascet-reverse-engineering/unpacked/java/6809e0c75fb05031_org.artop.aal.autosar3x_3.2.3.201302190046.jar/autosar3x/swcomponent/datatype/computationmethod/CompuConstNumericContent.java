/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.swcomponent.datatype.computationmethod.CompuConstContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent;

public interface CompuConstNumericContent
extends CompuConstContent,
GCompuConstNumericContent {
    public String getV();

    public void setV(String var1);

    public void unsetV();

    public boolean isSetV();
}

