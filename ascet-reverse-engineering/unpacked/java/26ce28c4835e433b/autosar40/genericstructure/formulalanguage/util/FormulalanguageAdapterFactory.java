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
package autosar40.genericstructure.formulalanguage.util;

import autosar40.genericstructure.formulalanguage.FormulaExpression;
import autosar40.genericstructure.formulalanguage.FormulalanguagePackage;
import autosar40.genericstructure.formulalanguage.util.FormulalanguageSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class FormulalanguageAdapterFactory
extends AdapterFactoryImpl {
    protected static FormulalanguagePackage modelPackage;
    protected FormulalanguageSwitch<Adapter> modelSwitch = new FormulalanguageSwitch<Adapter>(){

        @Override
        public Adapter caseFormulaExpression(FormulaExpression object) {
            return FormulalanguageAdapterFactory.this.createFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return FormulalanguageAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return FormulalanguageAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGFormulaExpression(GFormulaExpression object) {
            return FormulalanguageAdapterFactory.this.createGFormulaExpressionAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return FormulalanguageAdapterFactory.this.createEObjectAdapter();
        }
    };

    public FormulalanguageAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = FormulalanguagePackage.eINSTANCE;
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

    public Adapter createFormulaExpressionAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

