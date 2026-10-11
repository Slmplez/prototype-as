/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IClasspathAttribute
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstallChangedListener;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.PropertyChangeEvent;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;

public class JREContainer
implements IClasspathContainer {
    private IVMInstall fVMInstall = null;
    private IPath fPath = null;
    private IJavaProject fProject = null;
    private static Map fgClasspathEntries = new HashMap(10);
    private static IAccessRule[] EMPTY_RULES = new IAccessRule[0];
    public static boolean DEBUG_JRE_CONTAINER = false;
    private static Map fgClasspathEntriesWithRules = new HashMap(10);

    static {
        IVMInstallChangedListener listener = new IVMInstallChangedListener(){

            public void defaultVMInstallChanged(IVMInstall previous, IVMInstall current) {
            }

            public void vmAdded(IVMInstall newVm) {
            }

            public void vmChanged(PropertyChangeEvent event) {
                if (event.getSource() != null) {
                    fgClasspathEntries.remove(event.getSource());
                    this.removeRuleEntry(event.getSource());
                }
            }

            public void vmRemoved(IVMInstall removedVm) {
                fgClasspathEntries.remove(removedVm);
                this.removeRuleEntry(removedVm);
            }

            private void removeRuleEntry(Object obj) {
                if (obj instanceof IVMInstall) {
                    IVMInstall install = (IVMInstall)obj;
                    RuleKey key = null;
                    ArrayList<RuleKey> list = new ArrayList<RuleKey>();
                    Iterator iter = fgClasspathEntriesWithRules.keySet().iterator();
                    while (iter.hasNext()) {
                        key = (RuleKey)iter.next();
                        if (!key.fInstall.equals(install)) continue;
                        list.add(key);
                    }
                    int i = 0;
                    while (i < list.size()) {
                        fgClasspathEntriesWithRules.remove(list.get(i));
                        ++i;
                    }
                }
            }
        };
        JavaRuntime.addVMInstallChangedListener(listener);
        DEBUG_JRE_CONTAINER = LaunchingPlugin.DEBUG && "true".equals(Platform.getDebugOption((String)"org.eclipse.jdt.launching/debug/classpath/jreContainer"));
    }

    private static IClasspathEntry[] getClasspathEntries(IVMInstall vm, IPath containerPath, IJavaProject project) {
        String id = JavaRuntime.getExecutionEnvironmentId(containerPath);
        IClasspathEntry[] entries = null;
        if (id == null) {
            entries = (IClasspathEntry[])fgClasspathEntries.get(vm);
            if (entries == null) {
                entries = JREContainer.computeClasspathEntries(vm, project, id);
                fgClasspathEntries.put(vm, entries);
            }
        } else {
            if (DEBUG_JRE_CONTAINER) {
                System.out.println("\tEE:\t" + id);
            }
            entries = JREContainer.computeClasspathEntries(vm, project, id);
        }
        return entries;
    }

    private static IClasspathEntry[] computeClasspathEntries(IVMInstall vm, IJavaProject project, String environmentId) {
        RuleEntry entry;
        IExecutionEnvironment environment;
        LibraryLocation[] libs = vm.getLibraryLocations();
        boolean overrideJavaDoc = false;
        if (libs == null) {
            libs = JavaRuntime.getLibraryLocations(vm);
            overrideJavaDoc = true;
        }
        IAccessRule[][] rules = null;
        if (environmentId != null && (environment = JavaRuntime.getExecutionEnvironmentsManager().getEnvironment(environmentId)) != null) {
            rules = environment.getAccessRules(vm, libs, project);
        }
        RuleKey key = null;
        if (vm != null && rules != null && environmentId != null && (entry = (RuleEntry)fgClasspathEntriesWithRules.get(key = new RuleKey(vm, environmentId))) != null && entry.equals(rules)) {
            return entry.getClasspathEntries();
        }
        ArrayList<IClasspathEntry> entries = new ArrayList<IClasspathEntry>(libs.length);
        int i = 0;
        while (i < libs.length) {
            if (!libs[i].getSystemLibraryPath().isEmpty()) {
                IPath rootPath;
                IPath sourcePath = libs[i].getSystemLibrarySourcePath();
                if (sourcePath.isEmpty()) {
                    sourcePath = null;
                }
                if ((rootPath = libs[i].getPackageRootPath()).isEmpty()) {
                    rootPath = null;
                }
                URL javadocLocation = libs[i].getJavadocLocation();
                if (overrideJavaDoc && javadocLocation == null) {
                    javadocLocation = vm.getJavadocLocation();
                }
                IClasspathAttribute[] attributes = null;
                attributes = javadocLocation == null ? new IClasspathAttribute[]{} : new IClasspathAttribute[]{JavaCore.newClasspathAttribute((String)"javadoc_location", (String)javadocLocation.toExternalForm())};
                IAccessRule[] libRules = null;
                libRules = rules != null ? rules[i] : EMPTY_RULES;
                entries.add(JavaCore.newLibraryEntry((IPath)libs[i].getSystemLibraryPath(), (IPath)sourcePath, (IPath)rootPath, (IAccessRule[])libRules, (IClasspathAttribute[])attributes, (boolean)false));
            }
            ++i;
        }
        IClasspathEntry[] cpEntries = entries.toArray(new IClasspathEntry[entries.size()]);
        if (key != null && rules != null) {
            fgClasspathEntriesWithRules.put(key, new RuleEntry(rules, cpEntries));
        }
        return cpEntries;
    }

    public JREContainer(IVMInstall vm, IPath path, IJavaProject project) {
        this.fVMInstall = vm;
        this.fPath = path;
        this.fProject = project;
    }

    public IClasspathEntry[] getClasspathEntries() {
        if (DEBUG_JRE_CONTAINER) {
            System.out.println("<JRE_CONTAINER> getClasspathEntries() " + this.toString());
            System.out.println("\tJRE:\t" + this.fVMInstall.getName());
            System.out.println("\tPath:\t" + this.getPath().toString());
            System.out.println("\tProj:\t" + this.fProject.getProject().getName());
        }
        IClasspathEntry[] entries = JREContainer.getClasspathEntries(this.fVMInstall, this.getPath(), this.fProject);
        if (DEBUG_JRE_CONTAINER) {
            System.out.println("\tResolved " + entries.length + " entries:");
        }
        return entries;
    }

    public String getDescription() {
        String environmentId = JavaRuntime.getExecutionEnvironmentId(this.getPath());
        String tag = null;
        tag = environmentId == null ? this.fVMInstall.getName() : environmentId;
        return MessageFormat.format((String)LaunchingMessages.JREContainer_JRE_System_Library_1, (Object[])new String[]{tag});
    }

    public int getKind() {
        return 3;
    }

    public IPath getPath() {
        return this.fPath;
    }

    static class RuleEntry {
        private IAccessRule[][] fRules = null;
        private IClasspathEntry[] fEntries = null;

        public RuleEntry(IAccessRule[][] rules, IClasspathEntry[] entries) {
            this.fRules = rules;
            this.fEntries = entries;
        }

        public IClasspathEntry[] getClasspathEntries() {
            return this.fEntries;
        }

        public boolean equals(Object obj) {
            IAccessRule[][] rules = null;
            if (obj instanceof RuleEntry) {
                rules = ((RuleEntry)obj).fRules;
            }
            if (obj instanceof IAccessRule[][]) {
                rules = (IAccessRule[][])obj;
            }
            if (rules != null) {
                if (this.fRules == rules) {
                    return true;
                }
                if (this.fRules.length == rules.length) {
                    boolean equal = true;
                    IAccessRule[] comparerule = null;
                    int i = 0;
                    while (i < this.fRules.length) {
                        IAccessRule[] originalrule = this.fRules[i];
                        comparerule = rules[i];
                        if (!(equal &= originalrule == comparerule)) {
                            if (originalrule.length == comparerule.length) {
                                int j = 0;
                                while (j < originalrule.length) {
                                    if (!originalrule[j].equals(comparerule[j])) {
                                        return false;
                                    }
                                    ++j;
                                }
                                return true;
                            }
                            return false;
                        }
                        ++i;
                    }
                    return equal;
                }
            }
            return false;
        }
    }

    static class RuleKey {
        private String fEnvironmentId = null;
        private IVMInstall fInstall = null;

        public RuleKey(IVMInstall install, String environmentId) {
            this.fInstall = install;
            this.fEnvironmentId = environmentId;
        }

        public boolean equals(Object obj) {
            if (obj instanceof RuleKey) {
                RuleKey key = (RuleKey)obj;
                return this.fEnvironmentId.equals(key.fEnvironmentId) && this.fInstall.equals(key.fInstall);
            }
            return false;
        }

        public int hashCode() {
            return this.fEnvironmentId.hashCode() + this.fInstall.hashCode();
        }
    }
}

