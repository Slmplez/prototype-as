/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.debug.core.sourcelookup.ISourceContainerType
 *  org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainer
 *  org.eclipse.jdt.core.IClassFile
 *  org.eclipse.jdt.core.ICompilationUnit
 *  org.eclipse.jdt.core.IPackageFragment
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.launching.sourcelookup.containers;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainer;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;

public class PackageFragmentRootSourceContainer
extends AbstractSourceContainer {
    private IPackageFragmentRoot fRoot;
    public static final String TYPE_ID = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".sourceContainer.packageFragmentRoot";

    public PackageFragmentRootSourceContainer(IPackageFragmentRoot root) {
        this.fRoot = root;
    }

    public Object[] findSourceElements(String name) throws CoreException {
        IPackageFragment fragment;
        int index = name.lastIndexOf(46);
        String typeName = name;
        if (index >= 0) {
            typeName = typeName.substring(0, index);
        }
        typeName = typeName.replace('/', '.');
        typeName = typeName.replace('\\', '.');
        index = typeName.lastIndexOf(46);
        String packageName = "";
        if (index >= 0) {
            packageName = typeName.substring(0, index);
            typeName = typeName.substring(index + 1);
        }
        if ((fragment = this.fRoot.getPackageFragment(packageName)).exists()) {
            switch (fragment.getKind()) {
                case 2: {
                    IClassFile file = fragment.getClassFile(String.valueOf(typeName) + ".class");
                    if (!file.exists()) break;
                    return new Object[]{file};
                }
                case 1: {
                    String[] extensions = JavaCore.getJavaLikeExtensions();
                    int i = 0;
                    while (i < extensions.length) {
                        String ext = extensions[i];
                        ICompilationUnit unit = fragment.getCompilationUnit(String.valueOf(typeName) + '.' + ext);
                        if (unit.exists()) {
                            return new Object[]{unit};
                        }
                        ++i;
                    }
                    break;
                }
            }
        }
        return EMPTY;
    }

    public String getName() {
        return this.fRoot.getElementName();
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }

    public boolean equals(Object obj) {
        return obj instanceof PackageFragmentRootSourceContainer && ((PackageFragmentRootSourceContainer)((Object)obj)).getPackageFragmentRoot().equals(this.getPackageFragmentRoot());
    }

    public IPackageFragmentRoot getPackageFragmentRoot() {
        return this.fRoot;
    }

    public int hashCode() {
        return this.fRoot.hashCode();
    }

    public IPath getPath() {
        return this.getPackageFragmentRoot().getPath();
    }
}

