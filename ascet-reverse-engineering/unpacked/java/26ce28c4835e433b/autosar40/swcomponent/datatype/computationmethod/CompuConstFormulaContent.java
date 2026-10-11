/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstFormulaContent
 */
package autosar40.swcomponent.datatype.computationmethod;

import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.swcomponent.datatype.computationmethod.CompuConstContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstFormulaContent;

public interface CompuConstFormulaContent
extends CompuConstContent,
GCompuConstFormulaContent {
    public NumericalValueVariationPoint getVf();

    public void setVf(NumericalValueVariationPoint var1);
}

