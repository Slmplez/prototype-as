/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarOperationArgumentInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.genericstructure.formulalanguage.FormulaExpression;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TDEventOccurrenceExpressionFormula
extends FormulaExpression {
    public TDEventOccurrenceExpression getTDEventOccurrenceExpression();

    public void setTDEventOccurrenceExpression(TDEventOccurrenceExpression var1);

    public EList<AutosarOperationArgumentInstance> getArguments();

    public EList<TimingDescriptionEvent> getEvents();

    public EList<AutosarVariableInstance> getVariables();
}

