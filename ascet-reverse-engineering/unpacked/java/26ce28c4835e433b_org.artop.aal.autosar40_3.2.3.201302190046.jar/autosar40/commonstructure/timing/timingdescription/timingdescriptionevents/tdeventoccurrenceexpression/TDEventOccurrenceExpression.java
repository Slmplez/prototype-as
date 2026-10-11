/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpressionFormula;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarOperationArgumentInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TDEventOccurrenceExpression
extends ARObject {
    public TimingDescriptionEvent getTimingDescriptionEvent();

    public void setTimingDescriptionEvent(TimingDescriptionEvent var1);

    public EList<AutosarOperationArgumentInstance> getArguments();

    public TDEventOccurrenceExpressionFormula getFormula();

    public void setFormula(TDEventOccurrenceExpressionFormula var1);

    public EList<AutosarVariableInstance> getVariables();
}

