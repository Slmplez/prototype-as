/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;

public interface TimingDescriptionEvent
extends TimingDescription {
    public TDEventOccurrenceExpression getOccurrenceExpression();

    public void setOccurrenceExpression(TDEventOccurrenceExpression var1);
}

