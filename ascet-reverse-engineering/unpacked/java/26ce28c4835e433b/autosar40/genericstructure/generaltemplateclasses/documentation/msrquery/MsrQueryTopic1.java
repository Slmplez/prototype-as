/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultTopic1;

public interface MsrQueryTopic1
extends Paginateable {
    public TopicOrMsrQuery getTopicOrMsrQuery();

    public void setTopicOrMsrQuery(TopicOrMsrQuery var1);

    public MsrQueryProps getMsrQueryProps();

    public void setMsrQueryProps(MsrQueryProps var1);

    public MsrQueryResultTopic1 getMsrQueryResultTopic1();

    public void setMsrQueryResultTopic1(MsrQueryResultTopic1 var1);
}

