/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.generalannotation.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralAnnotation;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationPackage;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.util.GeneralannotationSwitch;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GeneralannotationAdapterFactory
extends AdapterFactoryImpl {
    protected static GeneralannotationPackage modelPackage;
    protected GeneralannotationSwitch<Adapter> modelSwitch = new GeneralannotationSwitch<Adapter>(){

        @Override
        public Adapter caseGeneralAnnotation(GeneralAnnotation object) {
            return GeneralannotationAdapterFactory.this.createGeneralAnnotationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GeneralannotationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return GeneralannotationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGGeneralAnnotation(GGeneralAnnotation object) {
            return GeneralannotationAdapterFactory.this.createGGeneralAnnotationAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GeneralannotationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GeneralannotationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GeneralannotationPackage.eINSTANCE;
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

    public Adapter createGeneralAnnotationAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGGeneralAnnotationAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

