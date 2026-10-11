/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs;

public interface CompuRationalCoeffs
extends ARObject,
GCompuRationalCoeffs {
    public CompuScaleRationalFormula getCompuScaleRationalFormula();

    public void setCompuScaleRationalFormula(CompuScaleRationalFormula var1);

    public CompuNominatorDenominator getCompuNumerator();

    public void setCompuNumerator(CompuNominatorDenominator var1);

    public CompuNominatorDenominator getCompuDenominator();

    public void setCompuDenominator(CompuNominatorDenominator var1);
}

