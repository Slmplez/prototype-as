/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchConstants;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.internal.codeassist.ISearchRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementRequestor;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.SearchableEnvironmentRequestor;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessConstructorRequestor;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessTypeRequestor;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.util.Util;

public class SearchableEnvironment
implements INameEnvironment,
IJavaSearchConstants {
    public NameLookup nameLookup;
    protected ICompilationUnit unitToSkip;
    protected org.eclipse.jdt.core.ICompilationUnit[] workingCopies;
    protected WorkingCopyOwner owner;
    protected JavaProject project;
    protected IJavaSearchScope searchScope;
    protected boolean checkAccessRestrictions;

    public SearchableEnvironment(JavaProject project, org.eclipse.jdt.core.ICompilationUnit[] workingCopies) throws JavaModelException {
        this.project = project;
        this.checkAccessRestrictions = !"ignore".equals(project.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) || !"ignore".equals(project.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true));
        this.workingCopies = workingCopies;
        this.nameLookup = project.newNameLookup(workingCopies);
    }

    public SearchableEnvironment(JavaProject project, WorkingCopyOwner owner) throws JavaModelException {
        this(project, owner == null ? null : JavaModelManager.getJavaModelManager().getWorkingCopies(owner, true));
        this.owner = owner;
    }

    private static int convertSearchFilterToModelFilter(int searchFilter) {
        switch (searchFilter) {
            case 5: {
                return 2;
            }
            case 6: {
                return 4;
            }
            case 7: {
                return 8;
            }
            case 8: {
                return 16;
            }
            case 9: {
                return 10;
            }
            case 10: {
                return 6;
            }
        }
        return 30;
    }

    protected NameEnvironmentAnswer find(String typeName, String packageName) {
        block11: {
            String source;
            if (packageName == null) {
                packageName = "";
            }
            if (this.owner != null && (source = this.owner.findSource(typeName, packageName)) != null) {
                BasicCompilationUnit cu = new BasicCompilationUnit(source.toCharArray(), CharOperation.splitOn('.', packageName.toCharArray()), String.valueOf(typeName) + Util.defaultJavaExtension());
                return new NameEnvironmentAnswer(cu, null);
            }
            NameLookup.Answer answer = this.nameLookup.findType(typeName, packageName, false, 30, this.checkAccessRestrictions);
            if (answer != null) {
                if (answer.type instanceof BinaryType) {
                    try {
                        return new NameEnvironmentAnswer((IBinaryType)((BinaryType)answer.type).getElementInfo(), answer.restriction);
                    }
                    catch (JavaModelException javaModelException) {
                        break block11;
                    }
                }
                try {
                    SourceTypeElementInfo sourceType;
                    ISourceType topLevelType = sourceType = (SourceTypeElementInfo)((SourceType)answer.type).getElementInfo();
                    while (topLevelType.getEnclosingType() != null) {
                        topLevelType = topLevelType.getEnclosingType();
                    }
                    IType[] types = sourceType.getHandle().getCompilationUnit().getTypes();
                    ISourceType[] sourceTypes = new ISourceType[types.length];
                    sourceTypes[0] = sourceType;
                    int length = types.length;
                    int i = 0;
                    int index = 1;
                    while (i < length) {
                        ISourceType otherType = (ISourceType)((JavaElement)((Object)types[i])).getElementInfo();
                        if (!otherType.equals(topLevelType) && index < length) {
                            sourceTypes[index++] = otherType;
                        }
                        ++i;
                    }
                    return new NameEnvironmentAnswer(sourceTypes, answer.restriction);
                }
                catch (JavaModelException jme) {
                    if (!jme.isDoesNotExist() || !String.valueOf(TypeConstants.PACKAGE_INFO_NAME).equals(typeName)) break block11;
                    return new NameEnvironmentAnswer((ICompilationUnit)((Object)answer.type.getParent()), answer.restriction);
                }
            }
        }
        return null;
    }

    public void findPackages(char[] prefix, ISearchRequestor requestor) {
        this.nameLookup.seekPackageFragments(new String(prefix), true, new SearchableEnvironmentRequestor(requestor));
    }

    public void findExactTypes(char[] name, final boolean findMembers, int searchFor, final ISearchRequestor storage) {
        try {
            String excludePath;
            if (this.unitToSkip != null) {
                if (!(this.unitToSkip instanceof IJavaElement)) {
                    this.findExactTypes(new String(name), storage, SearchableEnvironment.convertSearchFilterToModelFilter(searchFor));
                    return;
                }
                excludePath = ((IJavaElement)((Object)this.unitToSkip)).getPath().toString();
            } else {
                excludePath = null;
            }
            IProgressMonitor progressMonitor = new IProgressMonitor(){
                boolean isCanceled = false;

                public void beginTask(String n, int totalWork) {
                }

                public void done() {
                }

                public void internalWorked(double work) {
                }

                public boolean isCanceled() {
                    return this.isCanceled;
                }

                public void setCanceled(boolean value) {
                    this.isCanceled = value;
                }

                public void setTaskName(String n) {
                }

                public void subTask(String n) {
                }

                public void worked(int work) {
                }
            };
            IRestrictedAccessTypeRequestor typeRequestor = new IRestrictedAccessTypeRequestor(){

                public void acceptType(int modifiers, char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, String path, AccessRestriction access) {
                    if (excludePath != null && excludePath.equals(path)) {
                        return;
                    }
                    if (!findMembers && enclosingTypeNames != null && enclosingTypeNames.length > 0) {
                        return;
                    }
                    storage.acceptType(packageName, simpleTypeName, enclosingTypeNames, modifiers, access);
                }
            };
            try {
                new BasicSearchEngine(this.workingCopies).searchAllTypeNames(null, 0, name, 0, searchFor, this.getSearchScope(), typeRequestor, 2, progressMonitor);
            }
            catch (OperationCanceledException operationCanceledException) {
                this.findExactTypes(new String(name), storage, SearchableEnvironment.convertSearchFilterToModelFilter(searchFor));
            }
        }
        catch (JavaModelException javaModelException) {
            this.findExactTypes(new String(name), storage, SearchableEnvironment.convertSearchFilterToModelFilter(searchFor));
        }
    }

    private void findExactTypes(String name, ISearchRequestor storage, int type) {
        SearchableEnvironmentRequestor requestor = new SearchableEnvironmentRequestor(storage, this.unitToSkip, this.project, this.nameLookup);
        this.nameLookup.seekTypes(name, null, false, type, requestor);
    }

    public NameEnvironmentAnswer findType(char[][] compoundTypeName) {
        if (compoundTypeName == null) {
            return null;
        }
        int length = compoundTypeName.length;
        if (length <= 1) {
            if (length == 0) {
                return null;
            }
            return this.find(new String(compoundTypeName[0]), null);
        }
        int lengthM1 = length - 1;
        char[][] packageName = new char[lengthM1][];
        System.arraycopy(compoundTypeName, 0, packageName, 0, lengthM1);
        return this.find(new String(compoundTypeName[lengthM1]), CharOperation.toString(packageName));
    }

    public NameEnvironmentAnswer findType(char[] name, char[][] packageName) {
        if (name == null) {
            return null;
        }
        return this.find(new String(name), packageName == null || packageName.length == 0 ? null : CharOperation.toString(packageName));
    }

    public void findTypes(char[] prefix, boolean findMembers, boolean camelCaseMatch, int searchFor, ISearchRequestor storage) {
        this.findTypes(prefix, findMembers, camelCaseMatch, searchFor, storage, null);
    }

    public void findTypes(char[] prefix, final boolean findMembers, boolean camelCaseMatch, int searchFor, final ISearchRequestor storage, IProgressMonitor monitor) {
        block17: {
            try {
                char[] simpleName;
                char[] qualification;
                String excludePath;
                if (this.unitToSkip != null) {
                    if (!(this.unitToSkip instanceof IJavaElement)) {
                        this.findTypes(new String(prefix), storage, SearchableEnvironment.convertSearchFilterToModelFilter(searchFor));
                        return;
                    }
                    excludePath = ((IJavaElement)((Object)this.unitToSkip)).getPath().toString();
                } else {
                    excludePath = null;
                }
                int lastDotIndex = CharOperation.lastIndexOf('.', prefix);
                if (lastDotIndex < 0) {
                    qualification = null;
                    simpleName = camelCaseMatch ? prefix : CharOperation.toLowerCase(prefix);
                } else {
                    qualification = CharOperation.subarray(prefix, 0, lastDotIndex);
                    simpleName = camelCaseMatch ? CharOperation.subarray(prefix, lastDotIndex + 1, prefix.length) : CharOperation.toLowerCase(CharOperation.subarray(prefix, lastDotIndex + 1, prefix.length));
                }
                IProgressMonitor progressMonitor = new IProgressMonitor(){
                    boolean isCanceled = false;

                    public void beginTask(String name, int totalWork) {
                    }

                    public void done() {
                    }

                    public void internalWorked(double work) {
                    }

                    public boolean isCanceled() {
                        return this.isCanceled;
                    }

                    public void setCanceled(boolean value) {
                        this.isCanceled = value;
                    }

                    public void setTaskName(String name) {
                    }

                    public void subTask(String name) {
                    }

                    public void worked(int work) {
                    }
                };
                IRestrictedAccessTypeRequestor typeRequestor = new IRestrictedAccessTypeRequestor(){

                    public void acceptType(int modifiers, char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, String path, AccessRestriction access) {
                        if (excludePath != null && excludePath.equals(path)) {
                            return;
                        }
                        if (!findMembers && enclosingTypeNames != null && enclosingTypeNames.length > 0) {
                            return;
                        }
                        storage.acceptType(packageName, simpleTypeName, enclosingTypeNames, modifiers, access);
                    }
                };
                int matchRule = 1;
                if (camelCaseMatch) {
                    matchRule |= 0x80;
                }
                if (monitor != null) {
                    IndexManager indexManager = JavaModelManager.getIndexManager();
                    if (indexManager.awaitingJobsCount() == 0) {
                        new BasicSearchEngine(this.workingCopies).searchAllTypeNames(qualification, 0, simpleName, matchRule, searchFor, this.getSearchScope(), typeRequestor, 1, progressMonitor);
                        break block17;
                    }
                    try {
                        Thread.sleep(100L);
                    }
                    catch (InterruptedException interruptedException) {}
                    if (monitor.isCanceled()) {
                        throw new OperationCanceledException();
                    }
                    if (indexManager.awaitingJobsCount() == 0) {
                        new BasicSearchEngine(this.workingCopies).searchAllTypeNames(qualification, 0, simpleName, matchRule, searchFor, this.getSearchScope(), typeRequestor, 1, progressMonitor);
                    } else {
                        this.findTypes(new String(prefix), storage, SearchableEnvironment.convertSearchFilterToModelFilter(searchFor));
                    }
                    break block17;
                }
                try {
                    new BasicSearchEngine(this.workingCopies).searchAllTypeNames(qualification, 0, simpleName, matchRule, searchFor, this.getSearchScope(), typeRequestor, 2, progressMonitor);
                }
                catch (OperationCanceledException operationCanceledException) {
                    this.findTypes(new String(prefix), storage, SearchableEnvironment.convertSearchFilterToModelFilter(searchFor));
                }
            }
            catch (JavaModelException javaModelException) {
                this.findTypes(new String(prefix), storage, SearchableEnvironment.convertSearchFilterToModelFilter(searchFor));
            }
        }
    }

    public void findConstructorDeclarations(char[] prefix, boolean camelCaseMatch, final ISearchRequestor storage, IProgressMonitor monitor) {
        block11: {
            try {
                char[] simpleName;
                char[] qualification;
                final String excludePath = this.unitToSkip != null && this.unitToSkip instanceof IJavaElement ? ((IJavaElement)((Object)this.unitToSkip)).getPath().toString() : null;
                int lastDotIndex = CharOperation.lastIndexOf('.', prefix);
                if (lastDotIndex < 0) {
                    qualification = null;
                    simpleName = camelCaseMatch ? prefix : CharOperation.toLowerCase(prefix);
                } else {
                    qualification = CharOperation.subarray(prefix, 0, lastDotIndex);
                    simpleName = camelCaseMatch ? CharOperation.subarray(prefix, lastDotIndex + 1, prefix.length) : CharOperation.toLowerCase(CharOperation.subarray(prefix, lastDotIndex + 1, prefix.length));
                }
                IProgressMonitor progressMonitor = new IProgressMonitor(){
                    boolean isCanceled = false;

                    public void beginTask(String name, int totalWork) {
                    }

                    public void done() {
                    }

                    public void internalWorked(double work) {
                    }

                    public boolean isCanceled() {
                        return this.isCanceled;
                    }

                    public void setCanceled(boolean value) {
                        this.isCanceled = value;
                    }

                    public void setTaskName(String name) {
                    }

                    public void subTask(String name) {
                    }

                    public void worked(int work) {
                    }
                };
                IRestrictedAccessConstructorRequestor constructorRequestor = new IRestrictedAccessConstructorRequestor(){

                    public void acceptConstructor(int modifiers, char[] simpleTypeName, int parameterCount, char[] signature, char[][] parameterTypes, char[][] parameterNames, int typeModifiers, char[] packageName, int extraFlags, String path, AccessRestriction access) {
                        if (excludePath != null && excludePath.equals(path)) {
                            return;
                        }
                        storage.acceptConstructor(modifiers, simpleTypeName, parameterCount, signature, parameterTypes, parameterNames, typeModifiers, packageName, extraFlags, path, access);
                    }
                };
                int matchRule = 1;
                if (camelCaseMatch) {
                    matchRule |= 0x80;
                }
                if (monitor != null) {
                    IndexManager indexManager = JavaModelManager.getIndexManager();
                    while (indexManager.awaitingJobsCount() > 0) {
                        try {
                            Thread.sleep(50L);
                        }
                        catch (InterruptedException interruptedException) {}
                        if (!monitor.isCanceled()) continue;
                        throw new OperationCanceledException();
                    }
                    new BasicSearchEngine(this.workingCopies).searchAllConstructorDeclarations(qualification, simpleName, matchRule, this.getSearchScope(), constructorRequestor, 1, progressMonitor);
                    break block11;
                }
                try {
                    new BasicSearchEngine(this.workingCopies).searchAllConstructorDeclarations(qualification, simpleName, matchRule, this.getSearchScope(), constructorRequestor, 2, progressMonitor);
                }
                catch (OperationCanceledException operationCanceledException) {}
            }
            catch (JavaModelException javaModelException) {}
        }
    }

    private void findTypes(String prefix, ISearchRequestor storage, int type) {
        SearchableEnvironmentRequestor requestor = new SearchableEnvironmentRequestor(storage, this.unitToSkip, this.project, this.nameLookup);
        int index = prefix.lastIndexOf(46);
        if (index == -1) {
            this.nameLookup.seekTypes(prefix, null, true, type, requestor);
        } else {
            String packageName = prefix.substring(0, index);
            JavaElementRequestor elementRequestor = new JavaElementRequestor();
            this.nameLookup.seekPackageFragments(packageName, false, elementRequestor);
            IPackageFragment[] fragments = elementRequestor.getPackageFragments();
            if (fragments != null) {
                String className = prefix.substring(index + 1);
                int i = 0;
                int length = fragments.length;
                while (i < length) {
                    if (fragments[i] != null) {
                        this.nameLookup.seekTypes(className, fragments[i], true, type, requestor);
                    }
                    ++i;
                }
            }
        }
    }

    private IJavaSearchScope getSearchScope() {
        if (this.searchScope == null) {
            this.searchScope = this.checkAccessRestrictions ? BasicSearchEngine.createJavaSearchScope(new IJavaElement[]{this.project}) : BasicSearchEngine.createJavaSearchScope(this.nameLookup.packageFragmentRoots);
        }
        return this.searchScope;
    }

    public boolean isPackage(char[][] parentPackageName, char[] subPackageName) {
        String[] pkgName;
        if (parentPackageName == null) {
            pkgName = new String[]{new String(subPackageName)};
        } else {
            int length = parentPackageName.length;
            pkgName = new String[length + 1];
            int i = 0;
            while (i < length) {
                pkgName[i] = new String(parentPackageName[i]);
                ++i;
            }
            pkgName[length] = new String(subPackageName);
        }
        return this.owner != null && this.owner.isPackage(pkgName) || this.nameLookup.isPackage(pkgName);
    }

    protected String toStringChar(char[] name) {
        return "[" + new String(name) + "]";
    }

    protected String toStringCharChar(char[][] names) {
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < names.length) {
            result.append(this.toStringChar(names[i]));
            ++i;
        }
        return result.toString();
    }

    public void cleanup() {
    }
}

