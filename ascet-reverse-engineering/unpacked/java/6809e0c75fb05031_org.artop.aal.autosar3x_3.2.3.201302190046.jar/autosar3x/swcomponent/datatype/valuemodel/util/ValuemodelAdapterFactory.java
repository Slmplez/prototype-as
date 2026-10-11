/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint
 *  gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.datatype.valuemodel.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.valuemodel.V;
import autosar3x.swcomponent.datatype.valuemodel.ValueByFormula;
import autosar3x.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar3x.swcomponent.datatype.valuemodel.Vf;
import autosar3x.swcomponent.datatype.valuemodel.Vt;
import autosar3x.swcomponent.datatype.valuemodel.util.ValuemodelSwitch;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ValuemodelAdapterFactory
extends AdapterFactoryImpl {
    protected static ValuemodelPackage modelPackage;
    protected ValuemodelSwitch<Adapter> modelSwitch = new ValuemodelSwitch<Adapter>(){

        @Override
        public Adapter caseValueByFormula(ValueByFormula object) {
            return ValuemodelAdapterFactory.this.createValueByFormulaAdapter();
        }

        @Override
        public Adapter caseVt(Vt object) {
            return ValuemodelAdapterFactory.this.createVtAdapter();
        }

        @Override
        public Adapter caseV(V object) {
            return ValuemodelAdapterFactory.this.createVAdapter();
        }

        @Override
        public Adapter caseVf(Vf object) {
            return ValuemodelAdapterFactory.this.createVfAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ValuemodelAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ValuemodelAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGFormulaExpression(GFormulaExpression object) {
            return ValuemodelAdapterFactory.this.createGFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula object) {
            return ValuemodelAdapterFactory.this.createGSwSystemconstDependentFormulaAdapter();
        }

        @Override
        public Adapter caseGAttributeValueVariationPoint(GAttributeValueVariationPoint object) {
            return ValuemodelAdapterFactory.this.createGAttributeValueVariationPointAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ValuemodelAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ValuemodelAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ValuemodelPackage.eINSTANCE;
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

    public Adapter createValueByFormulaAdapter() {
        return null;
    }

    public Adapter createVtAdapter() {
        return null;
    }

    public Adapter createVAdapter() {
        return null;
    }

    public Adapter createVfAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

