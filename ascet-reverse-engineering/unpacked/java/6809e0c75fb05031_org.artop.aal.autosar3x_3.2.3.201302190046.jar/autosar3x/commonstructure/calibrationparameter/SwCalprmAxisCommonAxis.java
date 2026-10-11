/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.calibrationparameter;

import autosar3x.commonstructure.axis.SwAxisGrouped;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;

public interface SwCalprmAxisCommonAxis
extends SwCalprmAxisTypeProps {
    public SwAxisGrouped getSwAxisGrouped();

    public void setSwAxisGrouped(SwAxisGrouped var1);
}

