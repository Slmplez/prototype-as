/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.impl.GlanguagedatamodelPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GlanguagedatamodelPackage
extends EPackage {
    public static final String eNAME = "glanguagedatamodel";
    public static final String eNS_URI = "http://artop.org/gautosar/gs/gtc/d/tm/ldm";
    public static final String eNS_PREFIX = "";
    public static final GlanguagedatamodelPackage eINSTANCE = GlanguagedatamodelPackageImpl.init();
    public static final int GL_PARAGRAPH = 0;
    public static final int GL_PARAGRAPH_FEATURE_COUNT = 0;
    public static final int GL_OVERVIEW_PARAGRAPH = 1;
    public static final int GL_OVERVIEW_PARAGRAPH_FEATURE_COUNT = 0;

    public EClass getGLParagraph();

    public EClass getGLOverviewParagraph();

    public GlanguagedatamodelFactory getGlanguagedatamodelFactory();

    public static interface Literals {
        public static final EClass GL_PARAGRAPH = eINSTANCE.getGLParagraph();
        public static final EClass GL_OVERVIEW_PARAGRAPH = eINSTANCE.getGLOverviewParagraph();
    }
}

