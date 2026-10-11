/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.Handle;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.InvalidRegistryObjectException;

public class BaseExtensionHandle
extends Handle
implements IExtension {
    public BaseExtensionHandle(IObjectManager objectManager, int id) {
        super(objectManager, id);
    }

    protected Extension getExtension() {
        return (Extension)this.objectManager.getObject(this.getId(), (byte)2);
    }

    protected boolean shouldPersist() {
        return this.getExtension().shouldPersist();
    }

    public String getNamespace() {
        return this.getContributor().getName();
    }

    public String getNamespaceIdentifier() {
        return this.getExtension().getNamespaceIdentifier();
    }

    public IContributor getContributor() {
        return this.getExtension().getContributor();
    }

    String getContributorId() {
        return this.getExtension().getContributorId();
    }

    public String getExtensionPointUniqueIdentifier() {
        return this.getExtension().getExtensionPointIdentifier();
    }

    public String getLabel() {
        return this.getExtension().getLabel();
    }

    public String getLabelAsIs() {
        return this.getExtension().getLabelAsIs();
    }

    public String getLabel(String locale) {
        return this.getExtension().getLabel(locale);
    }

    public String getSimpleIdentifier() {
        return this.getExtension().getSimpleIdentifier();
    }

    public String getUniqueIdentifier() {
        return this.getExtension().getUniqueIdentifier();
    }

    public IConfigurationElement[] getConfigurationElements() {
        return (IConfigurationElement[])this.objectManager.getHandles(this.getExtension().getRawChildren(), (byte)1);
    }

    RegistryObject getObject() {
        return this.getExtension();
    }

    public boolean isValid() {
        try {
            this.getExtension();
        }
        catch (InvalidRegistryObjectException invalidRegistryObjectException) {
            return false;
        }
        return true;
    }
}

