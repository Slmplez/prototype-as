/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 */
package org.eclipse.ui.internal.wizards;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.dialogs.WizardCollectionElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.internal.registry.WizardsRegistryReader;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.internal.wizards.AbstractWizardRegistry;
import org.eclipse.ui.wizards.IWizardDescriptor;

public abstract class AbstractExtensionWizardRegistry
extends AbstractWizardRegistry
implements IExtensionChangeHandler {
    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        WizardsRegistryReader reader = new WizardsRegistryReader(this.getPlugin(), this.getExtensionPoint());
        reader.setInitialCollection(this.getWizardElements());
        IConfigurationElement[] configurationElements = extension.getConfigurationElements();
        int i = 0;
        while (i < configurationElements.length) {
            reader.readElement(configurationElements[i]);
            ++i;
        }
        this.setWizardElements(reader.getWizardElements());
        this.registerWizards(this.getWizardElements());
        WorkbenchWizardElement[] additionalPrimary = reader.getPrimaryWizards();
        if (additionalPrimary.length == 0) {
            return;
        }
        IWizardDescriptor[] localPrimaryWizards = this.getPrimaryWizards();
        WorkbenchWizardElement[] newPrimary = new WorkbenchWizardElement[additionalPrimary.length + localPrimaryWizards.length];
        System.arraycopy(localPrimaryWizards, 0, newPrimary, 0, localPrimaryWizards.length);
        System.arraycopy(additionalPrimary, 0, newPrimary, localPrimaryWizards.length, additionalPrimary.length);
        this.setPrimaryWizards(newPrimary);
    }

    public void dispose() {
        super.dispose();
        PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler((IExtensionChangeHandler)this);
    }

    protected void doInitialize() {
        PlatformUI.getWorkbench().getExtensionTracker().registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPointFilter()));
        WizardsRegistryReader reader = new WizardsRegistryReader(this.getPlugin(), this.getExtensionPoint());
        this.setWizardElements(reader.getWizardElements());
        this.setPrimaryWizards(reader.getPrimaryWizards());
        this.registerWizards(this.getWizardElements());
    }

    protected abstract String getExtensionPoint();

    private IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint(this.getPlugin(), this.getExtensionPoint());
    }

    protected abstract String getPlugin();

    private void register(IExtension extension, Object object) {
        PlatformUI.getWorkbench().getExtensionTracker().registerObject(extension, object, 2);
    }

    private void registerWizards(WizardCollectionElement collection) {
        this.registerWizards(collection.getWorkbenchWizardElements());
        WizardCollectionElement[] collections = collection.getCollectionElements();
        int i = 0;
        while (i < collections.length) {
            IConfigurationElement configurationElement = collections[i].getConfigurationElement();
            if (configurationElement != null) {
                this.register(configurationElement.getDeclaringExtension(), collections[i]);
            }
            this.registerWizards(collections[i]);
            ++i;
        }
    }

    private void registerWizards(WorkbenchWizardElement[] wizards) {
        int i = 0;
        while (i < wizards.length) {
            this.register(wizards[i].getConfigurationElement().getDeclaringExtension(), wizards[i]);
            ++i;
        }
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        if (!extension.getExtensionPointUniqueIdentifier().equals(this.getExtensionPointFilter().getUniqueIdentifier())) {
            return;
        }
        int i = 0;
        while (i < objects.length) {
            Object object = objects[i];
            if (object instanceof WizardCollectionElement) {
                WizardCollectionElement collection = (WizardCollectionElement)object;
                collection.getParentCollection().remove(collection);
            } else if (object instanceof WorkbenchWizardElement) {
                WorkbenchWizardElement wizard = (WorkbenchWizardElement)object;
                WizardCollectionElement parent = wizard.getCollectionElement();
                if (parent != null) {
                    parent.remove(wizard);
                }
                Object[] primaryWizards = this.getPrimaryWizards();
                int j = 0;
                while (j < primaryWizards.length) {
                    if (primaryWizards[j] == wizard) {
                        Object[] newPrimary = new WorkbenchWizardElement[primaryWizards.length - 1];
                        Util.arrayCopyWithRemoval(primaryWizards, newPrimary, j);
                        primaryWizards = newPrimary;
                        break;
                    }
                    ++j;
                }
                this.setPrimaryWizards((WorkbenchWizardElement[])primaryWizards);
            }
            ++i;
        }
    }
}

