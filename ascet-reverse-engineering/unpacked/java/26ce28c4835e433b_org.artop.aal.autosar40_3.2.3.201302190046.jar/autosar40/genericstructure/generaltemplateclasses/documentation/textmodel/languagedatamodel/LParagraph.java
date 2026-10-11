/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguageSpecific;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph;

public interface LParagraph
extends LanguageSpecific,
MixedContentForParagraph,
GLParagraph {
    public MultiLanguageParagraph getMultiLanguageParagraph();

    public void setMultiLanguageParagraph(MultiLanguageParagraph var1);
}

