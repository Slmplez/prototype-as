/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.internal.ObjectActionContributor;
import org.eclipse.ui.internal.ObjectActionContributorManager;
import org.eclipse.ui.internal.registry.RegistryReader;

public class ObjectActionContributorReader
extends RegistryReader {
    private ObjectActionContributorManager manager;

    protected void processObjectContribution(IConfigurationElement element) {
        String objectClassName = element.getAttribute("objectClass");
        if (objectClassName == null) {
            ObjectActionContributorReader.logMissingAttribute(element, "objectClass");
            return;
        }
        ObjectActionContributor contributor = new ObjectActionContributor(element);
        this.manager.registerContributor(contributor, objectClassName);
    }

    protected boolean readElement(IConfigurationElement element) {
        String tagName = element.getName();
        if (tagName.equals("objectContribution")) {
            this.processObjectContribution(element);
            return true;
        }
        return tagName.equals("viewerContribution");
    }

    public void readPopupContributors(ObjectActionContributorManager mng) {
        this.setManager(mng);
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        this.readRegistry(registry, "org.eclipse.ui", "popupMenus");
    }

    public void setManager(ObjectActionContributorManager mng) {
        this.manager = mng;
    }
}

