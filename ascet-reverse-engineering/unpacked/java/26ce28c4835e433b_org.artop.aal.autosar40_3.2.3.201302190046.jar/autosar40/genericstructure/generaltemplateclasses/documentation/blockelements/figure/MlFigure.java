/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FrameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.PgwideEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MlFigure
extends Paginateable {
    public DocumentationBlock getDocumentationBlock();

    public void setDocumentationBlock(DocumentationBlock var1);

    public Caption getFigureCaption();

    public void setFigureCaption(Caption var1);

    public FrameEnum getFrame();

    public void setFrame(FrameEnum var1);

    public void unsetFrame();

    public boolean isSetFrame();

    public String getHelpEntry();

    public void setHelpEntry(String var1);

    public void unsetHelpEntry();

    public boolean isSetHelpEntry();

    public PgwideEnum getPgwide();

    public void setPgwide(PgwideEnum var1);

    public void unsetPgwide();

    public boolean isSetPgwide();

    public EList<LGraphic> getLGraphics();

    public MultiLanguageVerbatim getVerbatim();

    public void setVerbatim(MultiLanguageVerbatim var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

