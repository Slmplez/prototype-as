/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpressionFormula;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.impl.TdeventoccurrenceexpressionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TdeventoccurrenceexpressionFactory
extends EFactory {
    public static final TdeventoccurrenceexpressionFactory eINSTANCE = TdeventoccurrenceexpressionFactoryImpl.init();

    public TDEventOccurrenceExpressionFormula createTDEventOccurrenceExpressionFormula();

    public TDEventOccurrenceExpression createTDEventOccurrenceExpression();

    public TdeventoccurrenceexpressionPackage getTdeventoccurrenceexpressionPackage();
}

