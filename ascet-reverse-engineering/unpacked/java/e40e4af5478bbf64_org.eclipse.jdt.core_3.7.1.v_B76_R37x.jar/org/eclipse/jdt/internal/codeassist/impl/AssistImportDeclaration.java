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
import org.eclipse.jdt.internal.core.ImportContainer;
import org.eclipse.jdt.internal.core.ImportDeclaration;

public class AssistImportDeclaration
extends ImportDeclaration {
    private Map infoCache;

    public AssistImportDeclaration(ImportContainer parent, String name, boolean isOnDemand, Map infoCache) {
        super(parent, name, isOnDemand);
        this.infoCache = infoCache;
    }

    public Object getElementInfo(IProgressMonitor monitor) throws JavaModelException {
        return this.infoCache.get(this);
    }
}

