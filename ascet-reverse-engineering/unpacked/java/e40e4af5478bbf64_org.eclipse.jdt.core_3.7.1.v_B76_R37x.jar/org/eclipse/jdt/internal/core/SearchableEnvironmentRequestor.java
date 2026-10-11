/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.ISearchRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaElementRequestor;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;

class SearchableEnvironmentRequestor
extends JavaElementRequestor {
    protected ISearchRequestor requestor;
    protected ICompilationUnit unitToSkip;
    protected IJavaProject project;
    protected NameLookup nameLookup;
    protected boolean checkAccessRestrictions;

    public SearchableEnvironmentRequestor(ISearchRequestor requestor) {
        this.requestor = requestor;
        this.unitToSkip = null;
        this.project = null;
        this.nameLookup = null;
        this.checkAccessRestrictions = false;
    }

    public SearchableEnvironmentRequestor(ISearchRequestor requestor, ICompilationUnit unitToSkip, IJavaProject project, NameLookup nameLookup) {
        this.requestor = requestor;
        this.unitToSkip = unitToSkip;
        this.project = project;
        this.nameLookup = nameLookup;
        this.checkAccessRestrictions = !"ignore".equals(project.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) || !"ignore".equals(project.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true));
    }

    public void acceptInitializer(IInitializer initializer) {
    }

    public void acceptPackageFragment(IPackageFragment packageFragment) {
        this.requestor.acceptPackage(packageFragment.getElementName().toCharArray());
    }

    public void acceptType(IType type) {
        try {
            AccessRuleSet accessRuleSet;
            PackageFragmentRoot root;
            ClasspathEntry entry;
            if (this.unitToSkip != null && this.unitToSkip.equals(type.getCompilationUnit())) {
                return;
            }
            char[] packageName = type.getPackageFragment().getElementName().toCharArray();
            boolean isBinary = type instanceof BinaryType;
            AccessRestriction accessRestriction = null;
            if (this.checkAccessRestrictions && (isBinary || !type.getJavaProject().equals(this.project)) && (entry = (ClasspathEntry)this.nameLookup.rootToResolvedEntries.get(root = (PackageFragmentRoot)type.getAncestor(3))) != null && (accessRuleSet = entry.getAccessRuleSet()) != null) {
                char[][] packageChars = CharOperation.splitOn('.', packageName);
                char[] fileWithoutExtension = type.getElementName().toCharArray();
                accessRestriction = accessRuleSet.getViolatedRestriction(CharOperation.concatWith(packageChars, fileWithoutExtension, '/'));
            }
            this.requestor.acceptType(packageName, type.getElementName().toCharArray(), null, type.getFlags(), accessRestriction);
        }
        catch (JavaModelException javaModelException) {}
    }
}

