/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.impl.GdocumentationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GdocumentationPackage
extends EPackage {
    public static final String eNAME = "gdocumentation";
    public static final String eNS_URI = "http://artop.org/gautosar/gs/gtc/d";
    public static final String eNS_PREFIX = "";
    public static final GdocumentationPackage eINSTANCE = GdocumentationPackageImpl.init();
    public static final int GGENERAL_ANNOTATION = 2;
    public static final int GGENERAL_ANNOTATION__GCHECKSUM = 0;
    public static final int GGENERAL_ANNOTATION__GTIMESTAMP = 1;
    public static final int GGENERAL_ANNOTATION__GANNOTATION_ORIGIN = 2;
    public static final int GGENERAL_ANNOTATION__GANNOTATION_TEXT = 3;
    public static final int GGENERAL_ANNOTATION_FEATURE_COUNT = 4;
    public static final int GANNOTATION = 0;
    public static final int GANNOTATION__GCHECKSUM = 0;
    public static final int GANNOTATION__GTIMESTAMP = 1;
    public static final int GANNOTATION__GANNOTATION_ORIGIN = 2;
    public static final int GANNOTATION__GANNOTATION_TEXT = 3;
    public static final int GANNOTATION_FEATURE_COUNT = 4;
    public static final int GREMARK = 1;
    public static final int GREMARK__GCHECKSUM = 0;
    public static final int GREMARK__GTIMESTAMP = 1;
    public static final int GREMARK__GPS = 2;
    public static final int GREMARK_FEATURE_COUNT = 3;

    public EClass getGAnnotation();

    public EClass getGRemark();

    public EReference getGRemark_GPs();

    public EClass getGGeneralAnnotation();

    public EAttribute getGGeneralAnnotation_GAnnotationOrigin();

    public EReference getGGeneralAnnotation_GAnnotationText();

    public GdocumentationFactory getGdocumentationFactory();

    public static interface Literals {
        public static final EClass GANNOTATION = eINSTANCE.getGAnnotation();
        public static final EClass GREMARK = eINSTANCE.getGRemark();
        public static final EReference GREMARK__GPS = eINSTANCE.getGRemark_GPs();
        public static final EClass GGENERAL_ANNOTATION = eINSTANCE.getGGeneralAnnotation();
        public static final EAttribute GGENERAL_ANNOTATION__GANNOTATION_ORIGIN = eINSTANCE.getGGeneralAnnotation_GAnnotationOrigin();
        public static final EReference GGENERAL_ANNOTATION__GANNOTATION_TEXT = eINSTANCE.getGGeneralAnnotation_GAnnotationText();
    }
}

