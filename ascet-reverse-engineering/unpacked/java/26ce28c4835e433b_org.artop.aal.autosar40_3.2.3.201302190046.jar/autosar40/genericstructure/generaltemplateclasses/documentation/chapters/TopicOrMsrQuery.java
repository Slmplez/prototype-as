/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Topic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryTopic1;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TopicOrMsrQuery
extends ARObject {
    public ChapterModel getChapterModel();

    public void setChapterModel(ChapterModel var1);

    public EList<Topic1> getTopic1s();

    public EList<MsrQueryTopic1> getMsrQueryTopic1s();
}

