/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LParagraph;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MultiLanguageParagraph
extends Paginateable,
GMultiLanguageParagraph {
    public DocumentationBlock getDocumentationBlock();

    public void setDocumentationBlock(DocumentationBlock var1);

    public String getHelpEntry();

    public void setHelpEntry(String var1);

    public void unsetHelpEntry();

    public boolean isSetHelpEntry();

    public EList<LParagraph> getL1s();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

