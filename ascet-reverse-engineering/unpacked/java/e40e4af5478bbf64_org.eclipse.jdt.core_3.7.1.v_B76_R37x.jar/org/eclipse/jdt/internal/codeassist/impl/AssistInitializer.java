/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.codeassist.impl.AssistSourceType;
import org.eclipse.jdt.internal.core.Initializer;
import org.eclipse.jdt.internal.core.JavaElement;

public class AssistInitializer
extends Initializer {
    private Map bindingCache;
    private Map infoCache;

    public AssistInitializer(JavaElement parent, int count, Map bindingCache, Map infoCache) {
        super(parent, count);
        this.bindingCache = bindingCache;
        this.infoCache = infoCache;
    }

    public Object getElementInfo(IProgressMonitor monitor) throws JavaModelException {
        return this.infoCache.get(this);
    }

    public IType getType(String typeName, int count) {
        AssistSourceType type = new AssistSourceType(this, typeName, this.bindingCache, this.infoCache);
        type.occurrenceCount = count;
        return type;
    }
}

