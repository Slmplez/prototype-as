/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core;

import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
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
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.BinaryField;
import org.eclipse.jdt.internal.core.BinaryMember;
import org.eclipse.jdt.internal.core.BinaryMethod;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.ClassFileInfo;
import org.eclipse.jdt.internal.core.CreateTypeHierarchyOperation;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.Initializer;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelCache;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.JavadocContents;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.ResolvedBinaryType;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.util.LRUCache;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class BinaryType
extends BinaryMember
implements IType,
SuffixConstants {
    private static final IField[] NO_FIELDS = new IField[0];
    private static final IMethod[] NO_METHODS = new IMethod[0];
    private static final IType[] NO_TYPES = new IType[0];
    private static final IInitializer[] NO_INITIALIZERS = new IInitializer[0];
    public static final JavadocContents EMPTY_JAVADOC = new JavadocContents(null, org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING);

    protected BinaryType(JavaElement parent, String name) {
        super(parent, name);
    }

    protected void closing(Object info) throws JavaModelException {
        ClassFileInfo cfi = this.getClassFileInfo();
        cfi.removeBinaryChildren();
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
        String source = this.getClassFile().getSource();
        if (source != null && insertion > -1 && insertion < source.length()) {
            char[] prefix = CharOperation.concat(source.substring(0, insertion).toCharArray(), new char[]{'{'});
            char[] suffix = CharOperation.concat(new char[]{'}'}, source.substring(insertion).toCharArray());
            char[] fakeSource = CharOperation.concat(prefix, snippet, suffix);
            BasicCompilationUnit cu = new BasicCompilationUnit(fakeSource, null, this.getElementName(), project);
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
        throw new JavaModelException(new JavaModelStatus(976, this));
    }

    public IInitializer createInitializer(String contents, IJavaElement sibling, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(976, this));
    }

    public IMethod createMethod(String contents, IJavaElement sibling, boolean force, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(976, this));
    }

    public IType createType(String contents, IJavaElement sibling, boolean force, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(976, this));
    }

    public boolean equals(Object o) {
        if (!(o instanceof BinaryType)) {
            return false;
        }
        return super.equals(o);
    }

    public IMethod[] findMethods(IMethod method) {
        try {
            return BinaryType.findMethods(method, this.getMethods());
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    public IAnnotation[] getAnnotations() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        IBinaryAnnotation[] binaryAnnotations = info.getAnnotations();
        return this.getAnnotations(binaryAnnotations, info.getTagBits());
    }

    public IJavaElement[] getChildren() throws JavaModelException {
        ClassFileInfo cfi = this.getClassFileInfo();
        return cfi.binaryChildren;
    }

    public IJavaElement[] getChildrenForCategory(String category) throws JavaModelException {
        IJavaElement[] children = this.getChildren();
        int length = children.length;
        if (length == 0) {
            return children;
        }
        SourceMapper mapper = this.getSourceMapper();
        if (mapper != null) {
            ((ClassFile)this.getClassFile()).getBuffer();
            HashMap categories = mapper.categories;
            IJavaElement[] result = new IJavaElement[length];
            int index = 0;
            if (categories != null) {
                int i = 0;
                while (i < length) {
                    IJavaElement child = children[i];
                    String[] cats = (String[])categories.get(child);
                    if (cats != null) {
                        int j = 0;
                        int length2 = cats.length;
                        while (j < length2) {
                            if (cats[j].equals(category)) {
                                result[index++] = child;
                                break;
                            }
                            ++j;
                        }
                    }
                    ++i;
                }
            }
            if (index < length) {
                IJavaElement[] iJavaElementArray = result;
                result = new IJavaElement[index];
                System.arraycopy(iJavaElementArray, 0, result, 0, index);
            }
            return result;
        }
        return NO_ELEMENTS;
    }

    protected ClassFileInfo getClassFileInfo() throws JavaModelException {
        ClassFile cf = (ClassFile)this.parent;
        return (ClassFileInfo)cf.getElementInfo();
    }

    public IType getDeclaringType() {
        IClassFile classFile = this.getClassFile();
        if (classFile.isOpen()) {
            char[] enclosingTypeName;
            block10: {
                block9: {
                    try {
                        enclosingTypeName = ((IBinaryType)this.getElementInfo()).getEnclosingTypeName();
                        if (enclosingTypeName != null) break block9;
                        return null;
                    }
                    catch (JavaModelException javaModelException) {
                        return null;
                    }
                }
                enclosingTypeName = ClassFile.unqualifiedName(enclosingTypeName);
                if (classFile.getElementName().length() <= enclosingTypeName.length + 1 || !Character.isDigit(classFile.getElementName().charAt(enclosingTypeName.length + 1))) break block10;
                return null;
            }
            return this.getPackageFragment().getClassFile(String.valueOf(new String(enclosingTypeName)) + ".class").getType();
        }
        String classFileName = classFile.getElementName();
        int lastDollar = -1;
        int i = 0;
        int length = classFileName.length();
        while (i < length) {
            char c = classFileName.charAt(i);
            if (Character.isDigit(c) && lastDollar == i - 1) {
                return null;
            }
            if (c == '$') {
                lastDollar = i;
            }
            ++i;
        }
        if (lastDollar == -1) {
            return null;
        }
        String enclosingName = classFileName.substring(0, lastDollar);
        String enclosingClassFileName = String.valueOf(enclosingName) + ".class";
        return new BinaryType((JavaElement)((Object)this.getPackageFragment().getClassFile(enclosingClassFileName)), Util.localTypeName(enclosingName, enclosingName.lastIndexOf(36), enclosingName.length()));
    }

    public Object getElementInfo(IProgressMonitor monitor) throws JavaModelException {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        Object info = manager.getInfo(this);
        if (info != null && info != JavaModelCache.NON_EXISTING_JAR_TYPE_INFO) {
            return info;
        }
        return this.openWhenClosed(this.createElementInfo(), monitor);
    }

    public int getElementType() {
        return 7;
    }

    public IField getField(String fieldName) {
        return new BinaryField(this, fieldName);
    }

    public IField[] getFields() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(8);
        int size = list.size();
        if (size == 0) {
            return NO_FIELDS;
        }
        IField[] array = new IField[size];
        list.toArray(array);
        return array;
    }

    public int getFlags() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        return info.getModifiers() & 0xFFFFFFDF;
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

    public IInitializer[] getInitializers() {
        return NO_INITIALIZERS;
    }

    public String getKey(boolean forceOpen) throws JavaModelException {
        return this.getKey(this, forceOpen);
    }

    public IMethod getMethod(String selector, String[] parameterTypeSignatures) {
        return new BinaryMethod(this, selector, parameterTypeSignatures);
    }

    public IMethod[] getMethods() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(9);
        int size = list.size();
        if (size == 0) {
            return NO_METHODS;
        }
        IMethod[] array = new IMethod[size];
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

    public String getSuperclassTypeSignature() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        char[] genericSignature = info.getGenericSignature();
        if (genericSignature != null) {
            int signatureLength = genericSignature.length;
            int index = 0;
            if (genericSignature[0] == '<') {
                int count = 1;
                while (count > 0 && ++index < signatureLength) {
                    switch (genericSignature[index]) {
                        case '<': {
                            ++count;
                            break;
                        }
                        case '>': {
                            --count;
                        }
                    }
                }
                ++index;
            }
            int start = index;
            index = org.eclipse.jdt.internal.compiler.util.Util.scanClassTypeSignature(genericSignature, start) + 1;
            char[] superclassSig = CharOperation.subarray(genericSignature, start, index);
            return new String(ClassFile.translatedName(superclassSig));
        }
        char[] superclassName = info.getSuperclassName();
        if (superclassName == null) {
            return null;
        }
        return new String(Signature.createTypeSignature(ClassFile.translatedName(superclassName), true));
    }

    /*
     * Unable to fully structure code
     */
    public String getSourceFileName(IBinaryType info) {
        block4: {
            if (info == null) {
                try {
                    info = (IBinaryType)this.getElementInfo();
                    break block4;
                }
                catch (JavaModelException v0) {
                    type = this;
                    enclosingType = this.getDeclaringType();
                    ** while (enclosingType != null)
                }
lbl-1000:
                // 1 sources

                {
                    type = enclosingType;
                    enclosingType = type.getDeclaringType();
                    continue;
                }
lbl12:
                // 1 sources

                return String.valueOf(type.getElementName()) + Util.defaultJavaExtension();
            }
        }
        return this.sourceFileName(info);
    }

    public String getSuperclassName() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        char[] superclassName = info.getSuperclassName();
        if (superclassName == null) {
            return null;
        }
        return new String(ClassFile.translatedName(superclassName));
    }

    public String[] getSuperInterfaceNames() throws JavaModelException {
        int length;
        IBinaryType info = (IBinaryType)this.getElementInfo();
        char[][] names = info.getInterfaceNames();
        if (names == null || (length = names.length) == 0) {
            return CharOperation.NO_STRINGS;
        }
        names = ClassFile.translatedNames(names);
        String[] strings = new String[length];
        int i = 0;
        while (i < length) {
            strings[i] = new String(names[i]);
            ++i;
        }
        return strings;
    }

    public String[] getSuperInterfaceTypeSignatures() throws JavaModelException {
        int length;
        IBinaryType info = (IBinaryType)this.getElementInfo();
        char[] genericSignature = info.getGenericSignature();
        if (genericSignature != null) {
            ArrayList<String> interfaces = new ArrayList<String>();
            int signatureLength = genericSignature.length;
            int index = 0;
            if (genericSignature[0] == '<') {
                int count = 1;
                while (count > 0 && ++index < signatureLength) {
                    switch (genericSignature[index]) {
                        case '<': {
                            ++count;
                            break;
                        }
                        case '>': {
                            --count;
                        }
                    }
                }
                ++index;
            }
            index = org.eclipse.jdt.internal.compiler.util.Util.scanClassTypeSignature(genericSignature, index) + 1;
            while (index < signatureLength) {
                int start = index;
                index = org.eclipse.jdt.internal.compiler.util.Util.scanClassTypeSignature(genericSignature, start) + 1;
                char[] interfaceSig = CharOperation.subarray(genericSignature, start, index);
                interfaces.add(new String(ClassFile.translatedName(interfaceSig)));
            }
            int size = interfaces.size();
            String[] result = new String[size];
            interfaces.toArray(result);
            return result;
        }
        char[][] names = info.getInterfaceNames();
        if (names == null || (length = names.length) == 0) {
            return CharOperation.NO_STRINGS;
        }
        names = ClassFile.translatedNames(names);
        String[] strings = new String[length];
        int i = 0;
        while (i < length) {
            strings[i] = new String(Signature.createTypeSignature(names[i], true));
            ++i;
        }
        return strings;
    }

    public ITypeParameter[] getTypeParameters() throws JavaModelException {
        String[] typeParameterSignatures = this.getTypeParameterSignatures();
        int length = typeParameterSignatures.length;
        if (length == 0) {
            return TypeParameter.NO_TYPE_PARAMETERS;
        }
        ITypeParameter[] typeParameters = new ITypeParameter[length];
        int i = 0;
        while (i < typeParameterSignatures.length) {
            String typeParameterName = Signature.getTypeVariable(typeParameterSignatures[i]);
            typeParameters[i] = new TypeParameter(this, typeParameterName);
            ++i;
        }
        return typeParameters;
    }

    public String[] getTypeParameterSignatures() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        char[] genericSignature = info.getGenericSignature();
        if (genericSignature == null) {
            return CharOperation.NO_STRINGS;
        }
        char[] dotBaseSignature = CharOperation.replaceOnCopy(genericSignature, '/', '.');
        char[][] typeParams = Signature.getTypeParameters(dotBaseSignature);
        return CharOperation.toStrings(typeParams);
    }

    public IType getType(String typeName) {
        IClassFile classFile = this.getPackageFragment().getClassFile(String.valueOf(this.getTypeQualifiedName()) + "$" + typeName + ".class");
        return new BinaryType((JavaElement)((Object)classFile), typeName);
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
        int size = list.size();
        if (size == 0) {
            return NO_TYPES;
        }
        IType[] array = new IType[size];
        list.toArray(array);
        return array;
    }

    public boolean isAnonymous() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        return info.isAnonymous();
    }

    public boolean isClass() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        return TypeDeclaration.kind(info.getModifiers()) == 1;
    }

    public boolean isEnum() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        return TypeDeclaration.kind(info.getModifiers()) == 3;
    }

    public boolean isInterface() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        switch (TypeDeclaration.kind(info.getModifiers())) {
            case 2: 
            case 4: {
                return true;
            }
        }
        return false;
    }

    public boolean isAnnotation() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        return TypeDeclaration.kind(info.getModifiers()) == 4;
    }

    public boolean isLocal() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        return info.isLocal();
    }

    public boolean isMember() throws JavaModelException {
        IBinaryType info = (IBinaryType)this.getElementInfo();
        return info.isMember();
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
        ResolvedBinaryType resolvedHandle = new ResolvedBinaryType(this.parent, this.name, new String(binding.computeUniqueKey()));
        resolvedHandle.occurrenceCount = this.occurrenceCount;
        return resolvedHandle;
    }

    /*
     * Unable to fully structure code
     */
    public String sourceFileName(IBinaryType info) {
        block3: {
            block4: {
                sourceFileName = info.sourceFileName();
                if (sourceFileName != null) break block3;
                if (!info.isMember()) break block4;
                enclosingType = this.getDeclaringType();
                if (enclosingType != null) ** GOTO lbl8
                return null;
lbl-1000:
                // 1 sources

                {
                    enclosingType = enclosingType.getDeclaringType();
lbl8:
                    // 2 sources

                    ** while (enclosingType.getDeclaringType() != null)
                }
lbl9:
                // 1 sources

                return String.valueOf(enclosingType.getElementName()) + Util.defaultJavaExtension();
            }
            if (info.isLocal() || info.isAnonymous()) {
                typeQualifiedName = this.getTypeQualifiedName();
                dollar = typeQualifiedName.indexOf(36);
                if (dollar == -1) {
                    return String.valueOf(this.getElementName()) + Util.defaultJavaExtension();
                }
                return String.valueOf(typeQualifiedName.substring(0, dollar)) + Util.defaultJavaExtension();
            }
            return String.valueOf(this.getElementName()) + Util.defaultJavaExtension();
        }
        index = CharOperation.lastIndexOf('/', sourceFileName);
        return new String(sourceFileName, index + 1, sourceFileName.length - index - 1);
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        if (info == null) {
            this.toStringName(buffer);
            buffer.append(" (not open)");
        } else if (info == NO_INFO) {
            this.toStringName(buffer);
        } else {
            try {
                if (this.isAnnotation()) {
                    buffer.append("@interface ");
                } else if (this.isEnum()) {
                    buffer.append("enum ");
                } else if (this.isInterface()) {
                    buffer.append("interface ");
                } else {
                    buffer.append("class ");
                }
                this.toStringName(buffer);
            }
            catch (JavaModelException javaModelException) {
                buffer.append("<JavaModelException in toString of " + this.getElementName());
            }
        }
    }

    protected void toStringName(StringBuffer buffer) {
        if (this.getElementName().length() > 0) {
            super.toStringName(buffer);
        } else {
            buffer.append("<anonymous>");
        }
    }

    public String getAttachedJavadoc(IProgressMonitor monitor) throws JavaModelException {
        JavadocContents javadocContents = this.getJavadocContents(monitor);
        if (javadocContents == null) {
            return null;
        }
        return javadocContents.getTypeDoc();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public JavadocContents getJavadocContents(IProgressMonitor monitor) throws JavaModelException {
        JavaModelManager.PerProjectInfo projectInfo = JavaModelManager.getJavaModelManager().getPerProjectInfoCheckExistence(this.getJavaProject().getProject());
        JavadocContents cachedJavadoc = null;
        LRUCache lRUCache = projectInfo.javadocCache;
        synchronized (lRUCache) {
            cachedJavadoc = (JavadocContents)projectInfo.javadocCache.get(this);
        }
        if (cachedJavadoc != null && cachedJavadoc != EMPTY_JAVADOC) {
            return cachedJavadoc;
        }
        URL baseLocation = this.getJavadocBaseLocation();
        if (baseLocation == null) {
            return null;
        }
        StringBuffer pathBuffer = new StringBuffer(baseLocation.toExternalForm());
        if (pathBuffer.charAt(pathBuffer.length() - 1) != '/') {
            pathBuffer.append('/');
        }
        IPackageFragment pack = this.getPackageFragment();
        String typeQualifiedName = null;
        if (this.isMember()) {
            IType currentType = this;
            StringBuffer typeName = new StringBuffer();
            while (currentType != null) {
                typeName.insert(0, currentType.getElementName());
                currentType = currentType.getDeclaringType();
                if (currentType == null) continue;
                typeName.insert(0, '.');
            }
            typeQualifiedName = new String(typeName.toString());
        } else {
            typeQualifiedName = this.getElementName();
        }
        pathBuffer.append(pack.getElementName().replace('.', '/')).append('/').append(typeQualifiedName).append(".html");
        if (monitor != null && monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        String contents = this.getURLContents(String.valueOf(pathBuffer));
        JavadocContents javadocContents = new JavadocContents(this, contents);
        LRUCache lRUCache2 = projectInfo.javadocCache;
        synchronized (lRUCache2) {
            projectInfo.javadocCache.put(this, javadocContents);
        }
        return javadocContents;
    }
}

