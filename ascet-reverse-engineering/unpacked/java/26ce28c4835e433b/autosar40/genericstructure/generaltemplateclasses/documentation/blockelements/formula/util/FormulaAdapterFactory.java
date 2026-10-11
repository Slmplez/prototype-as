/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.MlFormula;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.util.FormulaSwitch;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class FormulaAdapterFactory
extends AdapterFactoryImpl {
    protected static FormulaPackage modelPackage;
    protected FormulaSwitch<Adapter> modelSwitch = new FormulaSwitch<Adapter>(){

        @Override
        public Adapter caseMlFormula(MlFormula object) {
            return FormulaAdapterFactory.this.createMlFormulaAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return FormulaAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return FormulaAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseDocumentViewSelectable(DocumentViewSelectable object) {
            return FormulaAdapterFactory.this.createDocumentViewSelectableAdapter();
        }

        @Override
        public Adapter casePaginateable(Paginateable object) {
            return FormulaAdapterFactory.this.createPaginateableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return FormulaAdapterFactory.this.createEObjectAdapter();
        }
    };

    public FormulaAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = FormulaPackage.eINSTANCE;
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

    public Adapter createMlFormulaAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createDocumentViewSelectableAdapter() {
        return null;
    }

    public Adapter createPaginateableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

