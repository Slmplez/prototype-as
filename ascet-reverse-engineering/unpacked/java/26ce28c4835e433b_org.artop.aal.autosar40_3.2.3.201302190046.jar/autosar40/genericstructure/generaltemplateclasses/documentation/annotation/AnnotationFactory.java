/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.annotation;

import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.AnnotationPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.impl.AnnotationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AnnotationFactory
extends EFactory {
    public static final AnnotationFactory eINSTANCE = AnnotationFactoryImpl.init();

    public Annotation createAnnotation();

    public AnnotationPackage getAnnotationPackage();
}

