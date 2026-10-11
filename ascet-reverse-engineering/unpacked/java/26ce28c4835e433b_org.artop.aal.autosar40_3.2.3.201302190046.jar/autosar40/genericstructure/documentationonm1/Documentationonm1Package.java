/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.documentationonm1;

import autosar40.genericstructure.documentationonm1.Documentationonm1Factory;
import autosar40.genericstructure.documentationonm1.impl.Documentationonm1PackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface Documentationonm1Package
extends EPackage {
    public static final String eNAME = "documentationonm1";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/dom";
    public static final String eNS_PREFIX = "";
    public static final Documentationonm1Package eINSTANCE = Documentationonm1PackageImpl.init();
    public static final int DOCUMENTATION = 0;
    public static final int DOCUMENTATION__GCHECKSUM = 0;
    public static final int DOCUMENTATION__GTIMESTAMP = 1;
    public static final int DOCUMENTATION__CHECKSUM = 2;
    public static final int DOCUMENTATION__TIMESTAMP = 3;
    public static final int DOCUMENTATION__GSHORT_NAME = 4;
    public static final int DOCUMENTATION__SHORT_NAME = 5;
    public static final int DOCUMENTATION__LONG_NAME = 6;
    public static final int DOCUMENTATION__GUUID = 7;
    public static final int DOCUMENTATION__GCATEGORY = 8;
    public static final int DOCUMENTATION__GDESC = 9;
    public static final int DOCUMENTATION__DESC = 10;
    public static final int DOCUMENTATION__CATEGORY = 11;
    public static final int DOCUMENTATION__ADMIN_DATA = 12;
    public static final int DOCUMENTATION__INTRODUCTION = 13;
    public static final int DOCUMENTATION__ANNOTATIONS = 14;
    public static final int DOCUMENTATION__UUID = 15;
    public static final int DOCUMENTATION__ALL_EXTENSIONS = 16;
    public static final int DOCUMENTATION__CONTAINED_EXTENSIONS = 17;
    public static final int DOCUMENTATION__GAR_PACKAGE = 18;
    public static final int DOCUMENTATION__AR_PACKAGE = 19;
    public static final int DOCUMENTATION__VARIATION_POINT = 20;
    public static final int DOCUMENTATION__CONTEXTS = 21;
    public static final int DOCUMENTATION__DOCUMENTATION_CONTENT = 22;
    public static final int DOCUMENTATION_FEATURE_COUNT = 23;
    public static final int DOCUMENTATION_CONTEXT = 1;
    public static final int DOCUMENTATION_CONTEXT__GCHECKSUM = 0;
    public static final int DOCUMENTATION_CONTEXT__GTIMESTAMP = 1;
    public static final int DOCUMENTATION_CONTEXT__CHECKSUM = 2;
    public static final int DOCUMENTATION_CONTEXT__TIMESTAMP = 3;
    public static final int DOCUMENTATION_CONTEXT__GSHORT_NAME = 4;
    public static final int DOCUMENTATION_CONTEXT__SHORT_NAME = 5;
    public static final int DOCUMENTATION_CONTEXT__LONG_NAME = 6;
    public static final int DOCUMENTATION_CONTEXT__DOCUMENTATION = 7;
    public static final int DOCUMENTATION_CONTEXT__FEATURE = 8;
    public static final int DOCUMENTATION_CONTEXT__IDENTIFIABLE = 9;
    public static final int DOCUMENTATION_CONTEXT_FEATURE_COUNT = 10;

    public EClass getDocumentation();

    public EReference getDocumentation_Contexts();

    public EReference getDocumentation_DocumentationContent();

    public EClass getDocumentationContext();

    public EReference getDocumentationContext_Documentation();

    public EReference getDocumentationContext_Feature();

    public EReference getDocumentationContext_Identifiable();

    public Documentationonm1Factory getDocumentationonm1Factory();

    public static interface Literals {
        public static final EClass DOCUMENTATION = eINSTANCE.getDocumentation();
        public static final EReference DOCUMENTATION__CONTEXTS = eINSTANCE.getDocumentation_Contexts();
        public static final EReference DOCUMENTATION__DOCUMENTATION_CONTENT = eINSTANCE.getDocumentation_DocumentationContent();
        public static final EClass DOCUMENTATION_CONTEXT = eINSTANCE.getDocumentationContext();
        public static final EReference DOCUMENTATION_CONTEXT__DOCUMENTATION = eINSTANCE.getDocumentationContext_Documentation();
        public static final EReference DOCUMENTATION_CONTEXT__FEATURE = eINSTANCE.getDocumentationContext_Feature();
        public static final EReference DOCUMENTATION_CONTEXT__IDENTIFIABLE = eINSTANCE.getDocumentationContext_Identifiable();
    }
}

