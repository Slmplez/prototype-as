/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import java.io.OutputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchyChangedListener;
import org.eclipse.jdt.core.JavaModelException;

public interface ITypeHierarchy {
    public void addTypeHierarchyChangedListener(ITypeHierarchyChangedListener var1);

    public boolean contains(IType var1);

    public boolean exists();

    public IType[] getAllClasses();

    public IType[] getAllInterfaces();

    public IType[] getAllSubtypes(IType var1);

    public IType[] getAllSuperclasses(IType var1);

    public IType[] getAllSuperInterfaces(IType var1);

    public IType[] getAllSupertypes(IType var1);

    public IType[] getAllTypes();

    public int getCachedFlags(IType var1);

    public IType[] getExtendingInterfaces(IType var1);

    public IType[] getImplementingClasses(IType var1);

    public IType[] getRootClasses();

    public IType[] getRootInterfaces();

    public IType[] getSubclasses(IType var1);

    public IType[] getSubtypes(IType var1);

    public IType getSuperclass(IType var1);

    public IType[] getSuperInterfaces(IType var1);

    public IType[] getSupertypes(IType var1);

    public IType getType();

    public void refresh(IProgressMonitor var1) throws JavaModelException;

    public void removeTypeHierarchyChangedListener(ITypeHierarchyChangedListener var1);

    public void store(OutputStream var1, IProgressMonitor var2) throws JavaModelException;
}

