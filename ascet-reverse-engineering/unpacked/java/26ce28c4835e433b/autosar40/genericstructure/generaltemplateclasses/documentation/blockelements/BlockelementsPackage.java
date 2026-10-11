/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl.BlockelementsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BlockelementsPackage
extends EPackage {
    public static final String eNAME = "blockelements";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be";
    public static final String eNS_PREFIX = "";
    public static final BlockelementsPackage eINSTANCE = BlockelementsPackageImpl.init();
    public static final int URL = 0;
    public static final int URL__GCHECKSUM = 0;
    public static final int URL__GTIMESTAMP = 1;
    public static final int URL__CHECKSUM = 2;
    public static final int URL__TIMESTAMP = 3;
    public static final int URL__MIME_TYPE = 4;
    public static final int URL__VALUE = 5;
    public static final int URL_FEATURE_COUNT = 6;
    public static final int CAPTION = 1;
    public static final int CAPTION__GCHECKSUM = 0;
    public static final int CAPTION__GTIMESTAMP = 1;
    public static final int CAPTION__CHECKSUM = 2;
    public static final int CAPTION__TIMESTAMP = 3;
    public static final int CAPTION__GSHORT_NAME = 4;
    public static final int CAPTION__SHORT_NAME = 5;
    public static final int CAPTION__LONG_NAME = 6;
    public static final int CAPTION_FEATURE_COUNT = 7;
    public static final int DOCUMENTATION_BLOCK = 2;
    public static final int DOCUMENTATION_BLOCK__GCHECKSUM = 0;
    public static final int DOCUMENTATION_BLOCK__GTIMESTAMP = 1;
    public static final int DOCUMENTATION_BLOCK__CHECKSUM = 2;
    public static final int DOCUMENTATION_BLOCK__TIMESTAMP = 3;
    public static final int DOCUMENTATION_BLOCK__GPS = 4;
    public static final int DOCUMENTATION_BLOCK__PS = 5;
    public static final int DOCUMENTATION_BLOCK__VERBATIMS = 6;
    public static final int DOCUMENTATION_BLOCK__LISTS = 7;
    public static final int DOCUMENTATION_BLOCK__DEF_LISTS = 8;
    public static final int DOCUMENTATION_BLOCK__LABELED_LISTS = 9;
    public static final int DOCUMENTATION_BLOCK__FORMULAS = 10;
    public static final int DOCUMENTATION_BLOCK__FIGURES = 11;
    public static final int DOCUMENTATION_BLOCK__NOTES = 12;
    public static final int DOCUMENTATION_BLOCK__TRACES = 13;
    public static final int DOCUMENTATION_BLOCK__STRUCTURED_REQS = 14;
    public static final int DOCUMENTATION_BLOCK_FEATURE_COUNT = 15;

    public EClass getUrl();

    public EAttribute getUrl_MimeType();

    public EAttribute getUrl_Value();

    public EClass getCaption();

    public EClass getDocumentationBlock();

    public EReference getDocumentationBlock_Ps();

    public EReference getDocumentationBlock_Verbatims();

    public EReference getDocumentationBlock_Lists();

    public EReference getDocumentationBlock_DefLists();

    public EReference getDocumentationBlock_LabeledLists();

    public EReference getDocumentationBlock_Formulas();

    public EReference getDocumentationBlock_Figures();

    public EReference getDocumentationBlock_Notes();

    public EReference getDocumentationBlock_Traces();

    public EReference getDocumentationBlock_StructuredReqs();

    public BlockelementsFactory getBlockelementsFactory();

    public static interface Literals {
        public static final EClass URL = eINSTANCE.getUrl();
        public static final EAttribute URL__MIME_TYPE = eINSTANCE.getUrl_MimeType();
        public static final EAttribute URL__VALUE = eINSTANCE.getUrl_Value();
        public static final EClass CAPTION = eINSTANCE.getCaption();
        public static final EClass DOCUMENTATION_BLOCK = eINSTANCE.getDocumentationBlock();
        public static final EReference DOCUMENTATION_BLOCK__PS = eINSTANCE.getDocumentationBlock_Ps();
        public static final EReference DOCUMENTATION_BLOCK__VERBATIMS = eINSTANCE.getDocumentationBlock_Verbatims();
        public static final EReference DOCUMENTATION_BLOCK__LISTS = eINSTANCE.getDocumentationBlock_Lists();
        public static final EReference DOCUMENTATION_BLOCK__DEF_LISTS = eINSTANCE.getDocumentationBlock_DefLists();
        public static final EReference DOCUMENTATION_BLOCK__LABELED_LISTS = eINSTANCE.getDocumentationBlock_LabeledLists();
        public static final EReference DOCUMENTATION_BLOCK__FORMULAS = eINSTANCE.getDocumentationBlock_Formulas();
        public static final EReference DOCUMENTATION_BLOCK__FIGURES = eINSTANCE.getDocumentationBlock_Figures();
        public static final EReference DOCUMENTATION_BLOCK__NOTES = eINSTANCE.getDocumentationBlock_Notes();
        public static final EReference DOCUMENTATION_BLOCK__TRACES = eINSTANCE.getDocumentationBlock_Traces();
        public static final EReference DOCUMENTATION_BLOCK__STRUCTURED_REQS = eINSTANCE.getDocumentationBlock_StructuredReqs();
    }
}

