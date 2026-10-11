/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.impl.GmultilanguagedataPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GmultilanguagedataPackage
extends EPackage {
    public static final String eNAME = "gmultilanguagedata";
    public static final String eNS_URI = "http://artop.org/gautosar/gs/gtc/d/tm/mld";
    public static final String eNS_PREFIX = "";
    public static final GmultilanguagedataPackage eINSTANCE = GmultilanguagedataPackageImpl.init();
    public static final int GMULTI_LANGUAGE_PARAGRAPH = 0;
    public static final int GMULTI_LANGUAGE_PARAGRAPH__GL_1S = 0;
    public static final int GMULTI_LANGUAGE_PARAGRAPH_FEATURE_COUNT = 1;
    public static final int GMULTI_LANGUAGE_OVERVIEW_PARAGRAPH = 1;
    public static final int GMULTI_LANGUAGE_OVERVIEW_PARAGRAPH__GL_2S = 0;
    public static final int GMULTI_LANGUAGE_OVERVIEW_PARAGRAPH_FEATURE_COUNT = 1;

    public EClass getGMultiLanguageParagraph();

    public EReference getGMultiLanguageParagraph_GL1s();

    public EClass getGMultiLanguageOverviewParagraph();

    public EReference getGMultiLanguageOverviewParagraph_GL2s();

    public GmultilanguagedataFactory getGmultilanguagedataFactory();

    public static interface Literals {
        public static final EClass GMULTI_LANGUAGE_PARAGRAPH = eINSTANCE.getGMultiLanguageParagraph();
        public static final EReference GMULTI_LANGUAGE_PARAGRAPH__GL_1S = eINSTANCE.getGMultiLanguageParagraph_GL1s();
        public static final EClass GMULTI_LANGUAGE_OVERVIEW_PARAGRAPH = eINSTANCE.getGMultiLanguageOverviewParagraph();
        public static final EReference GMULTI_LANGUAGE_OVERVIEW_PARAGRAPH__GL_2S = eINSTANCE.getGMultiLanguageOverviewParagraph_GL2s();
    }
}

