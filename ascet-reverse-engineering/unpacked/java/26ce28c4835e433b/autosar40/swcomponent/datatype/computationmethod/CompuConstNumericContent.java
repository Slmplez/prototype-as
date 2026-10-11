/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent
 */
package autosar40.swcomponent.datatype.computationmethod;

import autosar40.swcomponent.datatype.computationmethod.CompuConstContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent;

public interface CompuConstNumericContent
extends CompuConstContent,
GCompuConstNumericContent {
    public String getV();

    public void setV(String var1);

    public void unsetV();

    public boolean isSetV();

    public float getVAsFloat();

    public int getVAsInteger();

    public int getRadixForV();

    public void setV(int var1, String var2);
}

