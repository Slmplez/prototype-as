/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.annotation;

import autosar3x.genericstructure.commonpatterns.annotation.Annotation;
import autosar3x.genericstructure.commonpatterns.annotation.AnnotationPackage;
import autosar3x.genericstructure.commonpatterns.annotation.Remark;
import autosar3x.genericstructure.commonpatterns.annotation.impl.AnnotationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AnnotationFactory
extends EFactory {
    public static final AnnotationFactory eINSTANCE = AnnotationFactoryImpl.init();

    public Remark createRemark();

    public Annotation createAnnotation();

    public AnnotationPackage getAnnotationPackage();
}

