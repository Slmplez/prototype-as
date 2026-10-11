/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Chapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryChapter;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ChapterOrMsrQuery
extends ARObject {
    public ChapterModel getChapterModel();

    public void setChapterModel(ChapterModel var1);

    public EList<Chapter> getChapters();

    public EList<MsrQueryChapter> getMsrQueryChapters();
}

