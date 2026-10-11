/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.util.ArrayList;
import java.util.Arrays;
import org.eclipse.core.internal.registry.ConfigurationElementHandle;
import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.ExtensionHandle;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.Handle;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.InvalidRegistryObjectException;

public class BaseExtensionPointHandle
extends Handle
implements IExtensionPoint {
    public BaseExtensionPointHandle(IObjectManager objectManager, int id) {
        super(objectManager, id);
    }

    public IExtension[] getExtensions() {
        return (IExtension[])this.objectManager.getHandles(this.getExtensionPoint().getRawChildren(), (byte)2);
    }

    public String getNamespace() {
        return this.getContributor().getName();
    }

    public String getNamespaceIdentifier() {
        return this.getExtensionPoint().getNamespace();
    }

    public IContributor getContributor() {
        return this.getExtensionPoint().getContributor();
    }

    protected boolean shouldPersist() {
        return this.getExtensionPoint().shouldPersist();
    }

    public IExtension getExtension(String extensionId) {
        if (extensionId == null) {
            return null;
        }
        int[] children = this.getExtensionPoint().getRawChildren();
        int i = 0;
        while (i < children.length) {
            if (extensionId.equals(((Extension)this.objectManager.getObject(children[i], (byte)2)).getUniqueIdentifier())) {
                return (ExtensionHandle)this.objectManager.getHandle(children[i], (byte)2);
            }
            ++i;
        }
        return null;
    }

    public IConfigurationElement[] getConfigurationElements() {
        Extension[] tmpExtensions = (Extension[])this.objectManager.getObjects(this.getExtensionPoint().getRawChildren(), (byte)2);
        if (tmpExtensions.length == 0) {
            return ConfigurationElementHandle.EMPTY_ARRAY;
        }
        ArrayList<Handle> result = new ArrayList<Handle>();
        int i = 0;
        while (i < tmpExtensions.length) {
            result.addAll(Arrays.asList(this.objectManager.getHandles(tmpExtensions[i].getRawChildren(), (byte)1)));
            ++i;
        }
        return result.toArray(new IConfigurationElement[result.size()]);
    }

    public String getLabelAsIs() {
        return this.getExtensionPoint().getLabelAsIs();
    }

    public String getLabel() {
        return this.getExtensionPoint().getLabel();
    }

    public String getLabel(String locale) {
        return this.getExtensionPoint().getLabel(locale);
    }

    public String getSchemaReference() {
        return this.getExtensionPoint().getSchemaReference();
    }

    public String getSimpleIdentifier() {
        return this.getExtensionPoint().getSimpleIdentifier();
    }

    public String getUniqueIdentifier() {
        return this.getExtensionPoint().getUniqueIdentifier();
    }

    RegistryObject getObject() {
        return this.getExtensionPoint();
    }

    protected ExtensionPoint getExtensionPoint() {
        return (ExtensionPoint)this.objectManager.getObject(this.getId(), (byte)3);
    }

    public boolean isValid() {
        try {
            this.getExtensionPoint();
        }
        catch (InvalidRegistryObjectException invalidRegistryObjectException) {
            return false;
        }
        return true;
    }
}

