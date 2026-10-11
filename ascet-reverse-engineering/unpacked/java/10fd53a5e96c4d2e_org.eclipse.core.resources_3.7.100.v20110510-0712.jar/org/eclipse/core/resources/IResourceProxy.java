/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.QualifiedName;

public interface IResourceProxy {
    public long getModificationStamp();

    public boolean isAccessible();

    public boolean isDerived();

    public boolean isLinked();

    public boolean isPhantom();

    public boolean isHidden();

    public boolean isTeamPrivateMember();

    public String getName();

    public Object getSessionProperty(QualifiedName var1);

    public int getType();

    public IPath requestFullPath();

    public IResource requestResource();
}

