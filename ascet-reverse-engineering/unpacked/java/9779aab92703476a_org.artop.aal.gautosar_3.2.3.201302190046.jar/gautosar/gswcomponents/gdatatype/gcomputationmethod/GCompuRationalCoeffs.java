/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gdatatype.gcomputationmethod;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator;

public interface GCompuRationalCoeffs
extends GARObject {
    public GCompuNominatorDenominator gGetCompuNumerator();

    public void gSetCompuNumerator(GCompuNominatorDenominator var1);

    public GCompuNominatorDenominator gGetCompuDenominator();

    public void gSetCompuDenominator(GCompuNominatorDenominator var1);
}

