/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.calibrationparameter;

import autosar3x.commonstructure.axis.SwAxisIndividual;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;

public interface SwCalprmAxisIndividualAxis
extends SwCalprmAxisTypeProps {
    public SwAxisIndividual getSwAxisIndividual();

    public void setSwAxisIndividual(SwAxisIndividual var1);
}

