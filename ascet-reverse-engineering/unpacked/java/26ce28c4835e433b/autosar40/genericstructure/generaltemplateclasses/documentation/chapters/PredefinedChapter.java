/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters;

import autosar40.genericstructure.documentationonm1.Documentation;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;

public interface PredefinedChapter
extends ARObject {
    public Documentation getDocumentation();

    public void setDocumentation(Documentation var1);

    public ChapterModel getChapterModel();

    public void setChapterModel(ChapterModel var1);
}

