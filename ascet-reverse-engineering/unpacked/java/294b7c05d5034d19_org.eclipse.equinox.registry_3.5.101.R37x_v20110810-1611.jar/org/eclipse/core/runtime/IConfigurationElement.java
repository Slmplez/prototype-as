/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.InvalidRegistryObjectException;

public interface IConfigurationElement {
    public Object createExecutableExtension(String var1) throws CoreException;

    public String getAttribute(String var1) throws InvalidRegistryObjectException;

    public String getAttribute(String var1, String var2) throws InvalidRegistryObjectException;

    public String getAttributeAsIs(String var1) throws InvalidRegistryObjectException;

    public String[] getAttributeNames() throws InvalidRegistryObjectException;

    public IConfigurationElement[] getChildren() throws InvalidRegistryObjectException;

    public IConfigurationElement[] getChildren(String var1) throws InvalidRegistryObjectException;

    public IExtension getDeclaringExtension() throws InvalidRegistryObjectException;

    public String getName() throws InvalidRegistryObjectException;

    public Object getParent() throws InvalidRegistryObjectException;

    public String getValue() throws InvalidRegistryObjectException;

    public String getValue(String var1) throws InvalidRegistryObjectException;

    public String getValueAsIs() throws InvalidRegistryObjectException;

    public String getNamespace() throws InvalidRegistryObjectException;

    public String getNamespaceIdentifier() throws InvalidRegistryObjectException;

    public IContributor getContributor() throws InvalidRegistryObjectException;

    public boolean equals(Object var1);

    public boolean isValid();
}

