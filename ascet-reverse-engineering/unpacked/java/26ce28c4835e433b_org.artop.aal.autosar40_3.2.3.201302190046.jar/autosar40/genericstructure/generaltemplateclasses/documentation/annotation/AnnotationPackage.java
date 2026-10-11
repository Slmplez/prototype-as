/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.annotation;

import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.AnnotationFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.impl.AnnotationPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface AnnotationPackage
extends EPackage {
    public static final String eNAME = "annotation";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/a";
    public static final String eNS_PREFIX = "";
    public static final AnnotationPackage eINSTANCE = AnnotationPackageImpl.init();
    public static final int ANNOTATION = 0;
    public static final int ANNOTATION__GCHECKSUM = 0;
    public static final int ANNOTATION__GTIMESTAMP = 1;
    public static final int ANNOTATION__CHECKSUM = 2;
    public static final int ANNOTATION__TIMESTAMP = 3;
    public static final int ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int ANNOTATION__LABEL = 6;
    public static final int ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int ANNOTATION_FEATURE_COUNT = 9;

    public EClass getAnnotation();

    public AnnotationFactory getAnnotationFactory();

    public static interface Literals {
        public static final EClass ANNOTATION = eINSTANCE.getAnnotation();
    }
}

