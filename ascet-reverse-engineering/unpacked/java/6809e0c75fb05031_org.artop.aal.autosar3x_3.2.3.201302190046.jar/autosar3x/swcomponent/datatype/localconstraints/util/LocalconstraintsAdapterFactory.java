/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint
 *  gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.datatype.localconstraints.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.localconstraints.Limit;
import autosar3x.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar3x.swcomponent.datatype.localconstraints.util.LocalconstraintsSwitch;
import autosar3x.swcomponent.datatype.valuemodel.ValueByFormula;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class LocalconstraintsAdapterFactory
extends AdapterFactoryImpl {
    protected static LocalconstraintsPackage modelPackage;
    protected LocalconstraintsSwitch<Adapter> modelSwitch = new LocalconstraintsSwitch<Adapter>(){

        @Override
        public Adapter caseLimit(Limit object) {
            return LocalconstraintsAdapterFactory.this.createLimitAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return LocalconstraintsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return LocalconstraintsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGFormulaExpression(GFormulaExpression object) {
            return LocalconstraintsAdapterFactory.this.createGFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula object) {
            return LocalconstraintsAdapterFactory.this.createGSwSystemconstDependentFormulaAdapter();
        }

        @Override
        public Adapter caseGAttributeValueVariationPoint(GAttributeValueVariationPoint object) {
            return LocalconstraintsAdapterFactory.this.createGAttributeValueVariationPointAdapter();
        }

        @Override
        public Adapter caseValueByFormula(ValueByFormula object) {
            return LocalconstraintsAdapterFactory.this.createValueByFormulaAdapter();
        }

        @Override
        public Adapter caseGAbstractLimit(GAbstractLimit object) {
            return LocalconstraintsAdapterFactory.this.createGAbstractLimitAdapter();
        }

        @Override
        public Adapter caseGLimit(GLimit object) {
            return LocalconstraintsAdapterFactory.this.createGLimitAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return LocalconstraintsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public LocalconstraintsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = LocalconstraintsPackage.eINSTANCE;
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

    public Adapter createLimitAdapter() {
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

    public Adapter createGSwSystemconstDependentFormulaAdapter() {
        return null;
    }

    public Adapter createGAttributeValueVariationPointAdapter() {
        return null;
    }

    public Adapter createValueByFormulaAdapter() {
        return null;
    }

    public Adapter createGAbstractLimitAdapter() {
        return null;
    }

    public Adapter createGLimitAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

