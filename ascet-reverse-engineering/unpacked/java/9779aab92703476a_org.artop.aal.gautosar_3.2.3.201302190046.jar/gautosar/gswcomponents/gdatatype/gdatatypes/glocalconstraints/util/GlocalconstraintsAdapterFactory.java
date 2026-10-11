/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.util;

import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.util.GlocalconstraintsSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GlocalconstraintsAdapterFactory
extends AdapterFactoryImpl {
    protected static GlocalconstraintsPackage modelPackage;
    protected GlocalconstraintsSwitch<Adapter> modelSwitch = new GlocalconstraintsSwitch<Adapter>(){

        @Override
        public Adapter caseGLimit(GLimit object) {
            return GlocalconstraintsAdapterFactory.this.createGLimitAdapter();
        }

        @Override
        public Adapter caseGAbstractLimit(GAbstractLimit object) {
            return GlocalconstraintsAdapterFactory.this.createGAbstractLimitAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GlocalconstraintsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGFormulaExpression(GFormulaExpression object) {
            return GlocalconstraintsAdapterFactory.this.createGFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula object) {
            return GlocalconstraintsAdapterFactory.this.createGSwSystemconstDependentFormulaAdapter();
        }

        @Override
        public Adapter caseGAttributeValueVariationPoint(GAttributeValueVariationPoint object) {
            return GlocalconstraintsAdapterFactory.this.createGAttributeValueVariationPointAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GlocalconstraintsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GlocalconstraintsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GlocalconstraintsPackage.eINSTANCE;
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

    public Adapter createGLimitAdapter() {
        return null;
    }

    public Adapter createGAbstractLimitAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
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

