/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaModel
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.osgi.framework.Bundle
 */
package org.eclipse.jdt.internal.launching.environments;

import com.ibm.icu.text.MessageFormat;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.environments.AccessRuleParticipant;
import org.eclipse.jdt.internal.launching.environments.EnvironmentMessages;
import org.eclipse.jdt.internal.launching.environments.EnvironmentsManager;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstallChangedListener;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.PropertyChangeEvent;
import org.eclipse.jdt.launching.environments.IAccessRuleParticipant;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.osgi.framework.Bundle;

class ExecutionEnvironment
implements IExecutionEnvironment {
    private IVMInstallChangedListener fListener = new IVMInstallChangedListener(){

        public void defaultVMInstallChanged(IVMInstall previous, IVMInstall current) {
        }

        public void vmAdded(IVMInstall newVm) {
        }

        public void vmChanged(PropertyChangeEvent event) {
            if (event.getSource() != null) {
                ExecutionEnvironment.this.fParticipantMap.remove(event.getSource());
                ExecutionEnvironment.this.fRuleCache.remove(event.getSource());
            }
        }

        public void vmRemoved(IVMInstall removedVm) {
            ExecutionEnvironment.this.fParticipantMap.remove(removedVm);
            ExecutionEnvironment.this.fRuleCache.remove(removedVm);
        }
    };
    private IConfigurationElement fElement;
    private IAccessRuleParticipant fRuleParticipant;
    private Properties fProfileProperties;
    private boolean fPropertiesInitialized;
    private Set fStrictlyCompatible = new HashSet();
    private List fCompatibleVMs = new ArrayList();
    private IVMInstall fDefault = null;
    private IAccessRuleParticipant[] fParticipants = null;
    private Map fParticipantMap = new HashMap();
    private Map fRuleCache = new HashMap();
    private static final IPath ALL_PATTERN = new Path("**/*");
    private static final String COMPILER_SETTING_PREFIX = "org.eclipse.jdt.core.compiler";

    ExecutionEnvironment(IConfigurationElement element) {
        this.fElement = element;
        this.fPropertiesInitialized = false;
        String attribute = this.fElement.getAttribute("ruleParticipant");
        if (attribute != null) {
            this.fRuleParticipant = new AccessRuleParticipant(this.fElement);
        }
        JavaRuntime.addVMInstallChangedListener(this.fListener);
    }

    private void init() {
        EnvironmentsManager.getDefault().initializeCompatibilities();
    }

    public String getId() {
        return this.fElement.getAttribute("id");
    }

    public String getDescription() {
        return this.fElement.getAttribute("description");
    }

    public IVMInstall[] getCompatibleVMs() {
        this.init();
        return this.fCompatibleVMs.toArray(new IVMInstall[this.fCompatibleVMs.size()]);
    }

    public boolean isStrictlyCompatible(IVMInstall vm) {
        this.init();
        return this.fStrictlyCompatible.contains(vm);
    }

    public IVMInstall getDefaultVM() {
        this.init();
        return this.fDefault;
    }

    public void setDefaultVM(IVMInstall vm) {
        this.init();
        if (vm != null && !this.fCompatibleVMs.contains(vm)) {
            throw new IllegalArgumentException(MessageFormat.format((String)EnvironmentMessages.EnvironmentsManager_0, (Object[])new String[]{this.getId()}));
        }
        if (vm != null && vm.equals(this.fDefault)) {
            return;
        }
        this.fDefault = vm;
        EnvironmentsManager.getDefault().updateDefaultVMs();
        this.rebindClasspathContainers();
    }

    private void rebindClasspathContainers() {
        IJavaModel model = JavaCore.create((IWorkspaceRoot)ResourcesPlugin.getWorkspace().getRoot());
        if (model != null) {
            try {
                ArrayList<IJavaProject> updates = new ArrayList<IJavaProject>();
                IJavaProject[] javaProjects = model.getJavaProjects();
                IPath path = JavaRuntime.newJREContainerPath(this);
                int i = 0;
                while (i < javaProjects.length) {
                    IJavaProject project = javaProjects[i];
                    IClasspathEntry[] rawClasspath = project.getRawClasspath();
                    int j = 0;
                    while (j < rawClasspath.length) {
                        IClasspathEntry entry = rawClasspath[j];
                        if (entry.getEntryKind() == 5 && entry.getPath().equals((Object)path)) {
                            updates.add(project);
                        }
                        ++j;
                    }
                    ++i;
                }
                if (!updates.isEmpty()) {
                    JavaCore.setClasspathContainer((IPath)path, (IJavaProject[])updates.toArray(new IJavaProject[updates.size()]), (IClasspathContainer[])new IClasspathContainer[updates.size()], (IProgressMonitor)new NullProgressMonitor());
                }
            }
            catch (JavaModelException e) {
                LaunchingPlugin.log(e);
            }
        }
    }

    void add(IVMInstall vm, boolean strictlyCompatible) {
        if (this.fCompatibleVMs.contains(vm)) {
            return;
        }
        this.fCompatibleVMs.add(vm);
        if (strictlyCompatible) {
            this.fStrictlyCompatible.add(vm);
        }
    }

    void remove(IVMInstall vm) {
        this.fCompatibleVMs.remove(vm);
        this.fStrictlyCompatible.remove(vm);
    }

    void initDefaultVM(IVMInstall vm) {
        this.fDefault = vm;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IAccessRule[][] getAccessRules(IVMInstall vm, LibraryLocation[] libraries, IJavaProject project) {
        IAccessRuleParticipant[] participants = this.getParticipants();
        Map rulesByParticipant = this.collectRulesByParticipant(participants, vm, libraries, project);
        ExecutionEnvironment executionEnvironment = this;
        synchronized (executionEnvironment) {
            Map cachedRules = (Map)this.fParticipantMap.get(vm);
            if (cachedRules == null || !cachedRules.equals(rulesByParticipant)) {
                List[] libLists = new List[libraries.length];
                int i = 0;
                while (i < libLists.length) {
                    libLists[i] = new ArrayList();
                    ++i;
                }
                i = 0;
                while (i < participants.length) {
                    IAccessRuleParticipant participant = participants[i];
                    this.addRules((IAccessRule[][])rulesByParticipant.get(participant), libLists);
                    ++i;
                }
                IAccessRule[][] allRules = new IAccessRule[libraries.length][];
                int i2 = 0;
                while (i2 < libLists.length) {
                    allRules[i2] = libLists[i2].toArray(new IAccessRule[libLists[i2].size()]);
                    ++i2;
                }
                this.fParticipantMap.put(vm, rulesByParticipant);
                this.fRuleCache.put(vm, allRules);
                return allRules;
            }
            return (IAccessRule[][])this.fRuleCache.get(vm);
        }
    }

    private synchronized IAccessRuleParticipant[] getParticipants() {
        if (this.fParticipants == null) {
            IAccessRuleParticipant[] participants = EnvironmentsManager.getDefault().getAccessRuleParticipants();
            if (this.fRuleParticipant != null) {
                LinkedHashSet<IAccessRuleParticipant> set = new LinkedHashSet<IAccessRuleParticipant>();
                int i = 0;
                while (i < participants.length) {
                    set.add(participants[i]);
                    ++i;
                }
                set.remove(this.fRuleParticipant);
                set.add(this.fRuleParticipant);
                participants = set.toArray(new IAccessRuleParticipant[set.size()]);
            }
            this.fParticipants = participants;
        }
        return this.fParticipants;
    }

    private Map collectRulesByParticipant(IAccessRuleParticipant[] participants, IVMInstall vm, LibraryLocation[] libraries, IJavaProject project) {
        HashMap<IAccessRuleParticipant, IAccessRule[][]> map = new HashMap<IAccessRuleParticipant, IAccessRule[][]>();
        int i = 0;
        while (i < participants.length) {
            map.put(participants[i], participants[i].getAccessRules(this, vm, libraries, project));
            ++i;
        }
        return map;
    }

    private void addRules(IAccessRule[][] accessRules, List[] collect) {
        int i = 0;
        while (i < accessRules.length) {
            IAccessRule lastRule;
            IAccessRule[] libRules = accessRules[i];
            List list = collect[i];
            if (list.isEmpty() || !(lastRule = (IAccessRule)list.get(list.size() - 1)).getPattern().equals((Object)ALL_PATTERN)) {
                int j = 0;
                while (j < libRules.length) {
                    list.add(libRules[j]);
                    ++j;
                }
            }
            ++i;
        }
    }

    public Properties getProfileProperties() {
        if (!this.fPropertiesInitialized) {
            this.fPropertiesInitialized = true;
            String path = this.fElement.getAttribute("profileProperties");
            Bundle bundle = null;
            if (path == null) {
                bundle = Platform.getBundle((String)"org.eclipse.osgi");
                path = String.valueOf(this.getId().replace('/', '_')) + ".profile";
            } else {
                bundle = Platform.getBundle((String)this.fElement.getContributor().getName());
            }
            if (bundle != null && path != null) {
                this.fProfileProperties = this.getJavaProfileProperties(bundle, path);
            }
        }
        return this.fProfileProperties;
    }

    /*
     * Loose catch block
     */
    private Properties getJavaProfileProperties(Bundle bundle, String path) {
        block18: {
            URL profileURL = bundle.getEntry(path);
            if (profileURL != null) {
                InputStream is;
                block17: {
                    is = null;
                    profileURL = FileLocator.resolve((URL)profileURL);
                    is = profileURL.openStream();
                    if (is == null) break block17;
                    Properties profile = new Properties();
                    profile.load(is);
                    Properties properties = profile;
                    try {
                        if (is != null) {
                            is.close();
                        }
                    }
                    catch (IOException iOException) {}
                    return properties;
                    catch (IOException iOException) {
                        try {}
                        catch (Throwable throwable) {
                            try {
                                if (is != null) {
                                    is.close();
                                }
                            }
                            catch (IOException iOException2) {}
                            throw throwable;
                        }
                        try {
                            if (is != null) {
                                is.close();
                            }
                            break block18;
                        }
                        catch (IOException iOException3) {}
                        break block18;
                    }
                }
                try {
                    if (is != null) {
                        is.close();
                    }
                }
                catch (IOException iOException) {}
            }
        }
        return null;
    }

    public IExecutionEnvironment[] getSubEnvironments() {
        String subsets;
        Properties properties = this.getProfileProperties();
        LinkedHashSet<IExecutionEnvironment> subenv = new LinkedHashSet<IExecutionEnvironment>();
        if (properties != null && (subsets = properties.getProperty("org.osgi.framework.executionenvironment")) != null) {
            String[] ids = subsets.split(",");
            int i = 0;
            while (i < ids.length) {
                IExecutionEnvironment sub = JavaRuntime.getExecutionEnvironmentsManager().getEnvironment(ids[i].trim());
                if (sub != null && !sub.getId().equals(this.getId())) {
                    subenv.add(sub);
                }
                ++i;
            }
        }
        return subenv.toArray(new IExecutionEnvironment[subenv.size()]);
    }

    public Map getComplianceOptions() {
        Properties properties = this.getProfileProperties();
        if (properties != null) {
            HashMap<String, String> map = new HashMap<String, String>();
            Iterator iterator = properties.keySet().iterator();
            while (iterator.hasNext()) {
                String key = (String)iterator.next();
                if (!key.startsWith(COMPILER_SETTING_PREFIX)) continue;
                map.put(key, properties.getProperty(key));
            }
            if (!map.isEmpty()) {
                return map;
            }
        }
        return null;
    }
}

