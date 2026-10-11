/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IClasspathAttribute
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.JavadocLocationManager;
import org.eclipse.pde.internal.core.PDECore;

public class PDEClasspathContainer {
    private static HashMap ACCESSIBLE_RULES = new HashMap();
    private static HashMap DISCOURAGED_RULES = new HashMap();
    private static final IAccessRule EXCLUDE_ALL_RULE = JavaCore.newAccessRule((IPath)new Path("**/*"), (int)257);

    protected void addProjectEntry(IProject project, Rule[] rules, ArrayList entries) throws CoreException {
        if (project.hasNature("org.eclipse.jdt.core.javanature")) {
            IClasspathEntry entry = null;
            if (rules != null) {
                IAccessRule[] accessRules = PDEClasspathContainer.getAccessRules(rules);
                entry = JavaCore.newProjectEntry((IPath)project.getFullPath(), (IAccessRule[])accessRules, (boolean)true, (IClasspathAttribute[])new IClasspathAttribute[0], (boolean)false);
            } else {
                entry = JavaCore.newProjectEntry((IPath)project.getFullPath());
            }
            if (!entries.contains(entry)) {
                entries.add(entry);
            }
        }
    }

    public static IClasspathEntry[] getExternalEntries(IPluginModelBase model) {
        ArrayList entries = new ArrayList();
        PDEClasspathContainer.addExternalPlugin(model, new Rule[0], entries);
        return entries.toArray(new IClasspathEntry[entries.size()]);
    }

    protected static void addExternalPlugin(IPluginModelBase model, Rule[] rules, ArrayList entries) {
        if (new File(model.getInstallLocation()).isFile()) {
            IPath srcPath = ClasspathUtilCore.getSourceAnnotation(model, ".");
            if (srcPath == null) {
                srcPath = new Path(model.getInstallLocation());
            }
            PDEClasspathContainer.addLibraryEntry((IPath)new Path(model.getInstallLocation()), srcPath, rules, PDEClasspathContainer.getClasspathAttributes(model), entries);
            File[] extractedLibraries = PDECore.getDefault().getModelManager().getExternalModelManager().getExtractedLibraries(model);
            int i = 0;
            while (i < extractedLibraries.length) {
                Path path = new Path(extractedLibraries[i].getAbsolutePath());
                PDEClasspathContainer.addLibraryEntry((IPath)path, (IPath)path, rules, PDEClasspathContainer.getClasspathAttributes(model), entries);
                ++i;
            }
        } else {
            IPluginLibrary[] libraries = model.getPluginBase().getLibraries();
            int i = 0;
            while (i < libraries.length) {
                if (!"resource".equals(libraries[i].getType())) {
                    String name;
                    String expandedName;
                    model = (IPluginModelBase)libraries[i].getModel();
                    IPath path = ClasspathUtilCore.getPath(model, expandedName = ClasspathUtilCore.expandLibraryName(name = libraries[i].getName()));
                    if (path == null && !model.isFragmentModel() && ClasspathUtilCore.containsVariables(name) && (model = PDEClasspathContainer.resolveLibraryInFragments(model, expandedName)) != null && model.isEnabled()) {
                        path = ClasspathUtilCore.getPath(model, expandedName);
                    }
                    if (path != null) {
                        PDEClasspathContainer.addLibraryEntry(path, ClasspathUtilCore.getSourceAnnotation(model, expandedName), rules, PDEClasspathContainer.getClasspathAttributes(model), entries);
                    }
                }
                ++i;
            }
        }
    }

    protected static void addLibraryEntry(IPath path, IPath srcPath, Rule[] rules, IClasspathAttribute[] attributes, ArrayList entries) {
        IClasspathEntry entry = null;
        entry = rules != null ? JavaCore.newLibraryEntry((IPath)path, (IPath)srcPath, null, (IAccessRule[])PDEClasspathContainer.getAccessRules(rules), (IClasspathAttribute[])attributes, (boolean)false) : JavaCore.newLibraryEntry((IPath)path, (IPath)srcPath, null, (IAccessRule[])new IAccessRule[0], (IClasspathAttribute[])attributes, (boolean)false);
        if (!entries.contains(entry)) {
            entries.add(entry);
        }
    }

    protected static IAccessRule[] getAccessRules(Rule[] rules) {
        IAccessRule[] accessRules = new IAccessRule[rules.length + 1];
        int i = 0;
        while (i < rules.length) {
            Rule rule = rules[i];
            accessRules[i] = rule.discouraged ? PDEClasspathContainer.getDiscouragedRule(rule.path) : PDEClasspathContainer.getAccessibleRule(rule.path);
            ++i;
        }
        accessRules[rules.length] = EXCLUDE_ALL_RULE;
        return accessRules;
    }

    private static synchronized IAccessRule getAccessibleRule(IPath path) {
        IAccessRule rule = (IAccessRule)ACCESSIBLE_RULES.get(path);
        if (rule == null) {
            rule = JavaCore.newAccessRule((IPath)path, (int)0);
            ACCESSIBLE_RULES.put(path, rule);
        }
        return rule;
    }

    private static IClasspathAttribute[] getClasspathAttributes(IPluginModelBase model) {
        JavadocLocationManager manager = PDECore.getDefault().getJavadocLocationManager();
        String location = manager.getJavadocLocation(model);
        if (location == null) {
            return new IClasspathAttribute[0];
        }
        return new IClasspathAttribute[]{JavaCore.newClasspathAttribute((String)"javadoc_location", (String)location)};
    }

    private static synchronized IAccessRule getDiscouragedRule(IPath path) {
        IAccessRule rule = (IAccessRule)DISCOURAGED_RULES.get(path);
        if (rule == null) {
            rule = JavaCore.newAccessRule((IPath)path, (int)2);
            DISCOURAGED_RULES.put(path, rule);
        }
        return rule;
    }

    protected static IPluginModelBase resolveLibraryInFragments(IPluginModelBase model, String libraryName) {
        BundleDescription desc = model.getBundleDescription();
        if (desc != null) {
            BundleDescription[] fragments = desc.getFragments();
            int i = 0;
            while (i < fragments.length) {
                if (new File(fragments[i].getLocation(), libraryName).exists()) {
                    return PluginRegistry.findModel(fragments[i]);
                }
                ++i;
            }
        }
        return null;
    }

    public class Rule {
        IPath path;
        boolean discouraged;

        public boolean equals(Object other) {
            if (!(other instanceof Rule)) {
                return false;
            }
            return this.discouraged == ((Rule)other).discouraged && this.path.equals((Object)((Rule)other).path);
        }

        public String toString() {
            return this.discouraged ? String.valueOf(this.path.toString()) + " [discouraged]" : this.path.toString();
        }
    }
}

