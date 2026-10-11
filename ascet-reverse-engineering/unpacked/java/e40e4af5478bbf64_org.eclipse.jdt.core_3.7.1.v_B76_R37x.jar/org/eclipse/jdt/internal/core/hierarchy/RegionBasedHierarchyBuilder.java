/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.jdt.internal.core.hierarchy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyBuilder;
import org.eclipse.jdt.internal.core.hierarchy.RegionBasedTypeHierarchy;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;

public class RegionBasedHierarchyBuilder
extends HierarchyBuilder {
    public RegionBasedHierarchyBuilder(TypeHierarchy hierarchy) throws JavaModelException {
        super(hierarchy);
    }

    public void build(boolean computeSubtypes) {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        try {
            manager.cacheZipFiles(this);
            if (this.hierarchy.focusType == null || computeSubtypes) {
                SubProgressMonitor typeInRegionMonitor = this.hierarchy.progressMonitor == null ? null : new SubProgressMonitor(this.hierarchy.progressMonitor, 30);
                HashMap allOpenablesInRegion = this.determineOpenablesInRegion((IProgressMonitor)typeInRegionMonitor);
                this.hierarchy.initialize(allOpenablesInRegion.size());
                SubProgressMonitor buildMonitor = this.hierarchy.progressMonitor == null ? null : new SubProgressMonitor(this.hierarchy.progressMonitor, 70);
                this.createTypeHierarchyBasedOnRegion(allOpenablesInRegion, (IProgressMonitor)buildMonitor);
                ((RegionBasedTypeHierarchy)this.hierarchy).pruneDeadBranches();
            } else {
                this.hierarchy.initialize(1);
                this.buildSupertypes();
            }
        }
        finally {
            manager.flushZipFiles(this);
        }
    }

    private void createTypeHierarchyBasedOnRegion(HashMap allOpenablesInRegion, IProgressMonitor monitor) {
        try {
            int size = allOpenablesInRegion.size();
            if (monitor != null) {
                monitor.beginTask("", size * 2);
            }
            this.infoToHandle = new HashMap(size);
            Iterator javaProjects = allOpenablesInRegion.entrySet().iterator();
            while (javaProjects.hasNext()) {
                Map.Entry entry = javaProjects.next();
                JavaProject project = (JavaProject)entry.getKey();
                ArrayList allOpenables = (ArrayList)entry.getValue();
                Openable[] openables = new Openable[allOpenables.size()];
                allOpenables.toArray(openables);
                try {
                    SearchableEnvironment searchableEnvironment = project.newSearchableNameEnvironment(this.hierarchy.workingCopies);
                    this.nameLookup = searchableEnvironment.nameLookup;
                    this.hierarchyResolver.resolve(openables, null, monitor);
                }
                catch (JavaModelException javaModelException) {}
            }
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    private HashMap determineOpenablesInRegion(IProgressMonitor monitor) {
        try {
            HashMap allOpenables = new HashMap();
            IJavaElement[] roots = ((RegionBasedTypeHierarchy)this.hierarchy).region.getElements();
            int length = roots.length;
            if (monitor != null) {
                monitor.beginTask("", length);
            }
            int i = 0;
            while (i < length) {
                IJavaElement root = roots[i];
                IJavaProject javaProject = root.getJavaProject();
                ArrayList<IJavaElement> openables = (ArrayList<IJavaElement>)allOpenables.get(javaProject);
                if (openables == null) {
                    openables = new ArrayList<IJavaElement>();
                    allOpenables.put(javaProject, openables);
                }
                switch (root.getElementType()) {
                    case 2: {
                        this.injectAllOpenablesForJavaProject((IJavaProject)root, openables);
                        break;
                    }
                    case 3: {
                        this.injectAllOpenablesForPackageFragmentRoot((IPackageFragmentRoot)root, openables);
                        break;
                    }
                    case 4: {
                        this.injectAllOpenablesForPackageFragment((IPackageFragment)root, openables);
                        break;
                    }
                    case 5: 
                    case 6: {
                        openables.add(root);
                        break;
                    }
                    case 7: {
                        IType type = (IType)root;
                        if (type.isBinary()) {
                            openables.add(type.getClassFile());
                            break;
                        }
                        openables.add(type.getCompilationUnit());
                        break;
                    }
                }
                this.worked(monitor, 1);
                ++i;
            }
            HashMap hashMap = allOpenables;
            return hashMap;
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    private void injectAllOpenablesForJavaProject(IJavaProject project, ArrayList openables) {
        try {
            IPackageFragmentRoot[] devPathRoots = ((JavaProject)project).getPackageFragmentRoots();
            if (devPathRoots == null) {
                return;
            }
            int j = 0;
            while (j < devPathRoots.length) {
                IPackageFragmentRoot root = devPathRoots[j];
                this.injectAllOpenablesForPackageFragmentRoot(root, openables);
                ++j;
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    private void injectAllOpenablesForPackageFragment(IPackageFragment packFrag, ArrayList openables) {
        try {
            IPackageFragmentRoot root = (IPackageFragmentRoot)packFrag.getParent();
            int kind = root.getKind();
            if (kind != 0) {
                boolean isSourcePackageFragment;
                boolean bl = isSourcePackageFragment = kind == 1;
                if (isSourcePackageFragment) {
                    ICompilationUnit[] cus = packFrag.getCompilationUnits();
                    int i = 0;
                    int length = cus.length;
                    while (i < length) {
                        openables.add(cus[i]);
                        ++i;
                    }
                } else {
                    IClassFile[] classFiles = packFrag.getClassFiles();
                    int i = 0;
                    int length = classFiles.length;
                    while (i < length) {
                        openables.add(classFiles[i]);
                        ++i;
                    }
                }
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    private void injectAllOpenablesForPackageFragmentRoot(IPackageFragmentRoot root, ArrayList openables) {
        try {
            IJavaElement[] packFrags = root.getChildren();
            int k = 0;
            while (k < packFrags.length) {
                IPackageFragment packFrag = (IPackageFragment)packFrags[k];
                this.injectAllOpenablesForPackageFragment(packFrag, openables);
                ++k;
            }
        }
        catch (JavaModelException javaModelException) {
            return;
        }
    }
}

