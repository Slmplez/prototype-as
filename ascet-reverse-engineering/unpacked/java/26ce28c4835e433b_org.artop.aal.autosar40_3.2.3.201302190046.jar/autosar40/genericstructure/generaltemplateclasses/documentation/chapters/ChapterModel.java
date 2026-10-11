/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicOrMsrQuery;

public interface ChapterModel
extends ARObject {
    public ChapterContent getChapterContent();

    public void setChapterContent(ChapterContent var1);

    public TopicOrMsrQuery getTopic1();

    public void setTopic1(TopicOrMsrQuery var1);

    public ChapterOrMsrQuery getChapter();

    public void setChapter(ChapterOrMsrQuery var1);
}

