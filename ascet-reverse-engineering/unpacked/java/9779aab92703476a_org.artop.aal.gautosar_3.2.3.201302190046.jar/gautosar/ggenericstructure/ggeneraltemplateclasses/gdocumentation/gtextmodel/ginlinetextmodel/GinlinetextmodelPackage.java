/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.impl.GinlinetextmodelPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GinlinetextmodelPackage
extends EPackage {
    public static final String eNAME = "ginlinetextmodel";
    public static final String eNS_URI = "http://artop.org/gautosar/gs/gtc/d/itm";
    public static final String eNS_PREFIX = "";
    public static final GinlinetextmodelPackage eINSTANCE = GinlinetextmodelPackageImpl.init();
    public static final int GMIXED_CONTENT_FOR_PARAGRAPH = 0;
    public static final int GMIXED_CONTENT_FOR_PARAGRAPH_FEATURE_COUNT = 0;
    public static final int GMIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH = 1;
    public static final int GMIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH_FEATURE_COUNT = 0;

    public EClass getGMixedContentForParagraph();

    public EClass getGMixedContentForOverviewParagraph();

    public GinlinetextmodelFactory getGinlinetextmodelFactory();

    public static interface Literals {
        public static final EClass GMIXED_CONTENT_FOR_PARAGRAPH = eINSTANCE.getGMixedContentForParagraph();
        public static final EClass GMIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH = eINSTANCE.getGMixedContentForOverviewParagraph();
    }
}

