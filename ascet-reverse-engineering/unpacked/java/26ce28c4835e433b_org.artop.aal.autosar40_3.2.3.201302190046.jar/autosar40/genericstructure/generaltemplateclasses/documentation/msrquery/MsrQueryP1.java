/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContentOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;

public interface MsrQueryP1
extends Paginateable {
    public TopicContentOrMsrQuery getTopicContentOrMsrQuery();

    public void setTopicContentOrMsrQuery(TopicContentOrMsrQuery var1);

    public MsrQueryProps getMsrQueryProps();

    public void setMsrQueryProps(MsrQueryProps var1);

    public TopicContent getMsrQueryResultP1();

    public void setMsrQueryResultP1(TopicContent var1);
}

