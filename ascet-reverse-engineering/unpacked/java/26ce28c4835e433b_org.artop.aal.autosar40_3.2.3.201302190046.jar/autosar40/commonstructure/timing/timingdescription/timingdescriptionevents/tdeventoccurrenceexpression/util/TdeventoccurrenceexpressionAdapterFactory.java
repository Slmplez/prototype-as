/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.util;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpressionFormula;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.util.TdeventoccurrenceexpressionSwitch;
import autosar40.genericstructure.formulalanguage.FormulaExpression;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class TdeventoccurrenceexpressionAdapterFactory
extends AdapterFactoryImpl {
    protected static TdeventoccurrenceexpressionPackage modelPackage;
    protected TdeventoccurrenceexpressionSwitch<Adapter> modelSwitch = new TdeventoccurrenceexpressionSwitch<Adapter>(){

        @Override
        public Adapter caseTDEventOccurrenceExpressionFormula(TDEventOccurrenceExpressionFormula object) {
            return TdeventoccurrenceexpressionAdapterFactory.this.createTDEventOccurrenceExpressionFormulaAdapter();
        }

        @Override
        public Adapter caseTDEventOccurrenceExpression(TDEventOccurrenceExpression object) {
            return TdeventoccurrenceexpressionAdapterFactory.this.createTDEventOccurrenceExpressionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TdeventoccurrenceexpressionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TdeventoccurrenceexpressionAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGFormulaExpression(GFormulaExpression object) {
            return TdeventoccurrenceexpressionAdapterFactory.this.createGFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseFormulaExpression(FormulaExpression object) {
            return TdeventoccurrenceexpressionAdapterFactory.this.createFormulaExpressionAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TdeventoccurrenceexpressionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TdeventoccurrenceexpressionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TdeventoccurrenceexpressionPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createTDEventOccurrenceExpressionFormulaAdapter() {
        return null;
    }

    public Adapter createTDEventOccurrenceExpressionAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGFormulaExpressionAdapter() {
        return null;
    }

    public Adapter createFormulaExpressionAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

