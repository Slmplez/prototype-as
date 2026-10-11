/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.internal.intro;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.intro.IIntroDescriptor;
import org.eclipse.ui.internal.intro.IIntroRegistry;
import org.eclipse.ui.internal.intro.IntroDescriptor;
import org.eclipse.ui.internal.intro.IntroMessages;
import org.eclipse.ui.internal.registry.RegistryReader;

public class IntroRegistry
implements IIntroRegistry {
    private static final String TAG_INTRO = "intro";
    private static final String TAG_INTROPRODUCTBINDING = "introProductBinding";
    private static final String ATT_INTROID = "introId";
    private static final String ATT_PRODUCTID = "productId";

    public int getIntroCount() {
        return this.getIntros().length;
    }

    public IIntroDescriptor[] getIntros() {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", TAG_INTRO);
        if (point == null) {
            return new IIntroDescriptor[0];
        }
        IExtension[] extensions = point.getExtensions();
        extensions = RegistryReader.orderExtensions(extensions);
        ArrayList<IntroDescriptor> list = new ArrayList<IntroDescriptor>(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < elements.length) {
                if (elements[j].getName().equals(TAG_INTRO)) {
                    try {
                        IntroDescriptor descriptor = new IntroDescriptor(elements[j]);
                        list.add(descriptor);
                    }
                    catch (CoreException e) {
                        WorkbenchPlugin.log(IntroMessages.Intro_could_not_create_descriptor, e.getStatus());
                    }
                }
                ++j;
            }
            ++i;
        }
        return list.toArray(new IIntroDescriptor[list.size()]);
    }

    public IIntroDescriptor getIntroForProduct(String targetProductId) {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", TAG_INTRO);
        if (point == null) {
            return null;
        }
        IExtension[] extensions = point.getExtensions();
        String targetIntroId = this.getIntroForProduct(targetProductId, extensions = RegistryReader.orderExtensions(extensions));
        if (targetIntroId == null) {
            return null;
        }
        IIntroDescriptor descriptor = null;
        IIntroDescriptor[] intros = this.getIntros();
        int i = 0;
        while (i < intros.length) {
            if (intros[i].getId().equals(targetIntroId)) {
                descriptor = intros[i];
                break;
            }
            ++i;
        }
        return descriptor;
    }

    private String getIntroForProduct(String targetProductId, IExtension[] extensions) {
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < elements.length) {
                if (elements[j].getName().equals(TAG_INTROPRODUCTBINDING)) {
                    String introId = elements[j].getAttribute(ATT_INTROID);
                    String productId = elements[j].getAttribute(ATT_PRODUCTID);
                    if (introId == null || productId == null) {
                        Status status = new Status(4, elements[j].getDeclaringExtension().getNamespace(), 4, "introId and productId must be defined.", (Throwable)new IllegalArgumentException());
                        WorkbenchPlugin.log("Invalid intro binding", (IStatus)status);
                    } else if (targetProductId.equals(productId)) {
                        return introId;
                    }
                }
                ++j;
            }
            ++i;
        }
        return null;
    }

    public IIntroDescriptor getIntro(String id) {
        IIntroDescriptor[] intros = this.getIntros();
        int i = 0;
        while (i < intros.length) {
            IIntroDescriptor desc = intros[i];
            if (desc.getId().equals(id)) {
                return desc;
            }
            ++i;
        }
        return null;
    }
}

