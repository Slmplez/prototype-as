/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IContributor
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.InvalidRegistryObjectException;

public interface IExtension {
    public IConfigurationElement[] getConfigurationElements() throws InvalidRegistryObjectException;

    public String getNamespace() throws InvalidRegistryObjectException;

    public String getNamespaceIdentifier() throws InvalidRegistryObjectException;

    public IContributor getContributor() throws InvalidRegistryObjectException;

    public String getExtensionPointUniqueIdentifier() throws InvalidRegistryObjectException;

    public String getLabel() throws InvalidRegistryObjectException;

    public String getLabel(String var1) throws InvalidRegistryObjectException;

    public String getSimpleIdentifier() throws InvalidRegistryObjectException;

    public String getUniqueIdentifier() throws InvalidRegistryObjectException;

    public boolean equals(Object var1);

    public boolean isValid();

    public IPluginDescriptor getDeclaringPluginDescriptor() throws InvalidRegistryObjectException;
}

