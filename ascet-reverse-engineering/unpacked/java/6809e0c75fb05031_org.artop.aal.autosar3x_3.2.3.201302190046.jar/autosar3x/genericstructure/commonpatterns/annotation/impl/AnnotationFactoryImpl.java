/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.genericstructure.commonpatterns.annotation.impl;

import autosar3x.genericstructure.commonpatterns.annotation.Annotation;
import autosar3x.genericstructure.commonpatterns.annotation.AnnotationFactory;
import autosar3x.genericstructure.commonpatterns.annotation.AnnotationPackage;
import autosar3x.genericstructure.commonpatterns.annotation.Remark;
import autosar3x.genericstructure.commonpatterns.annotation.impl.AnnotationImpl;
import autosar3x.genericstructure.commonpatterns.annotation.impl.RemarkImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class AnnotationFactoryImpl
extends EFactoryImpl
implements AnnotationFactory {
    public static AnnotationFactory init() {
        try {
            AnnotationFactory theAnnotationFactory = (AnnotationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/gs/cp/a");
            if (theAnnotationFactory != null) {
                return theAnnotationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AnnotationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createRemark();
            }
            case 2: {
                return this.createAnnotation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Remark createRemark() {
        RemarkImpl remark = new RemarkImpl();
        return remark;
    }

    public Annotation createAnnotation() {
        AnnotationImpl annotation = new AnnotationImpl();
        return annotation;
    }

    public AnnotationPackage getAnnotationPackage() {
        return (AnnotationPackage)this.getEPackage();
    }

    @Deprecated
    public static AnnotationPackage getPackage() {
        return AnnotationPackage.eINSTANCE;
    }
}

