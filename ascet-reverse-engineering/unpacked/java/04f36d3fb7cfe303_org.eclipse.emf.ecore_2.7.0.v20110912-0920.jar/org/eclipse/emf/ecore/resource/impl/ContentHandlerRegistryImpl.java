/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.resource.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import org.eclipse.emf.ecore.resource.ContentHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ContentHandlerRegistryImpl
extends TreeMap<Integer, List<ContentHandler>>
implements ContentHandler.Registry {
    private static final long serialVersionUID = 1L;

    @Override
    public void put(int priority, ContentHandler contentHandler) {
        Integer integerPriority = priority;
        ArrayList<ContentHandler> contentHandlers = (ArrayList<ContentHandler>)this.get(integerPriority);
        if (contentHandlers == null) {
            contentHandlers = new ArrayList<ContentHandler>();
            this.put(integerPriority, contentHandlers);
        }
        contentHandlers.add(contentHandler);
    }

    @Override
    public List<ContentHandler> contentHandlers() {
        ArrayList<ContentHandler> result = new ArrayList<ContentHandler>();
        for (List contentHandlers : this.values()) {
            result.addAll(contentHandlers);
        }
        return result;
    }
}

