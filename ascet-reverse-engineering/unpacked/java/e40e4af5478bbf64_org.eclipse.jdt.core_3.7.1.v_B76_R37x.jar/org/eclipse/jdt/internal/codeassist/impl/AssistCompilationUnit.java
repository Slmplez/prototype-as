/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportContainer;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.codeassist.impl.AssistImportContainer;
import org.eclipse.jdt.internal.codeassist.impl.AssistPackageDeclaration;
import org.eclipse.jdt.internal.codeassist.impl.AssistSourceType;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;

public class AssistCompilationUnit
extends CompilationUnit {
    private Map infoCache;
    private Map bindingCache;

    public AssistCompilationUnit(ICompilationUnit compilationUnit, WorkingCopyOwner owner, Map bindingCache, Map infoCache) {
        super((PackageFragment)compilationUnit.getParent(), compilationUnit.getElementName(), owner);
        this.bindingCache = bindingCache;
        this.infoCache = infoCache;
    }

    public Object getElementInfo(IProgressMonitor monitor) throws JavaModelException {
        return this.infoCache.get(this);
    }

    public IImportContainer getImportContainer() {
        return new AssistImportContainer(this, this.infoCache);
    }

    public IPackageDeclaration getPackageDeclaration(String pkg) {
        return new AssistPackageDeclaration(this, pkg, this.infoCache);
    }

    public IType getType(String typeName) {
        return new AssistSourceType(this, typeName, this.bindingCache, this.infoCache);
    }

    public boolean hasChildren() throws JavaModelException {
        JavaElementInfo info = (JavaElementInfo)this.infoCache.get(this);
        return info.getChildren().length > 0;
    }
}

