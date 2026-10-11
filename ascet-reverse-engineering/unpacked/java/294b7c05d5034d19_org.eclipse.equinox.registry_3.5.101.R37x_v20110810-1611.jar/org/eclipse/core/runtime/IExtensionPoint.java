/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.InvalidRegistryObjectException;

public interface IExtensionPoint {
    public IConfigurationElement[] getConfigurationElements() throws InvalidRegistryObjectException;

    public String getNamespace() throws InvalidRegistryObjectException;

    public String getNamespaceIdentifier() throws InvalidRegistryObjectException;

    public IContributor getContributor() throws InvalidRegistryObjectException;

    public IExtension getExtension(String var1) throws InvalidRegistryObjectException;

    public IExtension[] getExtensions() throws InvalidRegistryObjectException;

    public String getLabel() throws InvalidRegistryObjectException;

    public String getLabel(String var1) throws InvalidRegistryObjectException;

    public String getSchemaReference() throws InvalidRegistryObjectException;

    public String getSimpleIdentifier() throws InvalidRegistryObjectException;

    public String getUniqueIdentifier() throws InvalidRegistryObjectException;

    public boolean equals(Object var1);

    public boolean isValid();
}

