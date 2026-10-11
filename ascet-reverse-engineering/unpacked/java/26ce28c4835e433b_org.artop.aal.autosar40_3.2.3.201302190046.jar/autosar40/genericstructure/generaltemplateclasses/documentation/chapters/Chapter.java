/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface Chapter
extends Identifiable,
Paginateable {
    public ChapterModel getChapterModel();

    public void setChapterModel(ChapterModel var1);

    public String getHelpEntry();

    public void setHelpEntry(String var1);

    public void unsetHelpEntry();

    public boolean isSetHelpEntry();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

