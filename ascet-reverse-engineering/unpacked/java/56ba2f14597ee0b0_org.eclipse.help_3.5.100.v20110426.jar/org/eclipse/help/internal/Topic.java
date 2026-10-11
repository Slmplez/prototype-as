/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal;

import org.eclipse.help.ICriteria;
import org.eclipse.help.ITopic;
import org.eclipse.help.ITopic2;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class Topic
extends UAElement
implements ITopic2 {
    public static final String NAME = "topic";
    public static final String ATTRIBUTE_HREF = "href";
    public static final String ATTRIBUTE_LABEL = "label";
    public static final String ATTRIBUTE_ICON = "icon";
    public static final String ATTRIBUTE_SORT = "sort";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Topic() {
        super(NAME);
    }

    public Topic(ITopic src) {
        super(NAME, src);
        this.setHref(src.getHref());
        this.setLabel(src.getLabel());
        this.appendChildren(src.getChildren());
    }

    public String getIcon() {
        return this.getAttribute(ATTRIBUTE_ICON);
    }

    public boolean isSorted() {
        return "true".equalsIgnoreCase(this.getAttribute(ATTRIBUTE_SORT));
    }

    public Topic(Element src) {
        super(src);
    }

    public String getHref() {
        return this.getAttribute(ATTRIBUTE_HREF);
    }

    public String getLabel() {
        return this.getAttribute(ATTRIBUTE_LABEL);
    }

    public ITopic[] getSubtopics() {
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

    public void setHref(String href) {
        this.setAttribute(ATTRIBUTE_HREF, href);
    }

    public void setLabel(String label) {
        this.setAttribute(ATTRIBUTE_LABEL, label);
    }
}

