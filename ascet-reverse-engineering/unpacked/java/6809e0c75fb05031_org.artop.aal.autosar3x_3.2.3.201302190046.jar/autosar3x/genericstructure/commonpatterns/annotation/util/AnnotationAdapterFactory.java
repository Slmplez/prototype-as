/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.commonpatterns.annotation.util;

import autosar3x.genericstructure.commonpatterns.annotation.Annotation;
import autosar3x.genericstructure.commonpatterns.annotation.AnnotationPackage;
import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.genericstructure.commonpatterns.annotation.Remark;
import autosar3x.genericstructure.commonpatterns.annotation.util.AnnotationSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
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
        public Adapter caseGeneralAnnotation(GeneralAnnotation object) {
            return AnnotationAdapterFactory.this.createGeneralAnnotationAdapter();
        }

        @Override
        public Adapter caseRemark(Remark object) {
            return AnnotationAdapterFactory.this.createRemarkAdapter();
        }

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
        public Adapter caseGRemark(GRemark object) {
            return AnnotationAdapterFactory.this.createGRemarkAdapter();
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

    public Adapter createGeneralAnnotationAdapter() {
        return null;
    }

    public Adapter createRemarkAdapter() {
        return null;
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

    public Adapter createGRemarkAdapter() {
        return null;
    }

    public Adapter createGAnnotationAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

