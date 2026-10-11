/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.codeassist.impl.AssistAnnotation;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.PackageDeclaration;

public class AssistPackageDeclaration
extends PackageDeclaration {
    private Map infoCache;

    public AssistPackageDeclaration(CompilationUnit parent, String name, Map infoCache) {
        super(parent, name);
        this.infoCache = infoCache;
    }

    public Object getElementInfo(IProgressMonitor monitor) throws JavaModelException {
        return this.infoCache.get(this);
    }

    public IAnnotation getAnnotation(String name) {
        return new AssistAnnotation((JavaElement)this, name, this.infoCache);
    }
}

