/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICodeCompletionRequestor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.codeassist.CompletionRequestorWrapper;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.BecomeWorkingCopyOperation;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.BufferFactoryWrapper;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.ClassFileInfo;
import org.eclipse.jdt.internal.core.ClassFileWorkingCopy;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JarPackageFragment;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModelCache;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.NullBuffer;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Util;

public class ClassFile
extends Openable
implements IClassFile,
SuffixConstants {
    protected String name;
    protected BinaryType binaryType = null;

    protected ClassFile(PackageFragment parent, String nameWithoutExtension) {
        super(parent);
        this.name = nameWithoutExtension;
    }

    public ICompilationUnit becomeWorkingCopy(IProblemRequestor problemRequestor, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        ClassFileWorkingCopy workingCopy;
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = manager.getPerWorkingCopyInfo(workingCopy = new ClassFileWorkingCopy(this, owner == null ? DefaultWorkingCopyOwner.PRIMARY : owner), false, true, null);
        if (perWorkingCopyInfo == null) {
            this.close();
            BecomeWorkingCopyOperation operation = new BecomeWorkingCopyOperation(workingCopy, problemRequestor);
            operation.runOperation(monitor);
            return workingCopy;
        }
        return perWorkingCopyInfo.workingCopy;
    }

    protected boolean buildStructure(OpenableElementInfo info, IProgressMonitor pm, Map newElements, IResource underlyingResource) throws JavaModelException {
        IBinaryType typeInfo = this.getBinaryTypeInfo((IFile)underlyingResource);
        if (typeInfo == null) {
            info.setChildren(new IJavaElement[0]);
            return false;
        }
        IType type = this.getType();
        info.setChildren(new IJavaElement[]{type});
        newElements.put(type, typeInfo);
        ((ClassFileInfo)info).readBinaryChildren(this, (HashMap)newElements, typeInfo);
        return true;
    }

    public void codeComplete(int offset, ICompletionRequestor requestor) throws JavaModelException {
        this.codeComplete(offset, requestor, (WorkingCopyOwner)DefaultWorkingCopyOwner.PRIMARY);
    }

    public void codeComplete(int offset, ICompletionRequestor requestor, WorkingCopyOwner owner) throws JavaModelException {
        if (requestor == null) {
            throw new IllegalArgumentException("Completion requestor cannot be null");
        }
        this.codeComplete(offset, (CompletionRequestor)new CompletionRequestorWrapper(requestor), owner);
    }

    public void codeComplete(int offset, CompletionRequestor requestor) throws JavaModelException {
        this.codeComplete(offset, requestor, (WorkingCopyOwner)DefaultWorkingCopyOwner.PRIMARY);
    }

    public void codeComplete(int offset, CompletionRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        this.codeComplete(offset, requestor, DefaultWorkingCopyOwner.PRIMARY, monitor);
    }

    public void codeComplete(int offset, CompletionRequestor requestor, WorkingCopyOwner owner) throws JavaModelException {
        this.codeComplete(offset, requestor, owner, null);
    }

    public void codeComplete(int offset, CompletionRequestor requestor, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        String source = this.getSource();
        if (source != null) {
            BinaryType type = (BinaryType)this.getType();
            BasicCompilationUnit cu = new BasicCompilationUnit(this.getSource().toCharArray(), null, type.sourceFileName((IBinaryType)type.getElementInfo()), this.getJavaProject());
            this.codeComplete(cu, cu, offset, requestor, owner, null, monitor);
        }
    }

    public IJavaElement[] codeSelect(int offset, int length) throws JavaModelException {
        return this.codeSelect(offset, length, DefaultWorkingCopyOwner.PRIMARY);
    }

    public IJavaElement[] codeSelect(int offset, int length, WorkingCopyOwner owner) throws JavaModelException {
        char[] contents;
        IBuffer buffer = this.getBuffer();
        if (buffer != null && (contents = buffer.getCharacters()) != null) {
            BinaryType type = (BinaryType)this.getType();
            BasicCompilationUnit cu = new BasicCompilationUnit(contents, null, type.sourceFileName((IBinaryType)type.getElementInfo()));
            return super.codeSelect(cu, offset, length, owner);
        }
        return new IJavaElement[0];
    }

    protected Object createElementInfo() {
        return new ClassFileInfo();
    }

    public boolean equals(Object o) {
        if (!(o instanceof ClassFile)) {
            return false;
        }
        ClassFile other = (ClassFile)o;
        return this.name.equals(other.name) && this.parent.equals(other.parent);
    }

    public boolean existsUsingJarTypeCache() {
        if (this.getPackageFragmentRoot().isArchive()) {
            IType type;
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            Object info = manager.getInfo(type = this.getType());
            if (info == JavaModelCache.NON_EXISTING_JAR_TYPE_INFO) {
                return false;
            }
            if (info != null) {
                return true;
            }
            JavaElementInfo parentInfo = (JavaElementInfo)manager.getInfo(this.getParent());
            if (parentInfo != null) {
                IJavaElement[] children = parentInfo.getChildren();
                int i = 0;
                int length = children.length;
                while (i < length) {
                    if (this.name.equals(((ClassFile)children[i]).name)) {
                        return true;
                    }
                    ++i;
                }
                return false;
            }
            try {
                info = this.getJarBinaryTypeInfo((PackageFragment)this.getParent(), true);
            }
            catch (CoreException coreException) {
            }
            catch (IOException iOException) {
            }
            catch (ClassFormatException classFormatException) {}
            manager.putJarTypeInfo(type, info == null ? JavaModelCache.NON_EXISTING_JAR_TYPE_INFO : info);
            return info != null;
        }
        return this.exists();
    }

    protected IJavaElement findElement(IJavaElement elt, int position, SourceMapper mapper) {
        SourceRange range = mapper.getSourceRange(elt);
        if (range == null || position < range.getOffset() || range.getOffset() + range.getLength() - 1 < position) {
            return null;
        }
        if (elt instanceof IParent) {
            try {
                IJavaElement[] children = ((IParent)((Object)elt)).getChildren();
                int i = 0;
                while (i < children.length) {
                    IJavaElement match = this.findElement(children[i], position, mapper);
                    if (match != null) {
                        return match;
                    }
                    ++i;
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        return elt;
    }

    public IType findPrimaryType() {
        IType primaryType = this.getType();
        if (primaryType.exists()) {
            return primaryType;
        }
        return null;
    }

    public String getAttachedJavadoc(IProgressMonitor monitor) throws JavaModelException {
        return this.getType().getAttachedJavadoc(monitor);
    }

    public IBinaryType getBinaryTypeInfo(IFile file) throws JavaModelException {
        return this.getBinaryTypeInfo(file, true);
    }

    public IBinaryType getBinaryTypeInfo(IFile file, boolean fullyInitialize) throws JavaModelException {
        JavaElement pkg = (JavaElement)this.getParent();
        if (pkg instanceof JarPackageFragment) {
            try {
                IBinaryType info = this.getJarBinaryTypeInfo((PackageFragment)pkg, fullyInitialize);
                if (info == null) {
                    throw this.newNotPresentException();
                }
                return info;
            }
            catch (ClassFormatException cfe) {
                if (JavaCore.getPlugin().isDebugging()) {
                    cfe.printStackTrace(System.err);
                }
                return null;
            }
            catch (IOException ioe) {
                throw new JavaModelException(ioe, 985);
            }
            catch (CoreException e) {
                if (e instanceof JavaModelException) {
                    throw (JavaModelException)e;
                }
                throw new JavaModelException(e);
            }
        }
        byte[] contents = Util.getResourceContentsAsByteArray(file);
        try {
            return new ClassFileReader(contents, file.getFullPath().toString().toCharArray(), fullyInitialize);
        }
        catch (ClassFormatException classFormatException) {
            return null;
        }
    }

    public byte[] getBytes() throws JavaModelException {
        JavaElement pkg = (JavaElement)this.getParent();
        if (pkg instanceof JarPackageFragment) {
            JarPackageFragmentRoot root = (JarPackageFragmentRoot)pkg.getParent();
            ZipFile zip = null;
            try {
                zip = root.getJar();
                String entryName = Util.concatWith(((PackageFragment)pkg).names, this.getElementName(), '/');
                ZipEntry ze = zip.getEntry(entryName);
                if (ze != null) {
                    byte[] byArray = org.eclipse.jdt.internal.compiler.util.Util.getZipEntryByteContent(ze, zip);
                    return byArray;
                }
                try {
                    throw new JavaModelException(new JavaModelStatus(969, this));
                }
                catch (IOException ioe) {
                    throw new JavaModelException(ioe, 985);
                }
                catch (CoreException e) {
                    if (e instanceof JavaModelException) {
                        throw (JavaModelException)e;
                    }
                    throw new JavaModelException(e);
                }
            }
            finally {
                JavaModelManager.getJavaModelManager().closeZipFile(zip);
            }
        }
        IFile file = (IFile)this.resource();
        return Util.getResourceContentsAsByteArray(file);
    }

    private IBinaryType getJarBinaryTypeInfo(PackageFragment pkg, boolean fullyInitialize) throws CoreException, IOException, ClassFormatException {
        JarPackageFragmentRoot root = (JarPackageFragmentRoot)pkg.getParent();
        ZipFile zip = null;
        try {
            zip = root.getJar();
            String entryName = Util.concatWith(pkg.names, this.getElementName(), '/');
            ZipEntry ze = zip.getEntry(entryName);
            if (ze != null) {
                byte[] contents = org.eclipse.jdt.internal.compiler.util.Util.getZipEntryByteContent(ze, zip);
                String fileName = String.valueOf(root.getHandleIdentifier()) + '|' + entryName;
                ClassFileReader classFileReader = new ClassFileReader(contents, fileName.toCharArray(), fullyInitialize);
                return classFileReader;
            }
        }
        finally {
            JavaModelManager.getJavaModelManager().closeZipFile(zip);
        }
        return null;
    }

    public IBuffer getBuffer() throws JavaModelException {
        IStatus status = this.validateClassFile();
        if (status.isOK()) {
            return super.getBuffer();
        }
        IBinaryType info = ((ClassFile)this.getClassFile()).getBinaryTypeInfo((IFile)this.resource());
        IBuffer buffer = this.openBuffer(null, info);
        if (buffer != null && !(buffer instanceof NullBuffer)) {
            return buffer;
        }
        switch (status.getCode()) {
            case 967: 
            case 1006: {
                return null;
            }
        }
        throw new JavaModelException((IJavaModelStatus)status);
    }

    public IClassFile getClassFile() {
        return this;
    }

    public ITypeRoot getTypeRoot() {
        return this;
    }

    public IResource getCorrespondingResource() throws JavaModelException {
        IPackageFragmentRoot root = (IPackageFragmentRoot)this.getParent().getParent();
        if (root.isArchive()) {
            return null;
        }
        return this.getUnderlyingResource();
    }

    public IJavaElement getElementAt(int position) throws JavaModelException {
        IJavaElement parentElement = this.getParent();
        while (parentElement.getElementType() != 3) {
            parentElement = parentElement.getParent();
        }
        PackageFragmentRoot root = (PackageFragmentRoot)parentElement;
        SourceMapper mapper = root.getSourceMapper();
        if (mapper == null) {
            return null;
        }
        this.getBuffer();
        IType type = this.getType();
        return this.findElement(type, position, mapper);
    }

    public IJavaElement getElementAtConsideringSibling(int position) throws JavaModelException {
        IPackageFragment fragment = (IPackageFragment)this.getParent();
        PackageFragmentRoot root = (PackageFragmentRoot)fragment.getAncestor(3);
        SourceMapper mapper = root.getSourceMapper();
        if (mapper == null) {
            return null;
        }
        int index = this.name.indexOf(36);
        int prefixLength = index < 0 ? this.name.length() : index;
        IType type = null;
        int start = -1;
        int end = Integer.MAX_VALUE;
        IJavaElement[] children = fragment.getChildren();
        int i = 0;
        while (i < children.length) {
            int childPrefixLength;
            String childName = children[i].getElementName();
            int childIndex = childName.indexOf(36);
            int n = childPrefixLength = childIndex < 0 ? childName.indexOf(46) : childIndex;
            if (prefixLength == childPrefixLength && this.name.regionMatches(0, childName, 0, prefixLength)) {
                IClassFile classFile = (IClassFile)children[i];
                classFile.getBuffer();
                SourceRange range = mapper.getSourceRange(classFile.getType());
                if (range != SourceMapper.UNKNOWN_RANGE) {
                    int newStart = range.getOffset();
                    int newEnd = newStart + range.getLength() - 1;
                    if (newStart > start && newEnd < end && newStart <= position && newEnd >= position) {
                        type = classFile.getType();
                        start = newStart;
                        end = newEnd;
                    }
                }
            }
            ++i;
        }
        if (type != null) {
            return this.findElement(type, position, mapper);
        }
        return null;
    }

    public String getElementName() {
        return String.valueOf(this.name) + ".class";
    }

    public int getElementType() {
        return 6;
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner owner) {
        switch (token.charAt(0)) {
            case '[': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String typeName = memento.nextToken();
                BinaryType type = new BinaryType(this, typeName);
                return type.getHandleFromMemento(memento, owner);
            }
        }
        return null;
    }

    protected char getHandleMementoDelimiter() {
        return '(';
    }

    public IPath getPath() {
        PackageFragmentRoot root = this.getPackageFragmentRoot();
        if (root.isArchive()) {
            return root.getPath();
        }
        return this.getParent().getPath().append(this.getElementName());
    }

    public IResource resource(PackageFragmentRoot root) {
        return ((IContainer)((Openable)this.parent).resource(root)).getFile((IPath)new Path(this.getElementName()));
    }

    public String getSource() throws JavaModelException {
        IBuffer buffer = this.getBuffer();
        if (buffer == null) {
            return null;
        }
        return buffer.getContents();
    }

    public ISourceRange getSourceRange() throws JavaModelException {
        IBuffer buffer = this.getBuffer();
        if (buffer != null) {
            String contents = buffer.getContents();
            if (contents == null) {
                return null;
            }
            return new SourceRange(0, contents.length());
        }
        return null;
    }

    public String getTopLevelTypeName() {
        String topLevelTypeName = this.getElementName();
        int firstDollar = topLevelTypeName.indexOf(36);
        topLevelTypeName = firstDollar != -1 ? topLevelTypeName.substring(0, firstDollar) : topLevelTypeName.substring(0, topLevelTypeName.length() - SUFFIX_CLASS.length);
        return topLevelTypeName;
    }

    public IType getType() {
        if (this.binaryType == null) {
            this.binaryType = new BinaryType(this, this.getTypeName());
        }
        return this.binaryType;
    }

    public String getTypeName() {
        int lastDollar = this.name.lastIndexOf(36);
        return lastDollar > -1 ? Util.localTypeName(this.name, lastDollar, this.name.length()) : this.name;
    }

    public ICompilationUnit getWorkingCopy(WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        ClassFileWorkingCopy workingCopy = new ClassFileWorkingCopy(this, owner == null ? DefaultWorkingCopyOwner.PRIMARY : owner);
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = manager.getPerWorkingCopyInfo(workingCopy, false, true, null);
        if (perWorkingCopyInfo != null) {
            return perWorkingCopyInfo.getWorkingCopy();
        }
        BecomeWorkingCopyOperation op = new BecomeWorkingCopyOperation(workingCopy, null);
        op.runOperation(monitor);
        return workingCopy;
    }

    public IJavaElement getWorkingCopy(IProgressMonitor monitor, IBufferFactory factory) throws JavaModelException {
        return this.getWorkingCopy(BufferFactoryWrapper.create(factory), monitor);
    }

    protected boolean hasBuffer() {
        return true;
    }

    public int hashCode() {
        return Util.combineHashCodes(this.name.hashCode(), this.parent.hashCode());
    }

    public boolean isClass() throws JavaModelException {
        return this.getType().isClass();
    }

    public boolean isInterface() throws JavaModelException {
        return this.getType().isInterface();
    }

    public boolean isReadOnly() {
        return true;
    }

    private IStatus validateClassFile() {
        PackageFragmentRoot root = this.getPackageFragmentRoot();
        try {
            if (root.getKind() != 2) {
                return new JavaModelStatus(967, root);
            }
        }
        catch (JavaModelException e) {
            return e.getJavaModelStatus();
        }
        IJavaProject project = this.getJavaProject();
        return JavaConventions.validateClassFileName(this.getElementName(), project.getOption("org.eclipse.jdt.core.compiler.source", true), project.getOption("org.eclipse.jdt.core.compiler.compliance", true));
    }

    protected IBuffer openBuffer(IProgressMonitor pm, Object info) throws JavaModelException {
        IType outerMostEnclosingType = this.getOuterMostEnclosingType();
        IBuffer buffer = this.getBufferManager().getBuffer(outerMostEnclosingType.getClassFile());
        if (buffer == null) {
            IBinaryType typeInfo;
            SourceMapper mapper = this.getSourceMapper();
            IBinaryType iBinaryType = typeInfo = info instanceof IBinaryType ? (IBinaryType)info : null;
            if (mapper != null) {
                buffer = this.mapSource(mapper, typeInfo, outerMostEnclosingType.getClassFile());
            }
        }
        return buffer;
    }

    private IBuffer mapSource(SourceMapper mapper, IBinaryType info, IClassFile bufferOwner) {
        char[] contents = mapper.findSource(this.getType(), info);
        if (contents != null) {
            IBuffer buffer = BufferManager.createBuffer(bufferOwner);
            if (buffer == null) {
                return null;
            }
            BufferManager bufManager = this.getBufferManager();
            bufManager.addBuffer(buffer);
            if (buffer.getCharacters() == null) {
                buffer.setContents(contents);
            }
            buffer.addBufferChangedListener(this);
            mapper.mapSource(this.getOuterMostEnclosingType(), contents, info);
            return buffer;
        }
        IBuffer buffer = BufferManager.createNullBuffer(bufferOwner);
        if (buffer == null) {
            return null;
        }
        BufferManager bufManager = this.getBufferManager();
        bufManager.addBuffer(buffer);
        buffer.addBufferChangedListener(this);
        return buffer;
    }

    static String simpleName(char[] className) {
        if (className == null) {
            return null;
        }
        String simpleName = new String(ClassFile.unqualifiedName(className));
        int lastDollar = simpleName.lastIndexOf(36);
        if (lastDollar != -1) {
            return Util.localTypeName(simpleName, lastDollar, simpleName.length());
        }
        return simpleName;
    }

    private IType getOuterMostEnclosingType() {
        IType type = this.getType();
        IType enclosingType = type.getDeclaringType();
        while (enclosingType != null) {
            type = enclosingType;
            enclosingType = type.getDeclaringType();
        }
        return type;
    }

    public static char[] translatedName(char[] name) {
        if (name == null) {
            return null;
        }
        int nameLength = name.length;
        char[] newName = new char[nameLength];
        int i = 0;
        while (i < nameLength) {
            newName[i] = name[i] == '/' ? 46 : name[i];
            ++i;
        }
        return newName;
    }

    static char[][] translatedNames(char[][] names) {
        if (names == null) {
            return null;
        }
        int length = names.length;
        char[][] newNames = new char[length][];
        int i = 0;
        while (i < length) {
            newNames[i] = ClassFile.translatedName(names[i]);
            ++i;
        }
        return newNames;
    }

    static char[] unqualifiedName(char[] className) {
        if (className == null) {
            return null;
        }
        int count = 0;
        int i = className.length - 1;
        while (i > -1) {
            if (className[i] == '/') {
                char[] name = new char[count];
                System.arraycopy(className, i + 1, name, 0, count);
                return name;
            }
            ++count;
            --i;
        }
        return className;
    }

    public void codeComplete(int offset, final ICodeCompletionRequestor requestor) throws JavaModelException {
        if (requestor == null) {
            this.codeComplete(offset, (ICompletionRequestor)null);
            return;
        }
        this.codeComplete(offset, new ICompletionRequestor(){

            public void acceptAnonymousType(char[] superTypePackageName, char[] superTypeName, char[][] parameterPackageNames, char[][] parameterTypeNames, char[][] parameterNames, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
            }

            public void acceptClass(char[] packageName, char[] className, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
                requestor.acceptClass(packageName, className, completionName, modifiers, completionStart, completionEnd);
            }

            public void acceptError(IProblem error) {
            }

            public void acceptField(char[] declaringTypePackageName, char[] declaringTypeName, char[] fieldName, char[] typePackageName, char[] typeName, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
                requestor.acceptField(declaringTypePackageName, declaringTypeName, fieldName, typePackageName, typeName, completionName, modifiers, completionStart, completionEnd);
            }

            public void acceptInterface(char[] packageName, char[] interfaceName, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
                requestor.acceptInterface(packageName, interfaceName, completionName, modifiers, completionStart, completionEnd);
            }

            public void acceptKeyword(char[] keywordName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptKeyword(keywordName, completionStart, completionEnd);
            }

            public void acceptLabel(char[] labelName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptLabel(labelName, completionStart, completionEnd);
            }

            public void acceptLocalVariable(char[] localVarName, char[] typePackageName, char[] typeName, int modifiers, int completionStart, int completionEnd, int relevance) {
            }

            public void acceptMethod(char[] declaringTypePackageName, char[] declaringTypeName, char[] selector, char[][] parameterPackageNames, char[][] parameterTypeNames, char[][] parameterNames, char[] returnTypePackageName, char[] returnTypeName, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
                requestor.acceptMethod(declaringTypePackageName, declaringTypeName, selector, parameterPackageNames, parameterTypeNames, returnTypePackageName, returnTypeName, completionName, modifiers, completionStart, completionEnd);
            }

            public void acceptMethodDeclaration(char[] declaringTypePackageName, char[] declaringTypeName, char[] selector, char[][] parameterPackageNames, char[][] parameterTypeNames, char[][] parameterNames, char[] returnTypePackageName, char[] returnTypeName, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
            }

            public void acceptModifier(char[] modifierName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptModifier(modifierName, completionStart, completionEnd);
            }

            public void acceptPackage(char[] packageName, char[] completionName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptPackage(packageName, completionName, completionStart, completionEnd);
            }

            public void acceptType(char[] packageName, char[] typeName, char[] completionName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptType(packageName, typeName, completionName, completionStart, completionEnd);
            }

            public void acceptVariableName(char[] typePackageName, char[] typeName, char[] varName, char[] completionName, int completionStart, int completionEnd, int relevance) {
            }
        });
    }

    protected IStatus validateExistence(IResource underlyingResource) {
        IStatus status = this.validateClassFile();
        if (!status.isOK()) {
            return status;
        }
        if (underlyingResource != null) {
            PackageFragmentRoot root;
            if (!underlyingResource.isAccessible()) {
                return this.newDoesNotExistStatus();
            }
            if (underlyingResource instanceof IFolder && (root = this.getPackageFragmentRoot()).isArchive()) {
                return root.newDoesNotExistStatus();
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public ISourceRange getNameRange() {
        return null;
    }
}

