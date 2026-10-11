/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.index;

import org.eclipse.help.IIndexEntry;
import org.eclipse.help.IIndexEntry2;
import org.eclipse.help.IIndexSee;
import org.eclipse.help.ITopic;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class IndexEntry
extends UAElement
implements IIndexEntry2 {
    public static final String NAME = "entry";
    public static final String ATTRIBUTE_KEYWORD = "keyword";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public IndexEntry(IIndexEntry src) {
        super(NAME, src);
        this.setKeyword(src.getKeyword());
        this.appendChildren(src.getChildren());
    }

    public IndexEntry(Element src) {
        super(src);
    }

    public String getKeyword() {
        return this.getAttribute(ATTRIBUTE_KEYWORD);
    }

    public IIndexEntry[] getSubentries() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.help.IIndexEntry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IIndexEntry[])this.getChildren(clazz);
    }

    public ITopic[] getTopics() {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.help.ITopic");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (ITopic[])this.getChildren(clazz);
    }

    public void setKeyword(String keyword) {
        this.setAttribute(ATTRIBUTE_KEYWORD, keyword);
    }

    public IIndexSee[] getSees() {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.help.IIndexSee");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IIndexSee[])this.getChildren(clazz);
    }
}

