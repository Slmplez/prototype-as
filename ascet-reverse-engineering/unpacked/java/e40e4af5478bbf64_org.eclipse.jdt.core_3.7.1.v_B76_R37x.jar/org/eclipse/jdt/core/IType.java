/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import java.io.InputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.IWorkingCopy;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;

public interface IType
extends IMember,
IAnnotatable {
    public void codeComplete(char[] var1, int var2, int var3, char[][] var4, char[][] var5, int[] var6, boolean var7, ICompletionRequestor var8) throws JavaModelException;

    public void codeComplete(char[] var1, int var2, int var3, char[][] var4, char[][] var5, int[] var6, boolean var7, ICompletionRequestor var8, WorkingCopyOwner var9) throws JavaModelException;

    public void codeComplete(char[] var1, int var2, int var3, char[][] var4, char[][] var5, int[] var6, boolean var7, CompletionRequestor var8) throws JavaModelException;

    public void codeComplete(char[] var1, int var2, int var3, char[][] var4, char[][] var5, int[] var6, boolean var7, CompletionRequestor var8, IProgressMonitor var9) throws JavaModelException;

    public void codeComplete(char[] var1, int var2, int var3, char[][] var4, char[][] var5, int[] var6, boolean var7, CompletionRequestor var8, WorkingCopyOwner var9) throws JavaModelException;

    public void codeComplete(char[] var1, int var2, int var3, char[][] var4, char[][] var5, int[] var6, boolean var7, CompletionRequestor var8, WorkingCopyOwner var9, IProgressMonitor var10) throws JavaModelException;

    public IField createField(String var1, IJavaElement var2, boolean var3, IProgressMonitor var4) throws JavaModelException;

    public IInitializer createInitializer(String var1, IJavaElement var2, IProgressMonitor var3) throws JavaModelException;

    public IMethod createMethod(String var1, IJavaElement var2, boolean var3, IProgressMonitor var4) throws JavaModelException;

    public IType createType(String var1, IJavaElement var2, boolean var3, IProgressMonitor var4) throws JavaModelException;

    public IMethod[] findMethods(IMethod var1);

    public IJavaElement[] getChildrenForCategory(String var1) throws JavaModelException;

    public String getElementName();

    public IField getField(String var1);

    public IField[] getFields() throws JavaModelException;

    public String getFullyQualifiedName();

    public String getFullyQualifiedName(char var1);

    public String getFullyQualifiedParameterizedName() throws JavaModelException;

    public IInitializer getInitializer(int var1);

    public IInitializer[] getInitializers() throws JavaModelException;

    public String getKey();

    public IMethod getMethod(String var1, String[] var2);

    public IMethod[] getMethods() throws JavaModelException;

    public IPackageFragment getPackageFragment();

    public String getSuperclassName() throws JavaModelException;

    public String getSuperclassTypeSignature() throws JavaModelException;

    public String[] getSuperInterfaceTypeSignatures() throws JavaModelException;

    public String[] getSuperInterfaceNames() throws JavaModelException;

    public String[] getTypeParameterSignatures() throws JavaModelException;

    public ITypeParameter[] getTypeParameters() throws JavaModelException;

    public IType getType(String var1);

    public ITypeParameter getTypeParameter(String var1);

    public String getTypeQualifiedName();

    public String getTypeQualifiedName(char var1);

    public IType[] getTypes() throws JavaModelException;

    public boolean isAnonymous() throws JavaModelException;

    public boolean isClass() throws JavaModelException;

    public boolean isEnum() throws JavaModelException;

    public boolean isInterface() throws JavaModelException;

    public boolean isAnnotation() throws JavaModelException;

    public boolean isLocal() throws JavaModelException;

    public boolean isMember() throws JavaModelException;

    public boolean isResolved();

    public ITypeHierarchy loadTypeHierachy(InputStream var1, IProgressMonitor var2) throws JavaModelException;

    public ITypeHierarchy newSupertypeHierarchy(IProgressMonitor var1) throws JavaModelException;

    public ITypeHierarchy newSupertypeHierarchy(ICompilationUnit[] var1, IProgressMonitor var2) throws JavaModelException;

    public ITypeHierarchy newSupertypeHierarchy(IWorkingCopy[] var1, IProgressMonitor var2) throws JavaModelException;

    public ITypeHierarchy newSupertypeHierarchy(WorkingCopyOwner var1, IProgressMonitor var2) throws JavaModelException;

    public ITypeHierarchy newTypeHierarchy(IJavaProject var1, IProgressMonitor var2) throws JavaModelException;

    public ITypeHierarchy newTypeHierarchy(IJavaProject var1, WorkingCopyOwner var2, IProgressMonitor var3) throws JavaModelException;

    public ITypeHierarchy newTypeHierarchy(IProgressMonitor var1) throws JavaModelException;

    public ITypeHierarchy newTypeHierarchy(ICompilationUnit[] var1, IProgressMonitor var2) throws JavaModelException;

    public ITypeHierarchy newTypeHierarchy(IWorkingCopy[] var1, IProgressMonitor var2) throws JavaModelException;

    public ITypeHierarchy newTypeHierarchy(WorkingCopyOwner var1, IProgressMonitor var2) throws JavaModelException;

    public String[][] resolveType(String var1) throws JavaModelException;

    public String[][] resolveType(String var1, WorkingCopyOwner var2) throws JavaModelException;
}

