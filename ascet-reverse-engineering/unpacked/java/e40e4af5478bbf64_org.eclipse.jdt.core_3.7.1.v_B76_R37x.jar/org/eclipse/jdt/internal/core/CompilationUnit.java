/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PerformanceStats
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.text.edits.MalformedTreeException
 *  org.eclipse.text.edits.TextEdit
 *  org.eclipse.text.edits.UndoEdit
 */
package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.ICodeCompletionRequestor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IImportContainer;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.internal.codeassist.CompletionRequestorWrapper;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ASTHolderCUInfo;
import org.eclipse.jdt.internal.core.BecomeWorkingCopyOperation;
import org.eclipse.jdt.internal.core.BufferFactoryWrapper;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.CommitWorkingCopyOperation;
import org.eclipse.jdt.internal.core.CompilationUnitElementInfo;
import org.eclipse.jdt.internal.core.CompilationUnitProblemFinder;
import org.eclipse.jdt.internal.core.CompilationUnitStructureRequestor;
import org.eclipse.jdt.internal.core.CreateCompilationUnitOperation;
import org.eclipse.jdt.internal.core.CreateImportOperation;
import org.eclipse.jdt.internal.core.CreatePackageDeclarationOperation;
import org.eclipse.jdt.internal.core.CreateTypeOperation;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.DiscardWorkingCopyOperation;
import org.eclipse.jdt.internal.core.DocumentAdapter;
import org.eclipse.jdt.internal.core.ImportContainer;
import org.eclipse.jdt.internal.core.ImportContainerInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageDeclaration;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.ReconcileWorkingCopyOperation;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.UndoEdit;

public class CompilationUnit
extends Openable
implements ICompilationUnit,
org.eclipse.jdt.internal.compiler.env.ICompilationUnit,
SuffixConstants {
    static final int JLS2_INTERNAL = 2;
    private static final IImportDeclaration[] NO_IMPORTS = new IImportDeclaration[0];
    protected String name;
    public WorkingCopyOwner owner;

    public CompilationUnit(PackageFragment parent, String name, WorkingCopyOwner owner) {
        super(parent);
        this.name = name;
        this.owner = owner;
    }

    public UndoEdit applyTextEdit(TextEdit edit, IProgressMonitor monitor) throws JavaModelException {
        IBuffer buffer = this.getBuffer();
        if (buffer instanceof IBuffer.ITextEditCapability) {
            return ((IBuffer.ITextEditCapability)((Object)buffer)).applyTextEdit(edit, monitor);
        }
        if (buffer != null) {
            Object document = buffer instanceof IDocument ? (IDocument)buffer : new DocumentAdapter(buffer);
            try {
                UndoEdit undoEdit = edit.apply(document);
                return undoEdit;
            }
            catch (MalformedTreeException e) {
                throw new JavaModelException(e, 1011);
            }
            catch (BadLocationException e) {
                throw new JavaModelException(e, 1011);
            }
        }
        return null;
    }

    public void becomeWorkingCopy(IProblemRequestor problemRequestor, IProgressMonitor monitor) throws JavaModelException {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = manager.getPerWorkingCopyInfo(this, false, true, null);
        if (perWorkingCopyInfo == null) {
            this.close();
            BecomeWorkingCopyOperation operation = new BecomeWorkingCopyOperation(this, problemRequestor);
            operation.runOperation(monitor);
        }
    }

    public void becomeWorkingCopy(IProgressMonitor monitor) throws JavaModelException {
        IProblemRequestor requestor = this.owner == null ? null : this.owner.getProblemRequestor(this);
        this.becomeWorkingCopy(requestor, monitor);
    }

    protected boolean buildStructure(OpenableElementInfo info, IProgressMonitor pm, Map newElements, IResource underlyingResource) throws JavaModelException {
        Hashtable options;
        HashMap problems;
        int reconcileFlags;
        boolean resolveBindings;
        boolean createAST;
        CompilationUnitElementInfo unitInfo = (CompilationUnitElementInfo)info;
        IBuffer buffer = this.getBufferManager().getBuffer(this);
        if (buffer == null) {
            this.openBuffer(pm, unitInfo);
        }
        CompilationUnitStructureRequestor requestor = new CompilationUnitStructureRequestor(this, unitInfo, newElements);
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = this.getPerWorkingCopyInfo();
        IJavaProject project = this.getJavaProject();
        if (info instanceof ASTHolderCUInfo) {
            ASTHolderCUInfo astHolder = (ASTHolderCUInfo)info;
            createAST = astHolder.astLevel != 0;
            resolveBindings = astHolder.resolveBindings;
            reconcileFlags = astHolder.reconcileFlags;
            problems = astHolder.problems;
        } else {
            createAST = false;
            resolveBindings = false;
            reconcileFlags = 0;
            problems = null;
        }
        boolean computeProblems = perWorkingCopyInfo != null && perWorkingCopyInfo.isActive() && project != null && JavaProject.hasJavaNature(project.getProject());
        DefaultProblemFactory problemFactory = new DefaultProblemFactory();
        Map map = options = project == null ? JavaCore.getOptions() : project.getOptions(true);
        if (!computeProblems) {
            options.put("org.eclipse.jdt.core.compiler.taskTags", "");
        }
        CompilerOptions compilerOptions = new CompilerOptions(options);
        compilerOptions.ignoreMethodBodies = (reconcileFlags & 8) != 0;
        SourceElementParser parser = new SourceElementParser(requestor, problemFactory, compilerOptions, true, !createAST);
        parser.reportOnlyOneSyntaxError = !computeProblems;
        parser.setMethodsFullRecovery(true);
        parser.setStatementsRecovery((reconcileFlags & 2) != 0);
        if (!(computeProblems || resolveBindings || createAST)) {
            parser.javadocParser.checkDocComment = false;
        }
        requestor.parser = parser;
        if (underlyingResource == null) {
            underlyingResource = this.getResource();
        }
        if (underlyingResource != null) {
            unitInfo.timestamp = ((IFile)underlyingResource).getModificationStamp();
        }
        CompilationUnitDeclaration compilationUnitDeclaration = null;
        CompilationUnit source = this.cloneCachingContents();
        try {
            if (computeProblems) {
                if (problems == null) {
                    problems = new HashMap();
                    compilationUnitDeclaration = CompilationUnitProblemFinder.process(source, parser, this.owner, problems, createAST, reconcileFlags, pm);
                    try {
                        perWorkingCopyInfo.beginReporting();
                        Iterator iteraror = problems.values().iterator();
                        while (iteraror.hasNext()) {
                            CategorizedProblem[] categorizedProblems = (CategorizedProblem[])iteraror.next();
                            if (categorizedProblems == null) continue;
                            int i = 0;
                            int length = categorizedProblems.length;
                            while (i < length) {
                                perWorkingCopyInfo.acceptProblem(categorizedProblems[i]);
                                ++i;
                            }
                        }
                    }
                    finally {
                        perWorkingCopyInfo.endReporting();
                    }
                } else {
                    compilationUnitDeclaration = CompilationUnitProblemFinder.process(source, parser, this.owner, problems, createAST, reconcileFlags, pm);
                }
            } else {
                compilationUnitDeclaration = parser.parseCompilationUnit(source, true, pm);
            }
            if (createAST) {
                org.eclipse.jdt.core.dom.CompilationUnit cu;
                int astLevel = ((ASTHolderCUInfo)info).astLevel;
                ((ASTHolderCUInfo)info).ast = cu = AST.convertCompilationUnit(astLevel, compilationUnitDeclaration, options, computeProblems, source, reconcileFlags, pm);
            }
        }
        finally {
            if (compilationUnitDeclaration != null) {
                compilationUnitDeclaration.cleanUp();
            }
        }
        return unitInfo.isStructureKnown();
    }

    public CompilationUnit cloneCachingContents() {
        return new CompilationUnit((PackageFragment)this.parent, this.name, this.owner){
            private char[] cachedContents;

            public char[] getContents() {
                if (this.cachedContents == null) {
                    this.cachedContents = CompilationUnit.this.getContents();
                }
                return this.cachedContents;
            }

            public CompilationUnit originalFromClone() {
                return CompilationUnit.this;
            }
        };
    }

    public boolean canBeRemovedFromCache() {
        if (this.getPerWorkingCopyInfo() != null) {
            return false;
        }
        return super.canBeRemovedFromCache();
    }

    public boolean canBufferBeRemovedFromCache(IBuffer buffer) {
        if (this.getPerWorkingCopyInfo() != null) {
            return false;
        }
        return super.canBufferBeRemovedFromCache(buffer);
    }

    public void close() throws JavaModelException {
        if (this.getPerWorkingCopyInfo() != null) {
            return;
        }
        super.close();
    }

    protected void closing(Object info) {
        if (this.getPerWorkingCopyInfo() == null) {
            super.closing(info);
        }
    }

    public void codeComplete(int offset, ICompletionRequestor requestor) throws JavaModelException {
        this.codeComplete(offset, requestor, (WorkingCopyOwner)DefaultWorkingCopyOwner.PRIMARY);
    }

    public void codeComplete(int offset, ICompletionRequestor requestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        if (requestor == null) {
            throw new IllegalArgumentException("Completion requestor cannot be null");
        }
        this.codeComplete(offset, (CompletionRequestor)new CompletionRequestorWrapper(requestor), workingCopyOwner);
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

    public void codeComplete(int offset, CompletionRequestor requestor) throws JavaModelException {
        this.codeComplete(offset, requestor, (WorkingCopyOwner)DefaultWorkingCopyOwner.PRIMARY);
    }

    public void codeComplete(int offset, CompletionRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        this.codeComplete(offset, requestor, DefaultWorkingCopyOwner.PRIMARY, monitor);
    }

    public void codeComplete(int offset, CompletionRequestor requestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        this.codeComplete(offset, requestor, workingCopyOwner, null);
    }

    public void codeComplete(int offset, CompletionRequestor requestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor monitor) throws JavaModelException {
        this.codeComplete(this, this.isWorkingCopy() ? (org.eclipse.jdt.internal.compiler.env.ICompilationUnit)((Object)this.getOriginalElement()) : this, offset, requestor, workingCopyOwner, this, monitor);
    }

    public IJavaElement[] codeSelect(int offset, int length) throws JavaModelException {
        return this.codeSelect(offset, length, DefaultWorkingCopyOwner.PRIMARY);
    }

    public IJavaElement[] codeSelect(int offset, int length, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return super.codeSelect(this, offset, length, workingCopyOwner);
    }

    public void commit(boolean force, IProgressMonitor monitor) throws JavaModelException {
        this.commitWorkingCopy(force, monitor);
    }

    public void commitWorkingCopy(boolean force, IProgressMonitor monitor) throws JavaModelException {
        CommitWorkingCopyOperation op = new CommitWorkingCopyOperation(this, force);
        op.runOperation(monitor);
    }

    public void copy(IJavaElement container, IJavaElement sibling, String rename, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (container == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        IJavaElement[] elements = new IJavaElement[]{this};
        IJavaElement[] containers = new IJavaElement[]{container};
        String[] renamings = null;
        if (rename != null) {
            renamings = new String[]{rename};
        }
        this.getJavaModel().copy(elements, containers, null, renamings, force, monitor);
    }

    protected Object createElementInfo() {
        return new CompilationUnitElementInfo();
    }

    public IImportDeclaration createImport(String importName, IJavaElement sibling, IProgressMonitor monitor) throws JavaModelException {
        return this.createImport(importName, sibling, 0, monitor);
    }

    public IImportDeclaration createImport(String importName, IJavaElement sibling, int flags, IProgressMonitor monitor) throws JavaModelException {
        CreateImportOperation op = new CreateImportOperation(importName, this, flags);
        if (sibling != null) {
            op.createBefore(sibling);
        }
        op.runOperation(monitor);
        return this.getImport(importName);
    }

    public IPackageDeclaration createPackageDeclaration(String pkg, IProgressMonitor monitor) throws JavaModelException {
        CreatePackageDeclarationOperation op = new CreatePackageDeclarationOperation(pkg, this);
        op.runOperation(monitor);
        return this.getPackageDeclaration(pkg);
    }

    public IType createType(String content, IJavaElement sibling, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (!this.exists()) {
            IPackageFragment pkg = (IPackageFragment)this.getParent();
            String source = "";
            if (!pkg.isDefaultPackage()) {
                String lineSeparator = Util.getLineSeparator(null, this.getJavaProject());
                source = "package " + pkg.getElementName() + ";" + lineSeparator + lineSeparator;
            }
            CreateCompilationUnitOperation op = new CreateCompilationUnitOperation(pkg, this.name, source, force);
            op.runOperation(monitor);
        }
        CreateTypeOperation op = new CreateTypeOperation(this, content, force);
        if (sibling != null) {
            op.createBefore(sibling);
        }
        op.runOperation(monitor);
        return (IType)op.getResultElements()[0];
    }

    public void delete(boolean force, IProgressMonitor monitor) throws JavaModelException {
        IJavaElement[] elements = new IJavaElement[]{this};
        this.getJavaModel().delete(elements, force, monitor);
    }

    public void destroy() {
        block2: {
            try {
                this.discardWorkingCopy();
            }
            catch (JavaModelException e) {
                if (!JavaModelManager.VERBOSE) break block2;
                e.printStackTrace();
            }
        }
    }

    public void discardWorkingCopy() throws JavaModelException {
        DiscardWorkingCopyOperation op = new DiscardWorkingCopyOperation(this);
        op.runOperation(null);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CompilationUnit)) {
            return false;
        }
        CompilationUnit other = (CompilationUnit)obj;
        return this.owner.equals(other.owner) && super.equals(obj);
    }

    public IJavaElement[] findElements(IJavaElement element) {
        ArrayList<IJavaElement> children = new ArrayList<IJavaElement>();
        while (element != null && element.getElementType() != 5) {
            children.add(element);
            element = element.getParent();
        }
        if (element == null) {
            return null;
        }
        ISourceReference currentElement = this;
        int i = children.size() - 1;
        while (i >= 0) {
            SourceRefElement child = (SourceRefElement)children.get(i);
            switch (child.getElementType()) {
                case 11: {
                    currentElement = ((ICompilationUnit)currentElement).getPackageDeclaration(child.getElementName());
                    break;
                }
                case 12: {
                    currentElement = ((ICompilationUnit)currentElement).getImportContainer();
                    break;
                }
                case 13: {
                    currentElement = ((IImportContainer)currentElement).getImport(child.getElementName());
                    break;
                }
                case 7: {
                    switch (currentElement.getElementType()) {
                        case 5: {
                            currentElement = ((ICompilationUnit)currentElement).getType(child.getElementName());
                            break;
                        }
                        case 7: {
                            currentElement = ((IType)currentElement).getType(child.getElementName());
                            break;
                        }
                        case 8: 
                        case 9: 
                        case 10: {
                            currentElement = ((IMember)currentElement).getType(child.getElementName(), child.occurrenceCount);
                        }
                    }
                    break;
                }
                case 10: {
                    currentElement = ((IType)currentElement).getInitializer(child.occurrenceCount);
                    break;
                }
                case 8: {
                    currentElement = ((IType)currentElement).getField(child.getElementName());
                    break;
                }
                case 9: {
                    currentElement = ((IType)currentElement).getMethod(child.getElementName(), ((IMethod)((Object)child)).getParameterTypes());
                }
            }
            --i;
        }
        if (currentElement != null && currentElement.exists()) {
            return new IJavaElement[]{currentElement};
        }
        return null;
    }

    public IType findPrimaryType() {
        String typeName = Util.getNameWithoutJavaLikeExtension(this.getElementName());
        IType primaryType = this.getType(typeName);
        if (primaryType.exists()) {
            return primaryType;
        }
        return null;
    }

    public IJavaElement findSharedWorkingCopy(IBufferFactory factory) {
        if (factory == null) {
            factory = this.getBufferManager().getDefaultBufferFactory();
        }
        return this.findWorkingCopy(BufferFactoryWrapper.create(factory));
    }

    public ICompilationUnit findWorkingCopy(WorkingCopyOwner workingCopyOwner) {
        CompilationUnit cu = new CompilationUnit((PackageFragment)this.parent, this.getElementName(), workingCopyOwner);
        if (workingCopyOwner == DefaultWorkingCopyOwner.PRIMARY) {
            return cu;
        }
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = cu.getPerWorkingCopyInfo();
        if (perWorkingCopyInfo != null) {
            return perWorkingCopyInfo.getWorkingCopy();
        }
        return null;
    }

    public IType[] getAllTypes() throws JavaModelException {
        IType[] types = this.getTypes();
        ArrayList<IType> allTypes = new ArrayList<IType>(types.length);
        ArrayList<IType> typesToTraverse = new ArrayList<IType>(types.length);
        int i = 0;
        while (i < types.length) {
            typesToTraverse.add(types[i]);
            ++i;
        }
        while (!typesToTraverse.isEmpty()) {
            IType type = (IType)typesToTraverse.get(0);
            typesToTraverse.remove(type);
            allTypes.add(type);
            types = type.getTypes();
            i = 0;
            while (i < types.length) {
                typesToTraverse.add(types[i]);
                ++i;
            }
        }
        IType[] arrayOfAllTypes = new IType[allTypes.size()];
        allTypes.toArray(arrayOfAllTypes);
        return arrayOfAllTypes;
    }

    public ICompilationUnit getCompilationUnit() {
        return this;
    }

    public char[] getContents() {
        IBuffer buffer = this.getBufferManager().getBuffer(this);
        if (buffer == null) {
            String encoding;
            IFile file = (IFile)this.getResource();
            try {
                encoding = file.getCharset();
            }
            catch (CoreException coreException) {
                encoding = null;
            }
            try {
                return Util.getResourceContentsAsCharArray(file, encoding);
            }
            catch (JavaModelException e) {
                if (JavaModelManager.getJavaModelManager().abortOnMissingSource.get() == Boolean.TRUE) {
                    IOException ioException = e.getJavaModelStatus().getCode() == 985 ? (IOException)e.getException() : new IOException(e.getMessage());
                    throw new AbortCompilationUnit(null, ioException, encoding);
                }
                Util.log((Throwable)((Object)e), Messages.bind(Messages.file_notFound, file.getFullPath().toString()));
                return CharOperation.NO_CHAR;
            }
        }
        char[] contents = buffer.getCharacters();
        if (contents == null) {
            if (JavaModelManager.getJavaModelManager().abortOnMissingSource.get() == Boolean.TRUE) {
                String encoding;
                IOException ioException = new IOException(Messages.buffer_closed);
                IFile file = (IFile)this.getResource();
                try {
                    encoding = file.getCharset();
                }
                catch (CoreException coreException) {
                    encoding = null;
                }
                throw new AbortCompilationUnit(null, ioException, encoding);
            }
            return CharOperation.NO_CHAR;
        }
        return contents;
    }

    public IResource getCorrespondingResource() throws JavaModelException {
        PackageFragmentRoot root = this.getPackageFragmentRoot();
        if (root == null || root.isArchive()) {
            return null;
        }
        return this.getUnderlyingResource();
    }

    public IJavaElement getElementAt(int position) throws JavaModelException {
        IJavaElement e = this.getSourceElementAt(position);
        if (e == this) {
            return null;
        }
        return e;
    }

    public String getElementName() {
        return this.name;
    }

    public int getElementType() {
        return 5;
    }

    public char[] getFileName() {
        return this.getPath().toString().toCharArray();
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner workingCopyOwner) {
        switch (token.charAt(0)) {
            case '#': {
                JavaElement container = (JavaElement)((Object)this.getImportContainer());
                return container.getHandleFromMemento(token, memento, workingCopyOwner);
            }
            case '%': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String pkgName = memento.nextToken();
                JavaElement pkgDecl = (JavaElement)((Object)this.getPackageDeclaration(pkgName));
                return pkgDecl.getHandleFromMemento(memento, workingCopyOwner);
            }
            case '[': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String typeName = memento.nextToken();
                JavaElement type = (JavaElement)((Object)this.getType(typeName));
                return type.getHandleFromMemento(memento, workingCopyOwner);
            }
        }
        return null;
    }

    protected char getHandleMementoDelimiter() {
        return '{';
    }

    public IImportDeclaration getImport(String importName) {
        return this.getImportContainer().getImport(importName);
    }

    public IImportContainer getImportContainer() {
        return new ImportContainer(this);
    }

    public IImportDeclaration[] getImports() throws JavaModelException {
        IImportContainer container = this.getImportContainer();
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        Object info = manager.getInfo(container);
        if (info == null) {
            if (manager.getInfo(this) != null) {
                return NO_IMPORTS;
            }
            this.open(null);
            info = manager.getInfo(container);
            if (info == null) {
                return NO_IMPORTS;
            }
        }
        IJavaElement[] elements = ((ImportContainerInfo)info).children;
        int length = elements.length;
        IImportDeclaration[] imports = new IImportDeclaration[length];
        System.arraycopy(elements, 0, imports, 0, length);
        return imports;
    }

    public ITypeRoot getTypeRoot() {
        return this;
    }

    public char[] getMainTypeName() {
        return Util.getNameWithoutJavaLikeExtension(this.getElementName()).toCharArray();
    }

    public IJavaElement getOriginal(IJavaElement workingCopyElement) {
        if (!this.isWorkingCopy()) {
            return null;
        }
        CompilationUnit cu = (CompilationUnit)workingCopyElement.getAncestor(5);
        if (cu == null || !this.owner.equals(cu.owner)) {
            return null;
        }
        return workingCopyElement.getPrimaryElement();
    }

    public IJavaElement getOriginalElement() {
        if (!this.isWorkingCopy()) {
            return null;
        }
        return this.getPrimaryElement();
    }

    public WorkingCopyOwner getOwner() {
        return this.isPrimary() || !this.isWorkingCopy() ? null : this.owner;
    }

    public IPackageDeclaration getPackageDeclaration(String pkg) {
        return new PackageDeclaration(this, pkg);
    }

    public IPackageDeclaration[] getPackageDeclarations() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(11);
        IPackageDeclaration[] array = new IPackageDeclaration[list.size()];
        list.toArray(array);
        return array;
    }

    public char[][] getPackageName() {
        PackageFragment packageFragment = (PackageFragment)this.getParent();
        if (packageFragment == null) {
            return CharOperation.NO_CHAR_CHAR;
        }
        return Util.toCharArrays(packageFragment.names);
    }

    public IPath getPath() {
        PackageFragmentRoot root = this.getPackageFragmentRoot();
        if (root == null) {
            return new Path(this.getElementName());
        }
        if (root.isArchive()) {
            return root.getPath();
        }
        return this.getParent().getPath().append(this.getElementName());
    }

    public JavaModelManager.PerWorkingCopyInfo getPerWorkingCopyInfo() {
        return JavaModelManager.getJavaModelManager().getPerWorkingCopyInfo(this, false, false, null);
    }

    public ICompilationUnit getPrimary() {
        return (ICompilationUnit)this.getPrimaryElement(true);
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        if (checkOwner && this.isPrimary()) {
            return this;
        }
        return new CompilationUnit((PackageFragment)this.getParent(), this.getElementName(), DefaultWorkingCopyOwner.PRIMARY);
    }

    public IResource resource(PackageFragmentRoot root) {
        if (root == null) {
            return null;
        }
        return ((IContainer)((Openable)this.parent).resource(root)).getFile((IPath)new Path(this.getElementName()));
    }

    public String getSource() throws JavaModelException {
        IBuffer buffer = this.getBuffer();
        if (buffer == null) {
            return "";
        }
        return buffer.getContents();
    }

    public ISourceRange getSourceRange() throws JavaModelException {
        return ((CompilationUnitElementInfo)this.getElementInfo()).getSourceRange();
    }

    public IType getType(String typeName) {
        return new SourceType(this, typeName);
    }

    public IType[] getTypes() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(7);
        IType[] array = new IType[list.size()];
        list.toArray(array);
        return array;
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        if (this.isWorkingCopy() && !this.isPrimary()) {
            return null;
        }
        return super.getUnderlyingResource();
    }

    public IJavaElement getSharedWorkingCopy(IProgressMonitor pm, IBufferFactory factory, IProblemRequestor problemRequestor) throws JavaModelException {
        if (factory == null) {
            factory = this.getBufferManager().getDefaultBufferFactory();
        }
        return this.getWorkingCopy(BufferFactoryWrapper.create(factory), problemRequestor, pm);
    }

    public IJavaElement getWorkingCopy() throws JavaModelException {
        return this.getWorkingCopy(null);
    }

    public ICompilationUnit getWorkingCopy(IProgressMonitor monitor) throws JavaModelException {
        return this.getWorkingCopy(new WorkingCopyOwner(){}, null, monitor);
    }

    public ICompilationUnit getWorkingCopy(WorkingCopyOwner workingCopyOwner, IProgressMonitor monitor) throws JavaModelException {
        return this.getWorkingCopy(workingCopyOwner, null, monitor);
    }

    public IJavaElement getWorkingCopy(IProgressMonitor monitor, IBufferFactory factory, IProblemRequestor problemRequestor) throws JavaModelException {
        return this.getWorkingCopy(BufferFactoryWrapper.create(factory), problemRequestor, monitor);
    }

    public ICompilationUnit getWorkingCopy(WorkingCopyOwner workingCopyOwner, IProblemRequestor problemRequestor, IProgressMonitor monitor) throws JavaModelException {
        CompilationUnit workingCopy;
        if (!this.isPrimary()) {
            return this;
        }
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = manager.getPerWorkingCopyInfo(workingCopy = new CompilationUnit((PackageFragment)this.getParent(), this.getElementName(), workingCopyOwner), false, true, null);
        if (perWorkingCopyInfo != null) {
            return perWorkingCopyInfo.getWorkingCopy();
        }
        BecomeWorkingCopyOperation op = new BecomeWorkingCopyOperation(workingCopy, problemRequestor);
        op.runOperation(monitor);
        return workingCopy;
    }

    protected boolean hasBuffer() {
        return true;
    }

    public boolean hasResourceChanged() {
        if (!this.isWorkingCopy()) {
            return false;
        }
        Object info = JavaModelManager.getJavaModelManager().getInfo(this);
        if (info == null) {
            return false;
        }
        IResource resource = this.getResource();
        if (resource == null) {
            return false;
        }
        return ((CompilationUnitElementInfo)info).timestamp != resource.getModificationStamp();
    }

    public boolean isBasedOn(IResource resource) {
        if (!this.isWorkingCopy()) {
            return false;
        }
        if (!this.getResource().equals((Object)resource)) {
            return false;
        }
        return !this.hasResourceChanged();
    }

    public boolean isConsistent() {
        return !JavaModelManager.getJavaModelManager().getElementsOutOfSynchWithBuffers().contains(this);
    }

    public boolean isPrimary() {
        return this.owner == DefaultWorkingCopyOwner.PRIMARY;
    }

    protected boolean isSourceElement() {
        return true;
    }

    protected IStatus validateCompilationUnit(IResource resource) {
        PackageFragmentRoot root = this.getPackageFragmentRoot();
        try {
            if (root.getKind() != 1) {
                return new JavaModelStatus(967, root);
            }
        }
        catch (JavaModelException e) {
            return e.getJavaModelStatus();
        }
        if (resource != null) {
            char[][] exclusionPatterns;
            char[][] inclusionPatterns = root.fullInclusionPatternChars();
            if (Util.isExcluded(resource, inclusionPatterns, exclusionPatterns = root.fullExclusionPatternChars())) {
                return new JavaModelStatus(1006, this);
            }
            if (!resource.isAccessible()) {
                return new JavaModelStatus(969, this);
            }
        }
        IJavaProject project = this.getJavaProject();
        return JavaConventions.validateCompilationUnitName(this.getElementName(), project.getOption("org.eclipse.jdt.core.compiler.source", true), project.getOption("org.eclipse.jdt.core.compiler.compliance", true));
    }

    public boolean isWorkingCopy() {
        return !this.isPrimary() || this.getPerWorkingCopyInfo() != null;
    }

    public void makeConsistent(IProgressMonitor monitor) throws JavaModelException {
        this.makeConsistent(0, false, 0, null, monitor);
    }

    public org.eclipse.jdt.core.dom.CompilationUnit makeConsistent(int astLevel, boolean resolveBindings, int reconcileFlags, HashMap problems, IProgressMonitor monitor) throws JavaModelException {
        if (this.isConsistent()) {
            return null;
        }
        try {
            JavaModelManager.getJavaModelManager().abortOnMissingSource.set(Boolean.TRUE);
            if (astLevel != 0 || problems != null) {
                ASTHolderCUInfo info = new ASTHolderCUInfo();
                info.astLevel = astLevel;
                info.resolveBindings = resolveBindings;
                info.reconcileFlags = reconcileFlags;
                info.problems = problems;
                this.openWhenClosed(info, monitor);
                org.eclipse.jdt.core.dom.CompilationUnit result = info.ast;
                info.ast = null;
                org.eclipse.jdt.core.dom.CompilationUnit compilationUnit = result;
                return compilationUnit;
            }
            this.openWhenClosed(this.createElementInfo(), monitor);
            return null;
        }
        finally {
            JavaModelManager.getJavaModelManager().abortOnMissingSource.set(null);
        }
    }

    public void move(IJavaElement container, IJavaElement sibling, String rename, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (container == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        IJavaElement[] elements = new IJavaElement[]{this};
        IJavaElement[] containers = new IJavaElement[]{container};
        String[] renamings = null;
        if (rename != null) {
            renamings = new String[]{rename};
        }
        this.getJavaModel().move(elements, containers, null, renamings, force, monitor);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected IBuffer openBuffer(IProgressMonitor pm, Object info) throws JavaModelException {
        IBuffer buffer;
        BufferManager bufManager = this.getBufferManager();
        boolean isWorkingCopy = this.isWorkingCopy();
        IBuffer iBuffer = buffer = isWorkingCopy ? this.owner.createBuffer(this) : BufferManager.createBuffer(this);
        if (buffer == null) {
            return null;
        }
        CompilationUnit original = null;
        boolean mustSetToOriginalContent = false;
        if (isWorkingCopy) {
            mustSetToOriginalContent = !this.isPrimary() && (original = new CompilationUnit((PackageFragment)this.getParent(), this.getElementName(), DefaultWorkingCopyOwner.PRIMARY)).isOpen();
        }
        BufferManager bufferManager = bufManager;
        synchronized (bufferManager) {
            IBuffer existingBuffer = bufManager.getBuffer(this);
            if (existingBuffer != null) {
                return existingBuffer;
            }
            if (buffer.getCharacters() == null) {
                if (isWorkingCopy) {
                    if (mustSetToOriginalContent) {
                        buffer.setContents(original.getSource());
                    } else {
                        IFile file = (IFile)this.getResource();
                        if (file == null || !file.exists()) {
                            buffer.setContents(CharOperation.NO_CHAR);
                        } else {
                            buffer.setContents(Util.getResourceContentsAsCharArray(file));
                        }
                    }
                } else {
                    IFile file = (IFile)this.getResource();
                    if (file == null || !file.exists()) {
                        throw this.newNotPresentException();
                    }
                    buffer.setContents(Util.getResourceContentsAsCharArray(file));
                }
            }
            bufManager.addBuffer(buffer);
            buffer.addBufferChangedListener(this);
        }
        return buffer;
    }

    protected void openAncestors(HashMap newElements, IProgressMonitor monitor) throws JavaModelException {
        if (!this.isWorkingCopy()) {
            super.openAncestors(newElements, monitor);
        }
    }

    public CompilationUnit originalFromClone() {
        return this;
    }

    public IMarker[] reconcile() throws JavaModelException {
        this.reconcile(0, false, false, null, null);
        return null;
    }

    public void reconcile(boolean forceProblemDetection, IProgressMonitor monitor) throws JavaModelException {
        this.reconcile(0, forceProblemDetection ? 1 : 0, null, monitor);
    }

    public org.eclipse.jdt.core.dom.CompilationUnit reconcile(int astLevel, boolean forceProblemDetection, WorkingCopyOwner workingCopyOwner, IProgressMonitor monitor) throws JavaModelException {
        return this.reconcile(astLevel, forceProblemDetection ? 1 : 0, workingCopyOwner, monitor);
    }

    public org.eclipse.jdt.core.dom.CompilationUnit reconcile(int astLevel, boolean forceProblemDetection, boolean enableStatementsRecovery, WorkingCopyOwner workingCopyOwner, IProgressMonitor monitor) throws JavaModelException {
        int flags = 0;
        if (forceProblemDetection) {
            flags |= 1;
        }
        if (enableStatementsRecovery) {
            flags |= 2;
        }
        return this.reconcile(astLevel, flags, workingCopyOwner, monitor);
    }

    public org.eclipse.jdt.core.dom.CompilationUnit reconcile(int astLevel, int reconcileFlags, WorkingCopyOwner workingCopyOwner, IProgressMonitor monitor) throws JavaModelException {
        if (!this.isWorkingCopy()) {
            return null;
        }
        if (workingCopyOwner == null) {
            workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
        }
        PerformanceStats stats = null;
        if (ReconcileWorkingCopyOperation.PERF) {
            stats = PerformanceStats.getStats((String)"org.eclipse.jdt.core/perf/reconcile", (Object)this);
            stats.startRun(new String(this.getFileName()));
        }
        ReconcileWorkingCopyOperation op = new ReconcileWorkingCopyOperation(this, astLevel, reconcileFlags, workingCopyOwner);
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        try {
            manager.cacheZipFiles(this);
            op.runOperation(monitor);
        }
        finally {
            manager.flushZipFiles(this);
        }
        if (ReconcileWorkingCopyOperation.PERF) {
            stats.endRun();
        }
        return op.ast;
    }

    public void rename(String newName, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (newName == null) {
            throw new IllegalArgumentException(Messages.operation_nullName);
        }
        IJavaElement[] elements = new IJavaElement[]{this};
        IJavaElement[] dests = new IJavaElement[]{this.getParent()};
        String[] renamings = new String[]{newName};
        this.getJavaModel().rename(elements, dests, renamings, force, monitor);
    }

    public void restore() throws JavaModelException {
        if (!this.isWorkingCopy()) {
            return;
        }
        CompilationUnit original = (CompilationUnit)this.getOriginalElement();
        IBuffer buffer = this.getBuffer();
        if (buffer == null) {
            return;
        }
        buffer.setContents(original.getContents());
        this.updateTimeStamp(original);
        this.makeConsistent(null);
    }

    public void save(IProgressMonitor pm, boolean force) throws JavaModelException {
        if (this.isWorkingCopy()) {
            this.reconcile();
        } else {
            super.save(pm, force);
        }
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        if (!this.isPrimary()) {
            buffer.append(this.tabString(tab));
            buffer.append("[Working copy] ");
            this.toStringName(buffer);
        } else if (this.isWorkingCopy()) {
            buffer.append(this.tabString(tab));
            buffer.append("[Working copy] ");
            this.toStringName(buffer);
            if (info == null) {
                buffer.append(" (not open)");
            }
        } else {
            super.toStringInfo(tab, buffer, info, showResolvedInfo);
        }
    }

    protected void updateTimeStamp(CompilationUnit original) throws JavaModelException {
        long timeStamp = ((IFile)original.getResource()).getModificationStamp();
        if (timeStamp == -1L) {
            throw new JavaModelException(new JavaModelStatus(995));
        }
        ((CompilationUnitElementInfo)this.getElementInfo()).timestamp = timeStamp;
    }

    protected IStatus validateExistence(IResource underlyingResource) {
        IStatus status;
        if (!this.isWorkingCopy() && !(status = this.validateCompilationUnit(underlyingResource)).isOK()) {
            return status;
        }
        if (!this.isPrimary() && this.getPerWorkingCopyInfo() == null) {
            return this.newDoesNotExistStatus();
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public ISourceRange getNameRange() {
        return null;
    }
}

