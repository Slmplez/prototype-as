/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.internal.activities.ws;

import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.activities.ws.TriggerPointAdvisorDescriptor;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.registry.RegistryReader;

public class TriggerPointAdvisorRegistry {
    private static TriggerPointAdvisorRegistry instance;

    private TriggerPointAdvisorRegistry() {
    }

    public static TriggerPointAdvisorRegistry getInstance() {
        if (instance == null) {
            instance = new TriggerPointAdvisorRegistry();
        }
        return instance;
    }

    public TriggerPointAdvisorDescriptor[] getAdvisors() {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "activitySupport");
        if (point == null) {
            return new TriggerPointAdvisorDescriptor[0];
        }
        IExtension[] extensions = point.getExtensions();
        extensions = RegistryReader.orderExtensions(extensions);
        ArrayList<TriggerPointAdvisorDescriptor> list = new ArrayList<TriggerPointAdvisorDescriptor>(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < elements.length) {
                if (elements[j].getName().equals("triggerPointAdvisor")) {
                    try {
                        TriggerPointAdvisorDescriptor descriptor = new TriggerPointAdvisorDescriptor(elements[j]);
                        list.add(descriptor);
                    }
                    catch (IllegalArgumentException e) {
                        WorkbenchPlugin.log("invalid trigger point advisor extension", StatusUtil.newStatus(4, e.getMessage(), (Throwable)e));
                    }
                }
                ++j;
            }
            ++i;
        }
        return list.toArray(new TriggerPointAdvisorDescriptor[list.size()]);
    }

    public TriggerPointAdvisorDescriptor getAdvisorForProduct(String productId) {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "activitySupport");
        if (point == null) {
            return null;
        }
        IExtension[] extensions = point.getExtensions();
        String targetIntroId = this.getAdvisorForProduct(productId, extensions = RegistryReader.orderExtensions(extensions));
        if (targetIntroId == null) {
            return null;
        }
        TriggerPointAdvisorDescriptor[] advisors = this.getAdvisors();
        int i = 0;
        while (i < advisors.length) {
            if (advisors[i].getId().equals(targetIntroId)) {
                return advisors[i];
            }
            ++i;
        }
        return null;
    }

    private String getAdvisorForProduct(String targetProductId, IExtension[] extensions) {
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < elements.length) {
                if (elements[j].getName().equals("triggerPointAdvisorProductBinding")) {
                    String advisorId = elements[j].getAttribute("triggerPointAdvisorId");
                    String productId = elements[j].getAttribute("productId");
                    if (advisorId == null || productId == null) {
                        Status status = new Status(4, elements[j].getDeclaringExtension().getNamespace(), 4, "triggerPointAdvisorId and productId must be defined.", (Throwable)new IllegalArgumentException());
                        WorkbenchPlugin.log("Invalid trigger point advisor binding", (IStatus)status);
                    } else if (targetProductId.equals(productId)) {
                        return advisorId;
                    }
                }
                ++j;
            }
            ++i;
        }
        return null;
    }
}

