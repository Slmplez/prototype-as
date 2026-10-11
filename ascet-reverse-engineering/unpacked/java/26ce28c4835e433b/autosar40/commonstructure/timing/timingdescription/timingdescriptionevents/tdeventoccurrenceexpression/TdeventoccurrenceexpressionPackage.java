/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.impl.TdeventoccurrenceexpressionPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TdeventoccurrenceexpressionPackage
extends EPackage {
    public static final String eNAME = "tdeventoccurrenceexpression";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe";
    public static final String eNS_PREFIX = "";
    public static final TdeventoccurrenceexpressionPackage eINSTANCE = TdeventoccurrenceexpressionPackageImpl.init();
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA = 0;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__GCHECKSUM = 0;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__GTIMESTAMP = 1;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__CHECKSUM = 2;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__TIMESTAMP = 3;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__MIXED = 4;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__TD_EVENT_OCCURRENCE_EXPRESSION = 5;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__ARGUMENTS = 6;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__EVENTS = 7;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__VARIABLES = 8;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA_FEATURE_COUNT = 9;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION = 1;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION__GCHECKSUM = 0;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION__GTIMESTAMP = 1;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION__CHECKSUM = 2;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION__TIMESTAMP = 3;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION__TIMING_DESCRIPTION_EVENT = 4;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION__ARGUMENTS = 5;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION__FORMULA = 6;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION__VARIABLES = 7;
    public static final int TD_EVENT_OCCURRENCE_EXPRESSION_FEATURE_COUNT = 8;

    public EClass getTDEventOccurrenceExpressionFormula();

    public EReference getTDEventOccurrenceExpressionFormula_TDEventOccurrenceExpression();

    public EReference getTDEventOccurrenceExpressionFormula_Arguments();

    public EReference getTDEventOccurrenceExpressionFormula_Events();

    public EReference getTDEventOccurrenceExpressionFormula_Variables();

    public EClass getTDEventOccurrenceExpression();

    public EReference getTDEventOccurrenceExpression_TimingDescriptionEvent();

    public EReference getTDEventOccurrenceExpression_Arguments();

    public EReference getTDEventOccurrenceExpression_Formula();

    public EReference getTDEventOccurrenceExpression_Variables();

    public TdeventoccurrenceexpressionFactory getTdeventoccurrenceexpressionFactory();

    public static interface Literals {
        public static final EClass TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA = eINSTANCE.getTDEventOccurrenceExpressionFormula();
        public static final EReference TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__TD_EVENT_OCCURRENCE_EXPRESSION = eINSTANCE.getTDEventOccurrenceExpressionFormula_TDEventOccurrenceExpression();
        public static final EReference TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__ARGUMENTS = eINSTANCE.getTDEventOccurrenceExpressionFormula_Arguments();
        public static final EReference TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__EVENTS = eINSTANCE.getTDEventOccurrenceExpressionFormula_Events();
        public static final EReference TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__VARIABLES = eINSTANCE.getTDEventOccurrenceExpressionFormula_Variables();
        public static final EClass TD_EVENT_OCCURRENCE_EXPRESSION = eINSTANCE.getTDEventOccurrenceExpression();
        public static final EReference TD_EVENT_OCCURRENCE_EXPRESSION__TIMING_DESCRIPTION_EVENT = eINSTANCE.getTDEventOccurrenceExpression_TimingDescriptionEvent();
        public static final EReference TD_EVENT_OCCURRENCE_EXPRESSION__ARGUMENTS = eINSTANCE.getTDEventOccurrenceExpression_Arguments();
        public static final EReference TD_EVENT_OCCURRENCE_EXPRESSION__FORMULA = eINSTANCE.getTDEventOccurrenceExpression_Formula();
        public static final EReference TD_EVENT_OCCURRENCE_EXPRESSION__VARIABLES = eINSTANCE.getTDEventOccurrenceExpression_Variables();
    }
}

