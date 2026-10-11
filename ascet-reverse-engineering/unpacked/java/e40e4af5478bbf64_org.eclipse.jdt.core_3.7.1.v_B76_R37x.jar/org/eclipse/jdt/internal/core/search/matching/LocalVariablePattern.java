/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchScope;
import org.eclipse.jdt.internal.core.search.matching.VariablePattern;
import org.eclipse.jdt.internal.core.util.Util;

public class LocalVariablePattern
extends VariablePattern {
    LocalVariable localVariable;

    public LocalVariablePattern(LocalVariable localVariable, int limitTo, int matchRule) {
        super(512, localVariable.getElementName().toCharArray(), limitTo, matchRule);
        this.localVariable = localVariable;
    }

    public void findIndexMatches(Index index, IndexQueryRequestor requestor, SearchParticipant participant, IJavaSearchScope scope, IProgressMonitor progressMonitor) {
        JavaSearchScope javaSearchScope;
        AccessRuleSet access;
        String documentPath;
        String relativePath;
        IPackageFragmentRoot root = (IPackageFragmentRoot)this.localVariable.getAncestor(3);
        if (root.isArchive()) {
            IType type = (IType)this.localVariable.getAncestor(7);
            relativePath = String.valueOf(type.getFullyQualifiedName('$').replace('.', '/')) + ".class";
            documentPath = root.getPath() + "|" + relativePath;
        } else {
            IPath path = this.localVariable.getPath();
            documentPath = path.toString();
            relativePath = Util.relativePath(path, 1);
        }
        if (scope instanceof JavaSearchScope ? (access = (javaSearchScope = (JavaSearchScope)scope).getAccessRuleSet(relativePath, index.containerPath)) != JavaSearchScope.NOT_ENCLOSED && !requestor.acceptIndexMatch(documentPath, this, participant, access) : scope.encloses(documentPath) && !requestor.acceptIndexMatch(documentPath, this, participant, null)) {
            throw new OperationCanceledException();
        }
    }

    protected StringBuffer print(StringBuffer output) {
        if (this.findDeclarations) {
            output.append(this.findReferences ? "LocalVarCombinedPattern: " : "LocalVarDeclarationPattern: ");
        } else {
            output.append("LocalVarReferencePattern: ");
        }
        output.append(this.localVariable.toStringWithAncestors());
        return super.print(output);
    }
}

