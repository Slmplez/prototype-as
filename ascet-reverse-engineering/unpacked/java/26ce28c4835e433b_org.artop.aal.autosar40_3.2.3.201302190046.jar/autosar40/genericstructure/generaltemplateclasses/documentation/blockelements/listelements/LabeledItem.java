/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface LabeledItem
extends Paginateable {
    public LabeledList getLabeledList();

    public void setLabeledList(LabeledList var1);

    public String getHelpEntry();

    public void setHelpEntry(String var1);

    public void unsetHelpEntry();

    public boolean isSetHelpEntry();

    public MultiLanguageOverviewParagraph getItemLabel();

    public void setItemLabel(MultiLanguageOverviewParagraph var1);

    public DocumentationBlock getItemContents();

    public void setItemContents(DocumentationBlock var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

