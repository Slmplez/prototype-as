/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.codeassist.impl.AssistImportDeclaration;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.ImportContainer;

public class AssistImportContainer
extends ImportContainer {
    private Map infoCache;

    public AssistImportContainer(CompilationUnit parent, Map infoCache) {
        super(parent);
        this.infoCache = infoCache;
    }

    public Object getElementInfo(IProgressMonitor monitor) throws JavaModelException {
        return this.infoCache.get(this);
    }

    protected IImportDeclaration getImport(String importName, boolean isOnDemand) {
        return new AssistImportDeclaration(this, importName, isOnDemand, this.infoCache);
    }
}

