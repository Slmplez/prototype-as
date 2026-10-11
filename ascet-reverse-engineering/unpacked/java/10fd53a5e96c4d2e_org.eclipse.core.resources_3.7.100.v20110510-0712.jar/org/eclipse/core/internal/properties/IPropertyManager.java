/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.properties;

import java.util.Map;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.QualifiedName;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPropertyManager
extends IManager {
    public void closePropertyStore(IResource var1) throws CoreException;

    public void copy(IResource var1, IResource var2, int var3) throws CoreException;

    public void deleteProperties(IResource var1, int var2) throws CoreException;

    public void deleteResource(IResource var1) throws CoreException;

    public String getProperty(IResource var1, QualifiedName var2) throws CoreException;

    public void setProperty(IResource var1, QualifiedName var2, String var3) throws CoreException;

    public Map<QualifiedName, String> getProperties(IResource var1) throws CoreException;
}

