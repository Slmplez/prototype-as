/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.generalannotation;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationFactory;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.impl.GeneralannotationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GeneralannotationPackage
extends EPackage {
    public static final String eNAME = "generalannotation";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/ga";
    public static final String eNS_PREFIX = "";
    public static final GeneralannotationPackage eINSTANCE = GeneralannotationPackageImpl.init();
    public static final int GENERAL_ANNOTATION = 0;
    public static final int GENERAL_ANNOTATION__GCHECKSUM = 0;
    public static final int GENERAL_ANNOTATION__GTIMESTAMP = 1;
    public static final int GENERAL_ANNOTATION__CHECKSUM = 2;
    public static final int GENERAL_ANNOTATION__TIMESTAMP = 3;
    public static final int GENERAL_ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int GENERAL_ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int GENERAL_ANNOTATION__LABEL = 6;
    public static final int GENERAL_ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int GENERAL_ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int GENERAL_ANNOTATION_FEATURE_COUNT = 9;

    public EClass getGeneralAnnotation();

    public EReference getGeneralAnnotation_Label();

    public EAttribute getGeneralAnnotation_AnnotationOrigin();

    public EReference getGeneralAnnotation_AnnotationText();

    public GeneralannotationFactory getGeneralannotationFactory();

    public static interface Literals {
        public static final EClass GENERAL_ANNOTATION = eINSTANCE.getGeneralAnnotation();
        public static final EReference GENERAL_ANNOTATION__LABEL = eINSTANCE.getGeneralAnnotation_Label();
        public static final EAttribute GENERAL_ANNOTATION__ANNOTATION_ORIGIN = eINSTANCE.getGeneralAnnotation_AnnotationOrigin();
        public static final EReference GENERAL_ANNOTATION__ANNOTATION_TEXT = eINSTANCE.getGeneralAnnotation_AnnotationText();
    }
}

