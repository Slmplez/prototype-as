/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.index;

import java.util.Iterator;
import org.eclipse.help.IIndex;
import org.eclipse.help.IIndexEntry;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.index.IndexEntry;
import org.eclipse.help.internal.index.IndexSee;
import org.w3c.dom.Element;

public class Index
extends UAElement
implements IIndex {
    public static final String NAME = "index";
    static /* synthetic */ Class class$0;

    public Index() {
        super(NAME);
    }

    public Index(IIndex src) {
        super(NAME, src);
        this.appendChildren(src.getChildren());
    }

    public Index(Element src) {
        super(src);
    }

    public IIndexEntry[] getEntries() {
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

    public IndexEntry getSeeTarget(IndexSee see) {
        if (this.children == null) {
            this.getChildren();
        }
        String keyword = see.getKeyword();
        Iterator iter = this.children.iterator();
        while (iter.hasNext()) {
            Object next = iter.next();
            if (!(next instanceof IndexEntry) || !keyword.equals(((IndexEntry)next).getKeyword())) continue;
            return (IndexEntry)next;
        }
        return null;
    }
}

