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
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchScope;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;
import org.eclipse.jdt.internal.core.util.Util;

public class TypeParameterPattern
extends JavaSearchPattern {
    protected boolean findDeclarations;
    protected boolean findReferences;
    protected char[] name;
    protected ITypeParameter typeParameter;
    protected char[] declaringMemberName;
    protected char[] methodDeclaringClassName;
    protected char[][] methodArgumentTypes;

    public TypeParameterPattern(boolean findDeclarations, boolean findReferences, ITypeParameter typeParameter, int matchRule) {
        super(1024, matchRule);
        this.findDeclarations = findDeclarations;
        this.findReferences = findReferences;
        this.typeParameter = typeParameter;
        this.name = typeParameter.getElementName().toCharArray();
        IMember member = typeParameter.getDeclaringMember();
        this.declaringMemberName = member.getElementName().toCharArray();
        if (member instanceof IMethod) {
            IMethod method = (IMethod)member;
            this.methodDeclaringClassName = method.getParent().getElementName().toCharArray();
            String[] parameters = method.getParameterTypes();
            int length = parameters.length;
            this.methodArgumentTypes = new char[length][];
            int i = 0;
            while (i < length) {
                this.methodArgumentTypes[i] = Signature.toCharArray(parameters[i].toCharArray());
                ++i;
            }
        }
    }

    public void findIndexMatches(Index index, IndexQueryRequestor requestor, SearchParticipant participant, IJavaSearchScope scope, IProgressMonitor progressMonitor) {
        JavaSearchScope javaSearchScope;
        AccessRuleSet access;
        String documentPath;
        String relativePath;
        IPackageFragmentRoot root = (IPackageFragmentRoot)this.typeParameter.getAncestor(3);
        if (root.isArchive()) {
            IType type = (IType)this.typeParameter.getAncestor(7);
            relativePath = String.valueOf(type.getFullyQualifiedName('$').replace('.', '/')) + ".class";
            documentPath = root.getPath() + "|" + relativePath;
        } else {
            IPath path = this.typeParameter.getPath();
            documentPath = path.toString();
            relativePath = Util.relativePath(path, 1);
        }
        if (scope instanceof JavaSearchScope ? (access = (javaSearchScope = (JavaSearchScope)scope).getAccessRuleSet(relativePath, index.containerPath)) != JavaSearchScope.NOT_ENCLOSED && !requestor.acceptIndexMatch(documentPath, this, participant, access) : scope.encloses(documentPath) && !requestor.acceptIndexMatch(documentPath, this, participant, null)) {
            throw new OperationCanceledException();
        }
    }

    protected StringBuffer print(StringBuffer output) {
        if (this.findDeclarations) {
            output.append(this.findReferences ? "TypeParamCombinedPattern: " : "TypeParamDeclarationPattern: ");
        } else {
            output.append("TypeParamReferencePattern: ");
        }
        output.append(this.typeParameter.toString());
        return super.print(output);
    }
}

