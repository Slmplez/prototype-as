/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.ExtensionHandle;
import org.eclipse.core.internal.registry.Handle;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.internal.registry.RegistryObjectManager;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.Status;

public class ConfigurationElementHandle
extends Handle
implements IConfigurationElement {
    static final ConfigurationElementHandle[] EMPTY_ARRAY = new ConfigurationElementHandle[0];

    public ConfigurationElementHandle(IObjectManager objectManager, int id) {
        super(objectManager, id);
    }

    protected ConfigurationElement getConfigurationElement() {
        return (ConfigurationElement)this.objectManager.getObject(this.getId(), (byte)1);
    }

    protected boolean shouldPersist() {
        return this.getConfigurationElement().shouldPersist();
    }

    public String getAttribute(String propertyName) {
        return this.getConfigurationElement().getAttribute(propertyName);
    }

    public String getAttribute(String attrName, String locale) {
        return this.getConfigurationElement().getAttribute(attrName, locale);
    }

    public String[] getAttributeNames() {
        return this.getConfigurationElement().getAttributeNames();
    }

    public IConfigurationElement[] getChildren() {
        ConfigurationElement actualCe = this.getConfigurationElement();
        if (actualCe.noExtraData()) {
            return (IConfigurationElement[])this.objectManager.getHandles(actualCe.getRawChildren(), (byte)1);
        }
        return (IConfigurationElement[])this.objectManager.getHandles(actualCe.getRawChildren(), (byte)4);
    }

    public Object createExecutableExtension(String propertyName) throws CoreException {
        try {
            return this.getConfigurationElement().createExecutableExtension(propertyName);
        }
        catch (InvalidRegistryObjectException e) {
            Status status = new Status(4, "org.eclipse.equinox.registry", 1, "Invalid registry object", (Throwable)e);
            if (this.objectManager instanceof RegistryObjectManager) {
                ((RegistryObjectManager)this.objectManager).getRegistry().log((IStatus)status);
            }
            throw new CoreException((IStatus)status);
        }
    }

    public String getAttributeAsIs(String name) {
        return this.getConfigurationElement().getAttributeAsIs(name);
    }

    public IConfigurationElement[] getChildren(String name) {
        ConfigurationElement actualCE = this.getConfigurationElement();
        ConfigurationElement[] children = (ConfigurationElement[])this.objectManager.getObjects(actualCE.getRawChildren(), actualCE.noExtraData() ? (byte)1 : 4);
        if (children.length == 0) {
            return EMPTY_ARRAY;
        }
        IConfigurationElement[] result = new IConfigurationElement[1];
        int idx = 0;
        int i = 0;
        while (i < children.length) {
            if (children[i].getName().equals(name)) {
                if (idx != 0) {
                    IConfigurationElement[] copy = new IConfigurationElement[result.length + 1];
                    System.arraycopy(result, 0, copy, 0, result.length);
                    result = copy;
                }
                result[idx++] = (IConfigurationElement)((Object)this.objectManager.getHandle(children[i].getObjectId(), actualCE.noExtraData() ? (byte)1 : 4));
            }
            ++i;
        }
        if (idx == 0) {
            return EMPTY_ARRAY;
        }
        return result;
    }

    public IExtension getDeclaringExtension() {
        Object result = this;
        while (!((result = ((ConfigurationElementHandle)result).getParent()) instanceof ExtensionHandle)) {
        }
        return (IExtension)result;
    }

    public String getName() {
        return this.getConfigurationElement().getName();
    }

    public Object getParent() {
        ConfigurationElement actualCe = this.getConfigurationElement();
        return this.objectManager.getHandle(actualCe.parentId, actualCe.parentType);
    }

    public String getValue() {
        return this.getConfigurationElement().getValue();
    }

    public String getValue(String locale) {
        return this.getConfigurationElement().getValue(locale);
    }

    public String getValueAsIs() {
        return this.getConfigurationElement().getValueAsIs();
    }

    RegistryObject getObject() {
        return this.getConfigurationElement();
    }

    public String getNamespace() {
        return this.getContributor().getName();
    }

    public String getNamespaceIdentifier() {
        return this.getDeclaringExtension().getNamespaceIdentifier();
    }

    public IContributor getContributor() {
        return this.getConfigurationElement().getContributor();
    }

    public boolean isValid() {
        try {
            this.getConfigurationElement();
        }
        catch (InvalidRegistryObjectException invalidRegistryObjectException) {
            return false;
        }
        return true;
    }
}

