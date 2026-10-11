/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.internal.core;

import com.ibm.icu.text.MessageFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationMigrationDelegate;
import org.eclipse.debug.core.ILaunchConfigurationType;
import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
import org.eclipse.debug.core.ILaunchDelegate;
import org.eclipse.debug.core.ILaunchMode;
import org.eclipse.debug.core.model.ILaunchConfigurationDelegate;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputer;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.LaunchConfigurationWorkingCopy;
import org.eclipse.debug.internal.core.LaunchDelegate;
import org.eclipse.debug.internal.core.LaunchManager;

public class LaunchConfigurationType
extends PlatformObject
implements ILaunchConfigurationType {
    private IConfigurationElement fElement;
    private Set fModes = null;
    private Set fModeCombinations = null;
    private ISourcePathComputer fSourcePathComputer = null;
    private ILaunchConfigurationMigrationDelegate fMigrationDelegate = null;
    private String fSourceLocator = null;
    private Map fDelegates = null;
    private LaunchDelegate fSourceProvider = null;
    private Map fPreferredDelegates = null;

    protected LaunchConfigurationType(IConfigurationElement element) {
        this.fElement = element;
        this.initializePreferredDelegates();
    }

    public String getAttribute(String attributeName) {
        return this.fElement.getAttribute(attributeName);
    }

    public String getCategory() {
        return this.fElement.getAttribute("category");
    }

    public ILaunchConfigurationDelegate getDelegate() throws CoreException {
        return this.getDelegate("run");
    }

    public ILaunchConfigurationDelegate getDelegate(String mode) throws CoreException {
        HashSet<String> modes = new HashSet<String>();
        modes.add(mode);
        ILaunchDelegate[] delegates = this.getDelegates(modes);
        if (delegates.length > 0) {
            return delegates[0].getDelegate();
        }
        Status status = null;
        ILaunchMode launchMode = DebugPlugin.getDefault().getLaunchManager().getLaunchMode(mode);
        status = launchMode == null ? new Status(4, DebugPlugin.getUniqueIdentifier(), MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationType_7, (Object[])new String[]{mode})) : new Status(4, DebugPlugin.getUniqueIdentifier(), MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationType_7, (Object[])new String[]{((LaunchManager)DebugPlugin.getDefault().getLaunchManager()).getLaunchModeName(mode)}));
        throw new CoreException((IStatus)status);
    }

    public ILaunchDelegate[] getDelegates(Set modes) throws CoreException {
        this.initializeDelegates();
        Set delegates = (Set)this.fDelegates.get(modes);
        if (delegates == null) {
            delegates = Collections.EMPTY_SET;
        }
        return delegates.toArray(new ILaunchDelegate[delegates.size()]);
    }

    public void setPreferredDelegate(Set modes, ILaunchDelegate delegate) {
        if (this.fPreferredDelegates == null) {
            this.fPreferredDelegates = new HashMap();
        }
        if (delegate == null) {
            this.fPreferredDelegates.remove(modes);
        } else {
            this.fPreferredDelegates.put(modes, delegate);
        }
        ((LaunchManager)DebugPlugin.getDefault().getLaunchManager()).persistPreferredLaunchDelegate(this);
    }

    public ILaunchDelegate getPreferredDelegate(Set modes) {
        this.initializePreferredDelegates();
        return (ILaunchDelegate)this.fPreferredDelegates.get(modes);
    }

    public Map getPreferredDelegates() {
        this.initializePreferredDelegates();
        return this.fPreferredDelegates;
    }

    private synchronized void initializePreferredDelegates() {
        if (this.fPreferredDelegates == null) {
            this.fPreferredDelegates = new HashMap();
            this.initializeDelegates();
            LaunchManager lm = (LaunchManager)DebugPlugin.getDefault().getLaunchManager();
            ILaunchDelegate delegate = null;
            Set modes = null;
            Iterator iter = this.fDelegates.keySet().iterator();
            while (iter.hasNext()) {
                modes = (Set)iter.next();
                delegate = lm.getPreferredDelegate(this.getIdentifier(), modes);
                if (delegate == null) continue;
                this.fPreferredDelegates.put(modes, delegate);
            }
        }
    }

    private synchronized void initializeDelegates() {
        if (this.fDelegates == null) {
            this.fDelegates = new Hashtable();
            LaunchDelegate[] launchDelegates = this.getLaunchDelegateExtensions();
            LaunchDelegate delegate = null;
            List modelist = null;
            Set modes = null;
            HashSet<LaunchDelegate> tmp = null;
            int i = 0;
            while (i < launchDelegates.length) {
                delegate = launchDelegates[i];
                modelist = delegate.getModes();
                int j = 0;
                while (j < modelist.size()) {
                    modes = (Set)modelist.get(j);
                    tmp = (HashSet<LaunchDelegate>)this.fDelegates.get(modes);
                    if (tmp == null) {
                        tmp = new HashSet<LaunchDelegate>();
                        this.fDelegates.put(modes, tmp);
                    }
                    tmp.add(delegate);
                    ++j;
                }
                ++i;
            }
        }
    }

    private LaunchDelegate[] getLaunchDelegateExtensions() {
        return ((LaunchManager)DebugPlugin.getDefault().getLaunchManager()).getLaunchDelegates(this.getIdentifier());
    }

    public String getIdentifier() {
        return this.fElement.getAttribute("id");
    }

    public String getName() {
        return this.fElement.getAttribute("name");
    }

    public String getPluginIdentifier() {
        return this.fElement.getContributor().getName();
    }

    public String getSourceLocatorId() {
        if (this.fSourceLocator == null) {
            this.fSourceLocator = this.getAttribute("sourceLocatorId");
            if (this.fSourceProvider != null) {
                this.fSourceLocator = this.fSourceProvider.getSourceLocatorId();
            }
            if (this.fSourceLocator == null) {
                LaunchDelegate[] delegates = this.getLaunchDelegateExtensions();
                int i = 0;
                while (i < delegates.length) {
                    this.fSourceLocator = delegates[i].getSourceLocatorId();
                    if (this.fSourceLocator != null) {
                        this.fSourceProvider = delegates[i];
                        return this.fSourceLocator;
                    }
                    ++i;
                }
                this.fSourceProvider = null;
            }
        }
        return this.fSourceLocator;
    }

    public ISourcePathComputer getSourcePathComputer() {
        if (this.fSourcePathComputer == null) {
            String id = this.fElement.getAttribute("sourcePathComputerId");
            if (this.fSourceProvider != null) {
                id = this.fSourceProvider.getSourcePathComputerId();
            }
            if (id != null) {
                this.fSourcePathComputer = DebugPlugin.getDefault().getLaunchManager().getSourcePathComputer(id);
            } else {
                LaunchDelegate[] delegates = this.getLaunchDelegateExtensions();
                int i = 0;
                while (i < delegates.length) {
                    id = delegates[i].getSourcePathComputerId();
                    if (id != null) {
                        this.fSourceProvider = delegates[i];
                        this.fSourcePathComputer = DebugPlugin.getDefault().getLaunchManager().getSourcePathComputer(id);
                        if (this.fSourcePathComputer != null) {
                            return this.fSourcePathComputer;
                        }
                    }
                    ++i;
                }
                this.fSourceProvider = null;
            }
        }
        return this.fSourcePathComputer;
    }

    public Set getSupportedModes() {
        if (this.fModes == null) {
            this.fModes = new HashSet();
            LaunchDelegate[] delegates = this.getLaunchDelegateExtensions();
            List modesets = null;
            int i = 0;
            while (i < delegates.length) {
                modesets = delegates[i].getModes();
                Iterator iter = modesets.iterator();
                while (iter.hasNext()) {
                    this.fModes.addAll((Set)iter.next());
                }
                ++i;
            }
        }
        return this.fModes;
    }

    public Set getSupportedModeCombinations() {
        if (this.fModeCombinations == null) {
            this.initializeDelegates();
            this.fModeCombinations = new HashSet();
            this.fModeCombinations = this.fDelegates.keySet();
        }
        HashSet set = new HashSet();
        Iterator iter = this.fModeCombinations.iterator();
        while (iter.hasNext()) {
            set.add(new HashSet((Set)iter.next()));
        }
        return set;
    }

    public boolean isMigrationCandidate(ILaunchConfiguration candidate) throws CoreException {
        this.initializeMigrationDelegate();
        if (this.fMigrationDelegate != null) {
            return this.fMigrationDelegate.isCandidate(candidate);
        }
        return false;
    }

    private synchronized void initializeMigrationDelegate() throws CoreException {
        if (this.fElement.getAttribute("migrationDelegate") != null && this.fMigrationDelegate == null) {
            this.fMigrationDelegate = (ILaunchConfigurationMigrationDelegate)this.fElement.createExecutableExtension("migrationDelegate");
        }
    }

    public boolean isPublic() {
        String publicString = this.fElement.getAttribute("public");
        return publicString == null || !publicString.equalsIgnoreCase("false");
    }

    public void migrate(ILaunchConfiguration candidate) throws CoreException {
        this.initializeMigrationDelegate();
        if (this.fMigrationDelegate != null) {
            this.fMigrationDelegate.migrate(candidate);
        }
    }

    public ILaunchConfigurationWorkingCopy newInstance(IContainer container, String name) throws CoreException {
        Path path = new Path(name);
        if (container == null && path.segmentCount() > 1) {
            throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), DebugCoreMessages.LaunchConfigurationType_2));
        }
        try {
            DebugPlugin.getDefault().getLaunchManager().isValidLaunchConfigurationName(path.lastSegment());
        }
        catch (IllegalArgumentException e) {
            throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), e.getMessage(), (Throwable)e));
        }
        return new LaunchConfigurationWorkingCopy(container, name, this);
    }

    public boolean supportsMode(String mode) {
        if (this.fModeCombinations == null) {
            this.getSupportedModeCombinations();
        }
        Set modes = null;
        Iterator iter = this.fModeCombinations.iterator();
        while (iter.hasNext()) {
            modes = (Set)iter.next();
            if (modes.size() != 1 || !modes.contains(mode)) continue;
            return true;
        }
        return false;
    }

    public String getContributorName() {
        return this.fElement.getContributor().getName();
    }

    public boolean supportsModeCombination(Set modes) {
        if (this.fModeCombinations == null) {
            this.getSupportedModeCombinations();
        }
        return this.fModeCombinations.contains(modes);
    }

    void resetPreferredDelegates() {
        this.fPreferredDelegates = null;
    }
}

