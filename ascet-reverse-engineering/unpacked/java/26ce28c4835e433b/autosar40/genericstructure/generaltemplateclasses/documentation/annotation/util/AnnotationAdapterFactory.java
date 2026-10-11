/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.annotation.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.AnnotationPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.util.AnnotationSwitch;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class AnnotationAdapterFactory
extends AdapterFactoryImpl {
    protected static AnnotationPackage modelPackage;
    protected AnnotationSwitch<Adapter> modelSwitch = new AnnotationSwitch<Adapter>(){

        @Override
        public Adapter caseAnnotation(Annotation object) {
            return AnnotationAdapterFactory.this.createAnnotationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AnnotationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AnnotationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGGeneralAnnotation(GGeneralAnnotation object) {
            return AnnotationAdapterFactory.this.createGGeneralAnnotationAdapter();
        }

        @Override
        public Adapter caseGeneralAnnotation(GeneralAnnotation object) {
            return AnnotationAdapterFactory.this.createGeneralAnnotationAdapter();
        }

        @Override
        public Adapter caseGAnnotation(GAnnotation object) {
            return AnnotationAdapterFactory.this.createGAnnotationAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AnnotationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AnnotationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AnnotationPackage.eINSTANCE;
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

    public Adapter createAnnotationAdapter() {
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

    public Adapter createGeneralAnnotationAdapter() {
        return null;
    }

    public Adapter createGAnnotationAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

