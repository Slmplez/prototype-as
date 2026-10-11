/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.genericstructure.commonpatterns.annotation;

import autosar3x.genericstructure.commonpatterns.annotation.AnnotationFactory;
import autosar3x.genericstructure.commonpatterns.annotation.impl.AnnotationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AnnotationPackage
extends EPackage {
    public static final String eNAME = "annotation";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/cp/a";
    public static final String eNS_PREFIX = "";
    public static final AnnotationPackage eINSTANCE = AnnotationPackageImpl.init();
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
    public static final int REMARK = 1;
    public static final int REMARK__GCHECKSUM = 0;
    public static final int REMARK__GTIMESTAMP = 1;
    public static final int REMARK__CHECKSUM = 2;
    public static final int REMARK__TIMESTAMP = 3;
    public static final int REMARK__GPS = 4;
    public static final int REMARK__GENERAL_ANNOTATION = 5;
    public static final int REMARK__PS = 6;
    public static final int REMARK__VERBATIMS = 7;
    public static final int REMARK_FEATURE_COUNT = 8;
    public static final int ANNOTATION = 2;
    public static final int ANNOTATION__GCHECKSUM = 0;
    public static final int ANNOTATION__GTIMESTAMP = 1;
    public static final int ANNOTATION__CHECKSUM = 2;
    public static final int ANNOTATION__TIMESTAMP = 3;
    public static final int ANNOTATION__GANNOTATION_ORIGIN = 4;
    public static final int ANNOTATION__GANNOTATION_TEXT = 5;
    public static final int ANNOTATION__LABEL = 6;
    public static final int ANNOTATION__ANNOTATION_ORIGIN = 7;
    public static final int ANNOTATION__ANNOTATION_TEXT = 8;
    public static final int ANNOTATION__SW_DATA_DEF_PROPS = 9;
    public static final int ANNOTATION_FEATURE_COUNT = 10;

    public EClass getGeneralAnnotation();

    public EReference getGeneralAnnotation_Label();

    public EAttribute getGeneralAnnotation_AnnotationOrigin();

    public EReference getGeneralAnnotation_AnnotationText();

    public EClass getRemark();

    public EReference getRemark_GeneralAnnotation();

    public EReference getRemark_Ps();

    public EReference getRemark_Verbatims();

    public EClass getAnnotation();

    public EReference getAnnotation_SwDataDefProps();

    public AnnotationFactory getAnnotationFactory();

    public static interface Literals {
        public static final EClass GENERAL_ANNOTATION = eINSTANCE.getGeneralAnnotation();
        public static final EReference GENERAL_ANNOTATION__LABEL = eINSTANCE.getGeneralAnnotation_Label();
        public static final EAttribute GENERAL_ANNOTATION__ANNOTATION_ORIGIN = eINSTANCE.getGeneralAnnotation_AnnotationOrigin();
        public static final EReference GENERAL_ANNOTATION__ANNOTATION_TEXT = eINSTANCE.getGeneralAnnotation_AnnotationText();
        public static final EClass REMARK = eINSTANCE.getRemark();
        public static final EReference REMARK__GENERAL_ANNOTATION = eINSTANCE.getRemark_GeneralAnnotation();
        public static final EReference REMARK__PS = eINSTANCE.getRemark_Ps();
        public static final EReference REMARK__VERBATIMS = eINSTANCE.getRemark_Verbatims();
        public static final EClass ANNOTATION = eINSTANCE.getAnnotation();
        public static final EReference ANNOTATION__SW_DATA_DEF_PROPS = eINSTANCE.getAnnotation_SwDataDefProps();
    }
}

