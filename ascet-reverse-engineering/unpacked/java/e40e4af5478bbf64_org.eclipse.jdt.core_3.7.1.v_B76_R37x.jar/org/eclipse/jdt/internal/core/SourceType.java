/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.IWorkingCopy;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.CompletionRequestorWrapper;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.AnnotatableInfo;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.CreateFieldOperation;
import org.eclipse.jdt.internal.core.CreateInitializerOperation;
import org.eclipse.jdt.internal.core.CreateMethodOperation;
import org.eclipse.jdt.internal.core.CreateTypeHierarchyOperation;
import org.eclipse.jdt.internal.core.CreateTypeOperation;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.Initializer;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.NamedMember;
import org.eclipse.jdt.internal.core.ResolvedSourceType;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SourceField;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.TypeParameterElementInfo;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;

public class SourceType
extends NamedMember
implements IType {
    protected SourceType(JavaElement parent, String name) {
        super(parent, name);
    }

    protected void closing(Object info) throws JavaModelException {
        super.closing(info);
        SourceTypeElementInfo elementInfo = (SourceTypeElementInfo)info;
        ITypeParameter[] typeParameters = elementInfo.typeParameters;
        int i = 0;
        int length = typeParameters.length;
        while (i < length) {
            ((TypeParameter)typeParameters[i]).close();
            ++i;
        }
    }

    public void codeComplete(char[] snippet, int insertion, int position, char[][] localVariableTypeNames, char[][] localVariableNames, int[] localVariableModifiers, boolean isStatic, ICompletionRequestor requestor) throws JavaModelException {
        this.codeComplete(snippet, insertion, position, localVariableTypeNames, localVariableNames, localVariableModifiers, isStatic, requestor, (WorkingCopyOwner)DefaultWorkingCopyOwner.PRIMARY);
    }

    public void codeComplete(char[] snippet, int insertion, int position, char[][] localVariableTypeNames, char[][] localVariableNames, int[] localVariableModifiers, boolean isStatic, ICompletionRequestor requestor, WorkingCopyOwner owner) throws JavaModelException {
        if (requestor == null) {
            throw new IllegalArgumentException("Completion requestor cannot be null");
        }
        this.codeComplete(snippet, insertion, position, localVariableTypeNames, localVariableNames, localVariableModifiers, isStatic, (CompletionRequestor)new CompletionRequestorWrapper(requestor), owner);
    }

    public void codeComplete(char[] snippet, int insertion, int position, char[][] localVariableTypeNames, char[][] localVariableNames, int[] localVariableModifiers, boolean isStatic, CompletionRequestor requestor) throws JavaModelException {
        this.codeComplete(snippet, insertion, position, localVariableTypeNames, localVariableNames, localVariableModifiers, isStatic, requestor, (WorkingCopyOwner)DefaultWorkingCopyOwner.PRIMARY);
    }

    public void codeComplete(char[] snippet, int insertion, int position, char[][] localVariableTypeNames, char[][] localVariableNames, int[] localVariableModifiers, boolean isStatic, CompletionRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        this.codeComplete(snippet, insertion, position, localVariableTypeNames, localVariableNames, localVariableModifiers, isStatic, requestor, DefaultWorkingCopyOwner.PRIMARY, monitor);
    }

    public void codeComplete(char[] snippet, int insertion, int position, char[][] localVariableTypeNames, char[][] localVariableNames, int[] localVariableModifiers, boolean isStatic, CompletionRequestor requestor, WorkingCopyOwner owner) throws JavaModelException {
        this.codeComplete(snippet, insertion, position, localVariableTypeNames, localVariableNames, localVariableModifiers, isStatic, requestor, owner, null);
    }

    public void codeComplete(char[] snippet, int insertion, int position, char[][] localVariableTypeNames, char[][] localVariableNames, int[] localVariableModifiers, boolean isStatic, CompletionRequestor requestor, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        if (requestor == null) {
            throw new IllegalArgumentException("Completion requestor cannot be null");
        }
        JavaProject project = (JavaProject)this.getJavaProject();
        SearchableEnvironment environment = project.newSearchableNameEnvironment(owner);
        CompletionEngine engine = new CompletionEngine(environment, requestor, project.getOptions(true), project, owner, monitor);
        String source = this.getCompilationUnit().getSource();
        if (source != null && insertion > -1 && insertion < source.length()) {
            char[] prefix = CharOperation.concat(source.substring(0, insertion).toCharArray(), new char[]{'{'});
            char[] suffix = CharOperation.concat(new char[]{'}'}, source.substring(insertion).toCharArray());
            char[] fakeSource = CharOperation.concat(prefix, snippet, suffix);
            BasicCompilationUnit cu = new BasicCompilationUnit(fakeSource, null, this.getElementName(), this.getParent());
            engine.complete(cu, prefix.length + position, prefix.length, null);
        } else {
            engine.complete(this, snippet, position, localVariableTypeNames, localVariableNames, localVariableModifiers, isStatic);
        }
        if (NameLookup.VERBOSE) {
            System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + environment.nameLookup.timeSpentInSeekTypesInSourcePackage + "ms");
            System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + environment.nameLookup.timeSpentInSeekTypesInBinaryPackage + "ms");
        }
    }

    public IField createField(String contents, IJavaElement sibling, boolean force, IProgressMonitor monitor) throws JavaModelException {
        CreateFieldOperation op = new CreateFieldOperation(this, contents, force);
        if (sibling != null) {
            op.createBefore(sibling);
        }
        op.runOperation(monitor);
        return (IField)op.getResultElements()[0];
    }

    public IInitializer createInitializer(String contents, IJavaElement sibling, IProgressMonitor monitor) throws JavaModelException {
        CreateInitializerOperation op = new CreateInitializerOperation(this, contents);
        if (sibling != null) {
            op.createBefore(sibling);
        }
        op.runOperation(monitor);
        return (IInitializer)op.getResultElements()[0];
    }

    public IMethod createMethod(String contents, IJavaElement sibling, boolean force, IProgressMonitor monitor) throws JavaModelException {
        CreateMethodOperation op = new CreateMethodOperation(this, contents, force);
        if (sibling != null) {
            op.createBefore(sibling);
        }
        op.runOperation(monitor);
        return (IMethod)op.getResultElements()[0];
    }

    public IType createType(String contents, IJavaElement sibling, boolean force, IProgressMonitor monitor) throws JavaModelException {
        CreateTypeOperation op = new CreateTypeOperation(this, contents, force);
        if (sibling != null) {
            op.createBefore(sibling);
        }
        op.runOperation(monitor);
        return (IType)op.getResultElements()[0];
    }

    public boolean equals(Object o) {
        if (!(o instanceof SourceType)) {
            return false;
        }
        return super.equals(o);
    }

    public IMethod[] findMethods(IMethod method) {
        try {
            return SourceType.findMethods(method, this.getMethods());
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    public IAnnotation[] getAnnotations() throws JavaModelException {
        AnnotatableInfo info = (AnnotatableInfo)this.getElementInfo();
        return info.annotations;
    }

    public IJavaElement[] getChildrenForCategory(String category) throws JavaModelException {
        IJavaElement[] children = this.getChildren();
        int length = children.length;
        if (length == 0) {
            return NO_ELEMENTS;
        }
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        HashMap categories = info.getCategories();
        if (categories == null) {
            return NO_ELEMENTS;
        }
        IJavaElement[] result = new IJavaElement[length];
        int index = 0;
        int i = 0;
        while (i < length) {
            IJavaElement child = children[i];
            String[] elementCategories = (String[])categories.get(child);
            if (elementCategories != null) {
                int j = 0;
                int length2 = elementCategories.length;
                while (j < length2) {
                    if (elementCategories[j].equals(category)) {
                        result[index++] = child;
                    }
                    ++j;
                }
            }
            ++i;
        }
        if (index == 0) {
            return NO_ELEMENTS;
        }
        if (index < length) {
            IJavaElement[] iJavaElementArray = result;
            result = new IJavaElement[index];
            System.arraycopy(iJavaElementArray, 0, result, 0, index);
        }
        return result;
    }

    public IType getDeclaringType() {
        for (IJavaElement parentElement = this.getParent(); parentElement != null; parentElement = parentElement.getParent()) {
            if (parentElement.getElementType() == 7) {
                return (IType)parentElement;
            }
            if (parentElement instanceof IMember) {
                continue;
            }
            return null;
        }
        return null;
    }

    public int getElementType() {
        return 7;
    }

    public IField getField(String fieldName) {
        return new SourceField(this, fieldName);
    }

    public IField[] getFields() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(8);
        IField[] array = new IField[list.size()];
        list.toArray(array);
        return array;
    }

    public String getFullyQualifiedName() {
        return this.getFullyQualifiedName('$');
    }

    public String getFullyQualifiedName(char enclosingTypeSeparator) {
        try {
            return this.getFullyQualifiedName(enclosingTypeSeparator, false);
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    public String getFullyQualifiedParameterizedName() throws JavaModelException {
        return this.getFullyQualifiedName('.', true);
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner workingCopyOwner) {
        switch (token.charAt(0)) {
            case '!': {
                return this.getHandleUpdatingCountFromMemento(memento, workingCopyOwner);
            }
            case '^': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String fieldName = memento.nextToken();
                JavaElement field = (JavaElement)((Object)this.getField(fieldName));
                return field.getHandleFromMemento(memento, workingCopyOwner);
            }
            case '|': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String count = memento.nextToken();
                JavaElement initializer = (JavaElement)((Object)this.getInitializer(Integer.parseInt(count)));
                return initializer.getHandleFromMemento(memento, workingCopyOwner);
            }
            case '~': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String selector = memento.nextToken();
                ArrayList<String> params = new ArrayList<String>();
                block16: while (memento.hasMoreTokens()) {
                    token = memento.nextToken();
                    switch (token.charAt(0)) {
                        case '[': 
                        case ']': 
                        case '}': {
                            break block16;
                        }
                        case '~': {
                            if (!memento.hasMoreTokens()) {
                                return this;
                            }
                            String param = memento.nextToken();
                            StringBuffer buffer = new StringBuffer();
                            while (param.length() == 1 && '[' == param.charAt(0)) {
                                buffer.append('[');
                                if (!memento.hasMoreTokens()) {
                                    return this;
                                }
                                param = memento.nextToken();
                            }
                            params.add(String.valueOf(buffer.toString()) + param);
                            break;
                        }
                        default: {
                            break block16;
                        }
                    }
                }
                String[] parameters = new String[params.size()];
                params.toArray(parameters);
                JavaElement method = (JavaElement)((Object)this.getMethod(selector, parameters));
                switch (token.charAt(0)) {
                    case '@': 
                    case '[': 
                    case ']': 
                    case '}': {
                        return method.getHandleFromMemento(token, memento, workingCopyOwner);
                    }
                }
                return method;
            }
            case '[': {
                String typeName;
                if (memento.hasMoreTokens()) {
                    typeName = memento.nextToken();
                    char firstChar = typeName.charAt(0);
                    if (firstChar == '^' || firstChar == '|' || firstChar == '~' || firstChar == '[' || firstChar == '!') {
                        token = typeName;
                        typeName = "";
                    } else {
                        token = null;
                    }
                } else {
                    typeName = "";
                    token = null;
                }
                JavaElement type = (JavaElement)((Object)this.getType(typeName));
                if (token == null) {
                    return type.getHandleFromMemento(memento, workingCopyOwner);
                }
                return type.getHandleFromMemento(token, memento, workingCopyOwner);
            }
            case ']': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String typeParameterName = memento.nextToken();
                TypeParameter typeParameter = new TypeParameter(this, typeParameterName);
                return typeParameter.getHandleFromMemento(memento, workingCopyOwner);
            }
            case '}': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String annotationName = memento.nextToken();
                Annotation annotation = new Annotation(this, annotationName);
                return annotation.getHandleFromMemento(memento, workingCopyOwner);
            }
        }
        return null;
    }

    public IInitializer getInitializer(int count) {
        return new Initializer(this, count);
    }

    public IInitializer[] getInitializers() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(10);
        IInitializer[] array = new IInitializer[list.size()];
        list.toArray(array);
        return array;
    }

    public String getKey() {
        try {
            return this.getKey(this, false);
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    public IMethod getMethod(String selector, String[] parameterTypeSignatures) {
        return new SourceMethod(this, selector, parameterTypeSignatures);
    }

    public IMethod[] getMethods() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(9);
        IMethod[] array = new IMethod[list.size()];
        list.toArray(array);
        return array;
    }

    public IPackageFragment getPackageFragment() {
        IJavaElement parentElement = this.parent;
        while (parentElement != null) {
            if (parentElement.getElementType() == 4) {
                return (IPackageFragment)parentElement;
            }
            parentElement = parentElement.getParent();
        }
        Assert.isTrue((boolean)false);
        return null;
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        CompilationUnit cu;
        if (checkOwner && (cu = (CompilationUnit)this.getAncestor(5)).isPrimary()) {
            return this;
        }
        IJavaElement primaryParent = this.parent.getPrimaryElement(false);
        switch (primaryParent.getElementType()) {
            case 5: {
                return ((ICompilationUnit)primaryParent).getType(this.name);
            }
            case 7: {
                return ((IType)primaryParent).getType(this.name);
            }
            case 8: 
            case 9: 
            case 10: {
                return ((IMember)primaryParent).getType(this.name, this.occurrenceCount);
            }
        }
        return this;
    }

    public String getSuperclassName() throws JavaModelException {
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        char[] superclassName = info.getSuperclassName();
        if (superclassName == null) {
            return null;
        }
        return new String(superclassName);
    }

    public String getSuperclassTypeSignature() throws JavaModelException {
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        char[] superclassName = info.getSuperclassName();
        if (superclassName == null) {
            return null;
        }
        return new String(Signature.createTypeSignature(superclassName, false));
    }

    public String[] getSuperInterfaceNames() throws JavaModelException {
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        char[][] names = info.getInterfaceNames();
        return CharOperation.toStrings(names);
    }

    public String[] getSuperInterfaceTypeSignatures() throws JavaModelException {
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        char[][] names = info.getInterfaceNames();
        if (names == null) {
            return CharOperation.NO_STRINGS;
        }
        String[] strings = new String[names.length];
        int i = 0;
        while (i < names.length) {
            strings[i] = new String(Signature.createTypeSignature(names[i], false));
            ++i;
        }
        return strings;
    }

    public ITypeParameter[] getTypeParameters() throws JavaModelException {
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        return info.typeParameters;
    }

    public String[] getTypeParameterSignatures() throws JavaModelException {
        ITypeParameter[] typeParameters = this.getTypeParameters();
        int length = typeParameters.length;
        String[] typeParameterSignatures = new String[length];
        int i = 0;
        while (i < length) {
            TypeParameter typeParameter = (TypeParameter)typeParameters[i];
            TypeParameterElementInfo info = (TypeParameterElementInfo)typeParameter.getElementInfo();
            char[][] bounds = info.bounds;
            if (bounds == null) {
                typeParameterSignatures[i] = Signature.createTypeParameterSignature(typeParameter.getElementName(), CharOperation.NO_STRINGS);
            } else {
                int boundsLength = bounds.length;
                char[][] boundSignatures = new char[boundsLength][];
                int j = 0;
                while (j < boundsLength) {
                    boundSignatures[j] = Signature.createCharArrayTypeSignature(bounds[j], false);
                    ++j;
                }
                typeParameterSignatures[i] = new String(Signature.createTypeParameterSignature(typeParameter.getElementName().toCharArray(), boundSignatures));
            }
            ++i;
        }
        return typeParameterSignatures;
    }

    public IType getType(String typeName) {
        return new SourceType(this, typeName);
    }

    public ITypeParameter getTypeParameter(String typeParameterName) {
        return new TypeParameter(this, typeParameterName);
    }

    public String getTypeQualifiedName() {
        return this.getTypeQualifiedName('$');
    }

    public String getTypeQualifiedName(char enclosingTypeSeparator) {
        try {
            return this.getTypeQualifiedName(enclosingTypeSeparator, false);
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    public IType[] getTypes() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(7);
        IType[] array = new IType[list.size()];
        list.toArray(array);
        return array;
    }

    public boolean isAnonymous() {
        return this.name.length() == 0;
    }

    public boolean isClass() throws JavaModelException {
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        return TypeDeclaration.kind(info.getModifiers()) == 1;
    }

    public boolean isEnum() throws JavaModelException {
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        return TypeDeclaration.kind(info.getModifiers()) == 3;
    }

    public boolean isInterface() throws JavaModelException {
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        switch (TypeDeclaration.kind(info.getModifiers())) {
            case 2: 
            case 4: {
                return true;
            }
        }
        return false;
    }

    public boolean isAnnotation() throws JavaModelException {
        SourceTypeElementInfo info = (SourceTypeElementInfo)this.getElementInfo();
        return TypeDeclaration.kind(info.getModifiers()) == 4;
    }

    public boolean isLocal() {
        switch (this.parent.getElementType()) {
            case 8: 
            case 9: 
            case 10: {
                return true;
            }
        }
        return false;
    }

    public boolean isMember() {
        return this.getDeclaringType() != null;
    }

    public boolean isResolved() {
        return false;
    }

    public ITypeHierarchy loadTypeHierachy(InputStream input, IProgressMonitor monitor) throws JavaModelException {
        return this.loadTypeHierachy(input, DefaultWorkingCopyOwner.PRIMARY, monitor);
    }

    public ITypeHierarchy loadTypeHierachy(InputStream input, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        return TypeHierarchy.load(this, input, owner);
    }

    public ITypeHierarchy newSupertypeHierarchy(IProgressMonitor monitor) throws JavaModelException {
        return this.newSupertypeHierarchy(DefaultWorkingCopyOwner.PRIMARY, monitor);
    }

    public ITypeHierarchy newSupertypeHierarchy(ICompilationUnit[] workingCopies, IProgressMonitor monitor) throws JavaModelException {
        CreateTypeHierarchyOperation op = new CreateTypeHierarchyOperation((IType)this, workingCopies, SearchEngine.createWorkspaceScope(), false);
        op.runOperation(monitor);
        return op.getResult();
    }

    public ITypeHierarchy newSupertypeHierarchy(IWorkingCopy[] workingCopies, IProgressMonitor monitor) throws JavaModelException {
        ICompilationUnit[] copies;
        if (workingCopies == null) {
            copies = null;
        } else {
            int length = workingCopies.length;
            copies = new ICompilationUnit[length];
            System.arraycopy(workingCopies, 0, copies, 0, length);
        }
        return this.newSupertypeHierarchy(copies, monitor);
    }

    public ITypeHierarchy newSupertypeHierarchy(WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(owner, true);
        CreateTypeHierarchyOperation op = new CreateTypeHierarchyOperation((IType)this, workingCopies, SearchEngine.createWorkspaceScope(), false);
        op.runOperation(monitor);
        return op.getResult();
    }

    public ITypeHierarchy newTypeHierarchy(IJavaProject project, IProgressMonitor monitor) throws JavaModelException {
        return this.newTypeHierarchy(project, DefaultWorkingCopyOwner.PRIMARY, monitor);
    }

    public ITypeHierarchy newTypeHierarchy(IJavaProject project, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        if (project == null) {
            throw new IllegalArgumentException(Messages.hierarchy_nullProject);
        }
        ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(owner, true);
        ICompilationUnit[] projectWCs = null;
        if (workingCopies != null) {
            int length = workingCopies.length;
            projectWCs = new ICompilationUnit[length];
            int index = 0;
            int i = 0;
            while (i < length) {
                ICompilationUnit wc = workingCopies[i];
                if (project.equals(wc.getJavaProject())) {
                    projectWCs[index++] = wc;
                }
                ++i;
            }
            if (index != length) {
                ICompilationUnit[] iCompilationUnitArray = projectWCs;
                projectWCs = new ICompilationUnit[index];
                System.arraycopy(iCompilationUnitArray, 0, projectWCs, 0, index);
            }
        }
        CreateTypeHierarchyOperation op = new CreateTypeHierarchyOperation((IType)this, projectWCs, project, true);
        op.runOperation(monitor);
        return op.getResult();
    }

    public ITypeHierarchy newTypeHierarchy(IProgressMonitor monitor) throws JavaModelException {
        return this.newTypeHierarchy(DefaultWorkingCopyOwner.PRIMARY, monitor);
    }

    public ITypeHierarchy newTypeHierarchy(ICompilationUnit[] workingCopies, IProgressMonitor monitor) throws JavaModelException {
        CreateTypeHierarchyOperation op = new CreateTypeHierarchyOperation((IType)this, workingCopies, SearchEngine.createWorkspaceScope(), true);
        op.runOperation(monitor);
        return op.getResult();
    }

    public ITypeHierarchy newTypeHierarchy(IWorkingCopy[] workingCopies, IProgressMonitor monitor) throws JavaModelException {
        ICompilationUnit[] copies;
        if (workingCopies == null) {
            copies = null;
        } else {
            int length = workingCopies.length;
            copies = new ICompilationUnit[length];
            System.arraycopy(workingCopies, 0, copies, 0, length);
        }
        return this.newTypeHierarchy(copies, monitor);
    }

    public ITypeHierarchy newTypeHierarchy(WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(owner, true);
        CreateTypeHierarchyOperation op = new CreateTypeHierarchyOperation((IType)this, workingCopies, SearchEngine.createWorkspaceScope(), true);
        op.runOperation(monitor);
        return op.getResult();
    }

    public JavaElement resolved(Binding binding) {
        ResolvedSourceType resolvedHandle = new ResolvedSourceType(this.parent, this.name, new String(binding.computeUniqueKey()));
        resolvedHandle.occurrenceCount = this.occurrenceCount;
        return resolvedHandle;
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        if (info == null) {
            String elementName = this.getElementName();
            if (elementName.length() == 0) {
                buffer.append("<anonymous #");
                buffer.append(this.occurrenceCount);
                buffer.append(">");
            } else {
                this.toStringName(buffer);
            }
            buffer.append(" (not open)");
        } else if (info == NO_INFO) {
            String elementName = this.getElementName();
            if (elementName.length() == 0) {
                buffer.append("<anonymous #");
                buffer.append(this.occurrenceCount);
                buffer.append(">");
            } else {
                this.toStringName(buffer);
            }
        } else {
            try {
                if (this.isEnum()) {
                    buffer.append("enum ");
                } else if (this.isAnnotation()) {
                    buffer.append("@interface ");
                } else if (this.isInterface()) {
                    buffer.append("interface ");
                } else {
                    buffer.append("class ");
                }
                String elementName = this.getElementName();
                if (elementName.length() == 0) {
                    buffer.append("<anonymous #");
                    buffer.append(this.occurrenceCount);
                    buffer.append(">");
                } else {
                    this.toStringName(buffer);
                }
            }
            catch (JavaModelException javaModelException) {
                buffer.append("<JavaModelException in toString of " + this.getElementName());
            }
        }
    }
}

