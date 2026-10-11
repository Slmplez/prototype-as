/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.help.internal.toc;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.help.ICriteria;
import org.eclipse.help.IToc;
import org.eclipse.help.IToc2;
import org.eclipse.help.ITocContribution;
import org.eclipse.help.ITopic;
import org.eclipse.help.ITopic2;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class Toc
extends UAElement
implements IToc2 {
    public static final String NAME = "toc";
    public static final String ATTRIBUTE_LABEL = "label";
    public static final String ATTRIBUTE_HREF = "href";
    public static final String ATTRIBUTE_TOPIC = "topic";
    public static final String ATTRIBUTE_LINK_TO = "link_to";
    public static final String ATTRIBUTE_ID = "id";
    public static final String ATTRIBUTE_ICON = "icon";
    public static final String ATTRIBUTE_SORT = "sort";
    private ITocContribution contribution;
    private ITopic topic;
    private Map href2TopicMap;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Toc(IToc src) {
        super(NAME, src);
        this.setHref(src.getHref());
        this.setLabel(src.getLabel());
        ITopic topic = src.getTopic(null);
        if (topic != null) {
            this.setTopic(topic.getHref());
        }
        this.appendChildren(src.getChildren());
    }

    public Toc(Element src) {
        super(src);
    }

    private Map createHref2TopicMap() {
        HashMap<String, ITopic> map = new HashMap<String, ITopic>();
        if (this.topic != null) {
            map.put(this.topic.getHref(), this.topic);
        }
        ITopic[] topics = this.getTopics();
        int i = 0;
        while (i < topics.length) {
            this.createHref2TopicMapAux(map, topics[i]);
            ++i;
        }
        return map;
    }

    private void createHref2TopicMapAux(Map map, ITopic topic) {
        ITopic[] subtopics;
        String href = topic.getHref();
        if (href != null) {
            String simpleHref;
            map.put(href, topic);
            int anchorIx = href.lastIndexOf("#");
            if (anchorIx >= 0 && !map.containsKey(simpleHref = href.substring(0, anchorIx))) {
                map.put(simpleHref, topic);
            }
        }
        if ((subtopics = topic.getSubtopics()) != null) {
            int i = 0;
            while (i < subtopics.length) {
                if (subtopics[i] != null) {
                    this.createHref2TopicMapAux(map, subtopics[i]);
                }
                ++i;
            }
        }
    }

    public String getHref() {
        return this.getAttribute(ATTRIBUTE_HREF);
    }

    public String getIcon() {
        return this.getAttribute(ATTRIBUTE_ICON);
    }

    public boolean isSorted() {
        return "true".equalsIgnoreCase(this.getAttribute(ATTRIBUTE_SORT));
    }

    private Map getHref2TopicMap() {
        if (this.href2TopicMap == null) {
            this.href2TopicMap = this.createHref2TopicMap();
        }
        return this.href2TopicMap;
    }

    public String getLabel() {
        return this.getAttribute(ATTRIBUTE_LABEL);
    }

    public String getLinkTo() {
        return this.getAttribute(ATTRIBUTE_LINK_TO);
    }

    public String getTopic() {
        return this.getAttribute(ATTRIBUTE_TOPIC);
    }

    public ITopic getTopic(String href) {
        if (href == null) {
            if (this.topic == null) {
                this.topic = new ITopic2(){

                    public String getHref() {
                        return Toc.this.getTopic();
                    }

                    public String getLabel() {
                        return Toc.this.getLabel();
                    }

                    public ITopic[] getSubtopics() {
                        return Toc.this.getTopics();
                    }

                    public boolean isEnabled(IEvaluationContext context) {
                        return Toc.this.isEnabled(context);
                    }

                    public IUAElement[] getChildren() {
                        return new IUAElement[0];
                    }

                    public ICriteria[] getCriteria() {
                        return Toc.this.getCriteria();
                    }

                    public String getIcon() {
                        return null;
                    }

                    public boolean isSorted() {
                        return false;
                    }
                };
            }
            return this.topic;
        }
        return (ITopic)this.getHref2TopicMap().get(href);
    }

    public ITopic[] getTopics() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.help.ITopic");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (ITopic[])this.getChildren(clazz);
    }

    public ICriteria[] getCriteria() {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.help.ICriteria");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (ICriteria[])this.getChildren(clazz);
    }

    public void setLabel(String label) {
        this.setAttribute(ATTRIBUTE_LABEL, label);
    }

    public void setLinkTo(String linkTo) {
        this.setAttribute(ATTRIBUTE_LINK_TO, linkTo);
    }

    public void setTopic(String href) {
        this.setAttribute(ATTRIBUTE_TOPIC, href);
    }

    public void setHref(String href) {
        this.setAttribute(ATTRIBUTE_HREF, href);
    }

    public ITocContribution getTocContribution() {
        return this.contribution;
    }

    public void setTocContribution(ITocContribution contribution) {
        this.contribution = contribution;
    }
}

