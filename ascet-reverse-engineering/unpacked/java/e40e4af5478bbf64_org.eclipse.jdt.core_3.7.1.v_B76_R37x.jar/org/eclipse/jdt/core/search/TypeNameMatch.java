/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.search;

import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;

public abstract class TypeNameMatch {
    public abstract int getAccessibility();

    public String getFullyQualifiedName() {
        return this.getType().getFullyQualifiedName('.');
    }

    public abstract int getModifiers();

    public IPackageFragmentRoot getPackageFragmentRoot() {
        return (IPackageFragmentRoot)this.getType().getAncestor(3);
    }

    public String getPackageName() {
        return this.getType().getPackageFragment().getElementName();
    }

    public String getSimpleTypeName() {
        return this.getType().getElementName();
    }

    public abstract IType getType();

    public String getTypeContainerName() {
        IType outerType = this.getType().getDeclaringType();
        if (outerType != null) {
            return outerType.getFullyQualifiedName('.');
        }
        return this.getType().getPackageFragment().getElementName();
    }

    public String getTypeQualifiedName() {
        return this.getType().getTypeQualifiedName('.');
    }
}

