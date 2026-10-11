/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpressionFormula;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.impl.TDEventOccurrenceExpressionFormulaImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.impl.TDEventOccurrenceExpressionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TdeventoccurrenceexpressionFactoryImpl
extends EFactoryImpl
implements TdeventoccurrenceexpressionFactory {
    public static TdeventoccurrenceexpressionFactory init() {
        try {
            TdeventoccurrenceexpressionFactory theTdeventoccurrenceexpressionFactory = (TdeventoccurrenceexpressionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe");
            if (theTdeventoccurrenceexpressionFactory != null) {
                return theTdeventoccurrenceexpressionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TdeventoccurrenceexpressionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createTDEventOccurrenceExpressionFormula();
            }
            case 1: {
                return this.createTDEventOccurrenceExpression();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public TDEventOccurrenceExpressionFormula createTDEventOccurrenceExpressionFormula() {
        TDEventOccurrenceExpressionFormulaImpl tdEventOccurrenceExpressionFormula = new TDEventOccurrenceExpressionFormulaImpl();
        return tdEventOccurrenceExpressionFormula;
    }

    public TDEventOccurrenceExpression createTDEventOccurrenceExpression() {
        TDEventOccurrenceExpressionImpl tdEventOccurrenceExpression = new TDEventOccurrenceExpressionImpl();
        return tdEventOccurrenceExpression;
    }

    public TdeventoccurrenceexpressionPackage getTdeventoccurrenceexpressionPackage() {
        return (TdeventoccurrenceexpressionPackage)this.getEPackage();
    }

    @Deprecated
    public static TdeventoccurrenceexpressionPackage getPackage() {
        return TdeventoccurrenceexpressionPackage.eINSTANCE;
    }
}

