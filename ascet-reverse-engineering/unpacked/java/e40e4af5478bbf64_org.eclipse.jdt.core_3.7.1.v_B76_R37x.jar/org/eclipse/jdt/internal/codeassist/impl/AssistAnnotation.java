/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.JavaElement;

public class AssistAnnotation
extends Annotation {
    private Map infoCache;

    public AssistAnnotation(JavaElement parent, String name, Map infoCache) {
        super(parent, name);
        this.infoCache = infoCache;
    }

    public Object getElementInfo(IProgressMonitor monitor) throws JavaModelException {
        return this.infoCache.get(this);
    }
}

