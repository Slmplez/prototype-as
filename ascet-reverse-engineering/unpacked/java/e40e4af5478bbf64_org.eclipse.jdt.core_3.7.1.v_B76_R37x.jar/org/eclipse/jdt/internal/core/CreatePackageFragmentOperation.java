/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CreatePackageFragmentOperation
extends JavaModelOperation {
    protected String[] pkgName;

    public CreatePackageFragmentOperation(IPackageFragmentRoot parentElement, String packageName, boolean force) {
        super(null, new IJavaElement[]{parentElement}, force);
        this.pkgName = packageName == null ? null : Util.getTrimmedSimpleNames(packageName);
    }

    protected void executeOperation() throws JavaModelException {
        try {
            JavaElementDelta delta = null;
            PackageFragmentRoot root = (PackageFragmentRoot)this.getParentElement();
            this.beginTask(Messages.operation_createPackageFragmentProgress, this.pkgName.length);
            IContainer parentFolder = (IContainer)root.resource();
            String[] sideEffectPackageName = CharOperation.NO_STRINGS;
            ArrayList<PackageFragment> results = new ArrayList<PackageFragment>(this.pkgName.length);
            char[][] inclusionPatterns = root.fullInclusionPatternChars();
            char[][] exclusionPatterns = root.fullExclusionPatternChars();
            int i = 0;
            while (i < this.pkgName.length) {
                String subFolderName = this.pkgName[i];
                sideEffectPackageName = Util.arrayConcat(sideEffectPackageName, subFolderName);
                IResource subFolder = parentFolder.findMember(subFolderName);
                if (subFolder == null) {
                    this.createFolder(parentFolder, subFolderName, this.force);
                    parentFolder = parentFolder.getFolder((IPath)new Path(subFolderName));
                    PackageFragment addedFrag = root.getPackageFragment(sideEffectPackageName);
                    if (!Util.isExcluded((IResource)parentFolder, inclusionPatterns, exclusionPatterns)) {
                        if (delta == null) {
                            delta = this.newJavaElementDelta();
                        }
                        delta.added(addedFrag);
                    }
                    results.add(addedFrag);
                } else {
                    parentFolder = (IContainer)subFolder;
                }
                this.worked(1);
                ++i;
            }
            if (results.size() > 0) {
                this.resultElements = new IJavaElement[results.size()];
                results.toArray(this.resultElements);
                if (delta != null) {
                    this.addDelta(delta);
                }
            }
        }
        finally {
            this.done();
        }
    }

    protected ISchedulingRule getSchedulingRule() {
        if (this.pkgName.length == 0) {
            return null;
        }
        IResource parentResource = ((JavaElement)this.getParentElement()).resource();
        IFolder resource = ((IContainer)parentResource).getFolder((IPath)new Path(this.pkgName[0]));
        return resource.getWorkspace().getRuleFactory().createRule((IResource)resource);
    }

    public IJavaModelStatus verify() {
        IJavaElement parentElement = this.getParentElement();
        if (parentElement == null) {
            return new JavaModelStatus(968);
        }
        String packageName = this.pkgName == null ? null : Util.concatWith(this.pkgName, '.');
        IJavaProject project = parentElement.getJavaProject();
        if (this.pkgName == null || this.pkgName.length > 0 && JavaConventions.validatePackageName(packageName, project.getOption("org.eclipse.jdt.core.compiler.source", true), project.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() == 4) {
            return new JavaModelStatus(983, packageName);
        }
        IJavaElement root = this.getParentElement();
        if (root.isReadOnly()) {
            return new JavaModelStatus(976, root);
        }
        IContainer parentFolder = (IContainer)((JavaElement)root).resource();
        int i = 0;
        while (i < this.pkgName.length) {
            IResource subFolder = parentFolder.findMember(this.pkgName[i]);
            if (subFolder != null) {
                if (subFolder.getType() != 2) {
                    return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, subFolder.getFullPath().toString()));
                }
                parentFolder = (IContainer)subFolder;
            }
            ++i;
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

