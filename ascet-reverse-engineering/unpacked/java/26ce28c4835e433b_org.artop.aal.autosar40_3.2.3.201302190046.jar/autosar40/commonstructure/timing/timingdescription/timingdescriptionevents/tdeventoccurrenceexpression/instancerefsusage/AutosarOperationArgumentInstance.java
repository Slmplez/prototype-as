/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.OperationArgumentInComponentInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;

public interface AutosarOperationArgumentInstance
extends Identifiable {
    public TDEventOccurrenceExpression getTDEventOccurrenceExpression();

    public void setTDEventOccurrenceExpression(TDEventOccurrenceExpression var1);

    public OperationArgumentInComponentInstanceRef getOperationArgumentInstance();

    public void setOperationArgumentInstance(OperationArgumentInComponentInstanceRef var1);
}

