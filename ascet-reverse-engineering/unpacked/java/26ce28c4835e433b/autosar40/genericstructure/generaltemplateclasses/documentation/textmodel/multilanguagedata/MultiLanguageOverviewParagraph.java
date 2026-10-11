/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MultiLanguageOverviewParagraph
extends ARObject,
GMultiLanguageOverviewParagraph {
    public EList<LOverviewParagraph> getL2s();
}

