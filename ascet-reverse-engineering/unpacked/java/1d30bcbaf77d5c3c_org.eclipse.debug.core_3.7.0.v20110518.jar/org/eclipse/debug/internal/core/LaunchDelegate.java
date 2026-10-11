/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.internal.core;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchDelegate;
import org.eclipse.debug.core.model.ILaunchConfigurationDelegate;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public final class LaunchDelegate
implements ILaunchDelegate {
    private IConfigurationElement fElement = null;
    private ILaunchConfigurationDelegate fDelegate = null;
    private List fLaunchModes = null;
    private String fType = null;
    private HashMap fPerspectiveIds = null;

    public LaunchDelegate(IConfigurationElement element) {
        this.fElement = element;
    }

    public ILaunchConfigurationDelegate getDelegate() throws CoreException {
        if (this.fDelegate == null) {
            Object obj = this.fElement.createExecutableExtension("delegate");
            if (obj instanceof ILaunchConfigurationDelegate) {
                this.fDelegate = (ILaunchConfigurationDelegate)obj;
            } else {
                throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 125, MessageFormat.format((String)DebugCoreMessages.LaunchDelegate_3, (Object[])new String[]{this.getId()}), null));
            }
        }
        return this.fDelegate;
    }

    public String getId() {
        return this.fElement.getAttribute("id");
    }

    public String getLaunchConfigurationTypeId() {
        if (this.fType == null) {
            this.fType = this.fElement.getAttribute("type");
            if (this.fType == null) {
                this.fType = this.fElement.getAttribute("id");
            }
        }
        return this.fType;
    }

    private Set parseModes(IConfigurationElement element) {
        HashSet<String> set = new HashSet<String>();
        String modes = element.getAttribute("modes");
        if (modes != null) {
            String[] strings = modes.split(",");
            int i = 0;
            while (i < strings.length) {
                set.add(strings[i].trim());
                ++i;
            }
        }
        return set;
    }

    public List getModes() {
        if (this.fLaunchModes == null) {
            this.fLaunchModes = new ArrayList();
            this.fPerspectiveIds = new HashMap();
            IConfigurationElement[] children = this.fElement.getChildren("modeCombination");
            HashSet<String> modeset = null;
            int i = 0;
            while (i < children.length) {
                modeset = this.parseModes(children[i]);
                this.fLaunchModes.add(modeset);
                this.fPerspectiveIds.put(modeset, children[i].getAttribute("perspective"));
                ++i;
            }
            modeset = null;
            String modes = this.fElement.getAttribute("modes");
            if (modes != null) {
                String[] strings = modes.split(",");
                int i2 = 0;
                while (i2 < strings.length) {
                    modeset = new HashSet<String>();
                    modeset.add(strings[i2].trim());
                    this.fLaunchModes.add(modeset);
                    ++i2;
                }
            }
        }
        return this.fLaunchModes;
    }

    public String getName() {
        String name = this.fElement.getAttribute("delegateName");
        if (name == null) {
            name = this.fElement.getAttribute("name");
            if (name == null) {
                name = this.getContributorName();
            }
            name = Character.isUpperCase((name = name.trim()).charAt(0)) ? MessageFormat.format((String)DebugCoreMessages.LaunchDelegate_1, (Object[])new String[]{name}) : MessageFormat.format((String)DebugCoreMessages.LaunchDelegate_2, (Object[])new String[]{name});
        }
        return name;
    }

    public String getContributorName() {
        return this.fElement.getContributor().getName();
    }

    public String getSourceLocatorId() {
        return this.fElement.getAttribute("sourceLocatorId");
    }

    public String getSourcePathComputerId() {
        return this.fElement.getAttribute("sourcePathComputerId");
    }

    public String getDescription() {
        String desc = this.fElement.getAttribute("delegateDescription");
        if (desc == null) {
            return DebugCoreMessages.LaunchDelegate_0;
        }
        return desc;
    }

    public String getPluginIdentifier() {
        return this.fElement.getContributor().getName();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj instanceof ILaunchDelegate && this.getId() != null && this.getId().equals(((ILaunchDelegate)obj).getId());
    }

    public String getPerspectiveId(Set modes) {
        if (this.fPerspectiveIds == null) {
            this.getModes();
        }
        return (String)this.fPerspectiveIds.get(modes);
    }
}

