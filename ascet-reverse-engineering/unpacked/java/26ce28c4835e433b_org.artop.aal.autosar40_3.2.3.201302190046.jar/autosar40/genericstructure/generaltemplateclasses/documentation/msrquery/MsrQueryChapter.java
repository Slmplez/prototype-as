/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultChapter;

public interface MsrQueryChapter
extends Paginateable {
    public ChapterOrMsrQuery getChapterOrMsrQuery();

    public void setChapterOrMsrQuery(ChapterOrMsrQuery var1);

    public MsrQueryProps getMsrQueryProps();

    public void setMsrQueryProps(MsrQueryProps var1);

    public MsrQueryResultChapter getMsrQueryResultChapter();

    public void setMsrQueryResultChapter(MsrQueryResultChapter var1);
}

