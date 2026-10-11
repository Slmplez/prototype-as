/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.util;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.util.GdocumentationSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GdocumentationAdapterFactory
extends AdapterFactoryImpl {
    protected static GdocumentationPackage modelPackage;
    protected GdocumentationSwitch<Adapter> modelSwitch = new GdocumentationSwitch<Adapter>(){

        @Override
        public Adapter caseGAnnotation(GAnnotation object) {
            return GdocumentationAdapterFactory.this.createGAnnotationAdapter();
        }

        @Override
        public Adapter caseGRemark(GRemark object) {
            return GdocumentationAdapterFactory.this.createGRemarkAdapter();
        }

        @Override
        public Adapter caseGGeneralAnnotation(GGeneralAnnotation object) {
            return GdocumentationAdapterFactory.this.createGGeneralAnnotationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GdocumentationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GdocumentationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GdocumentationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GdocumentationPackage.eINSTANCE;
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

    public Adapter createGAnnotationAdapter() {
        return null;
    }

    public Adapter createGRemarkAdapter() {
        return null;
    }

    public Adapter createGGeneralAnnotationAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

