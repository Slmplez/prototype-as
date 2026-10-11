/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula;

public interface CompuScaleRationalFormula
extends CompuScaleContents,
GCompuScaleRationalFormula {
    public CompuRationalCoeffs getCompuRationalCoeffs();

    public void setCompuRationalCoeffs(CompuRationalCoeffs var1);
}

