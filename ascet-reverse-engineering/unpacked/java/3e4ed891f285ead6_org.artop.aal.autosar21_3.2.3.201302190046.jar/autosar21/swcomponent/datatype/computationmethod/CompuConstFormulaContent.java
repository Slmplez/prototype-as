/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstFormulaContent
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.swcomponent.datatype.computationmethod.CompuConstContent;
import autosar21.swcomponent.datatype.valuemodel.Vf;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstFormulaContent;

public interface CompuConstFormulaContent
extends CompuConstContent,
GCompuConstFormulaContent {
    public Vf getVf();

    public void setVf(Vf var1);
}

