/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core.dom;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTConverter;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTRecoveryPropagator;
import org.eclipse.jdt.core.dom.ASTRequestor;
import org.eclipse.jdt.core.dom.ASTSyntaxErrorPropagator;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.CompilationUnitResolver;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FileASTRequestor;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.NodeSearcher;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.util.CodeSnippetParsingUtil;
import org.eclipse.jdt.internal.core.util.RecordedParsingInformation;
import org.eclipse.jdt.internal.core.util.Util;

public class ASTParser {
    public static final int K_EXPRESSION = 1;
    public static final int K_STATEMENTS = 2;
    public static final int K_CLASS_BODY_DECLARATIONS = 4;
    public static final int K_COMPILATION_UNIT = 8;
    private final int apiLevel;
    private int astKind;
    private Map compilerOptions;
    private int focalPointPosition;
    private char[] rawSource = null;
    private ITypeRoot typeRoot = null;
    private int sourceOffset = 0;
    private int sourceLength = -1;
    private WorkingCopyOwner workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
    private IJavaProject project = null;
    private String unitName = null;
    private String[] classpaths;
    private String[] sourcepaths;
    private String[] sourcepathsEncodings;
    private int bits;

    public static ASTParser newParser(int level) {
        return new ASTParser(level);
    }

    ASTParser(int level) {
        switch (level) {
            case 2: 
            case 3: 
            case 4: {
                break;
            }
            default: {
                throw new IllegalArgumentException();
            }
        }
        this.apiLevel = level;
        this.initializeDefaults();
    }

    private List getClasspath() throws IllegalStateException {
        Main main = new Main(new PrintWriter(System.out), new PrintWriter(System.err), false, null, null);
        ArrayList allClasspaths = new ArrayList();
        try {
            ArrayList pendingErrors;
            int max;
            int i;
            if ((this.bits & 0x20) != 0) {
                org.eclipse.jdt.internal.compiler.util.Util.collectRunningVMBootclasspath(allClasspaths);
            }
            if (this.sourcepaths != null) {
                i = 0;
                max = this.sourcepaths.length;
                while (i < max) {
                    String encoding = this.sourcepathsEncodings == null ? null : this.sourcepathsEncodings[i];
                    main.processPathEntries(4, allClasspaths, this.sourcepaths[i], encoding, true, false);
                    ++i;
                }
            }
            if (this.classpaths != null) {
                i = 0;
                max = this.classpaths.length;
                while (i < max) {
                    main.processPathEntries(4, allClasspaths, this.classpaths[i], null, false, false);
                    ++i;
                }
            }
            if ((pendingErrors = main.pendingErrors) != null && pendingErrors.size() != 0) {
                throw new IllegalStateException("invalid environment settings");
            }
        }
        catch (IllegalArgumentException illegalArgumentException) {
            throw new IllegalStateException("invalid environment settings");
        }
        return allClasspaths;
    }

    private void initializeDefaults() {
        this.astKind = 8;
        this.rawSource = null;
        this.typeRoot = null;
        this.bits = 0;
        this.sourceLength = -1;
        this.sourceOffset = 0;
        this.workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
        this.unitName = null;
        this.project = null;
        this.classpaths = null;
        this.sourcepaths = null;
        this.sourcepathsEncodings = null;
        Hashtable options = JavaCore.getOptions();
        options.remove("org.eclipse.jdt.core.compiler.taskTags");
        this.compilerOptions = options;
    }

    public void setBindingsRecovery(boolean enabled) {
        this.bits = enabled ? (this.bits |= 0x10) : (this.bits &= 0xFFFFFFEF);
    }

    public void setEnvironment(String[] classpathEntries, String[] sourcepathEntries, String[] encodings, boolean includeRunningVMBootclasspath) {
        this.classpaths = classpathEntries;
        this.sourcepaths = sourcepathEntries;
        this.sourcepathsEncodings = encodings;
        if (encodings != null && (sourcepathEntries == null || sourcepathEntries.length != encodings.length)) {
            throw new IllegalArgumentException();
        }
        if (includeRunningVMBootclasspath) {
            this.bits |= 0x20;
        }
    }

    public void setCompilerOptions(Map options) {
        options = options == null ? JavaCore.getOptions() : new HashMap(options);
        options.remove("org.eclipse.jdt.core.compiler.taskTags");
        this.compilerOptions = options;
    }

    public void setResolveBindings(boolean enabled) {
        this.bits = enabled ? (this.bits |= 1) : (this.bits &= 0xFFFFFFFE);
    }

    public void setFocalPosition(int position) {
        this.bits |= 2;
        this.focalPointPosition = position;
    }

    public void setKind(int kind) {
        if (kind != 8 && kind != 4 && kind != 1 && kind != 2) {
            throw new IllegalArgumentException();
        }
        this.astKind = kind;
    }

    public void setSource(char[] source) {
        this.rawSource = source;
        this.typeRoot = null;
    }

    public void setSource(ICompilationUnit source) {
        this.setSource((ITypeRoot)source);
    }

    public void setSource(IClassFile source) {
        this.setSource((ITypeRoot)source);
    }

    public void setSource(ITypeRoot source) {
        this.typeRoot = source;
        this.rawSource = null;
        if (source != null) {
            this.project = source.getJavaProject();
            Map options = this.project.getOptions(true);
            options.remove("org.eclipse.jdt.core.compiler.taskTags");
            this.compilerOptions = options;
        }
    }

    public void setSourceRange(int offset, int length) {
        if (offset < 0 || length < -1) {
            throw new IllegalArgumentException();
        }
        this.sourceOffset = offset;
        this.sourceLength = length;
    }

    public void setStatementsRecovery(boolean enabled) {
        this.bits = enabled ? (this.bits |= 4) : (this.bits &= 0xFFFFFFFB);
    }

    public void setIgnoreMethodBodies(boolean enabled) {
        this.bits = enabled ? (this.bits |= 8) : (this.bits &= 0xFFFFFFF7);
    }

    public void setWorkingCopyOwner(WorkingCopyOwner owner) {
        this.workingCopyOwner = owner == null ? DefaultWorkingCopyOwner.PRIMARY : owner;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public void setProject(IJavaProject project) {
        this.project = project;
        if (project != null) {
            Map options = project.getOptions(true);
            options.remove("org.eclipse.jdt.core.compiler.taskTags");
            this.compilerOptions = options;
        }
    }

    public ASTNode createAST(IProgressMonitor monitor) {
        ASTNode result = null;
        if (monitor != null) {
            monitor.beginTask("", 1);
        }
        try {
            if (this.rawSource == null && this.typeRoot == null) {
                throw new IllegalStateException("source not specified");
            }
            result = this.internalCreateAST(monitor);
        }
        finally {
            this.initializeDefaults();
            if (monitor != null) {
                monitor.done();
            }
        }
        return result;
    }

    public void createASTs(ICompilationUnit[] compilationUnits, String[] bindingKeys, ASTRequestor requestor, IProgressMonitor monitor) {
        try {
            int flags = 0;
            if ((this.bits & 4) != 0) {
                flags |= 2;
            }
            if ((this.bits & 8) != 0) {
                flags |= 8;
            }
            if ((this.bits & 1) != 0) {
                if (this.project == null) {
                    throw new IllegalStateException("project not specified");
                }
                if ((this.bits & 0x10) != 0) {
                    flags |= 4;
                }
                CompilationUnitResolver.resolve(compilationUnits, bindingKeys, requestor, this.apiLevel, this.compilerOptions, this.project, this.workingCopyOwner, flags, monitor);
            } else {
                CompilationUnitResolver.parse(compilationUnits, requestor, this.apiLevel, this.compilerOptions, flags, monitor);
            }
        }
        finally {
            this.initializeDefaults();
        }
    }

    public void createASTs(String[] sourceFilePaths, String[] encodings, String[] bindingKeys, FileASTRequestor requestor, IProgressMonitor monitor) {
        try {
            int flags = 0;
            if ((this.bits & 4) != 0) {
                flags |= 2;
            }
            if ((this.bits & 8) != 0) {
                flags |= 8;
            }
            if ((this.bits & 1) != 0) {
                if (this.classpaths == null && this.sourcepaths == null && (this.bits & 0x20) == 0) {
                    throw new IllegalStateException("no environment is specified");
                }
                if ((this.bits & 0x10) != 0) {
                    flags |= 4;
                }
                CompilationUnitResolver.resolve(sourceFilePaths, encodings, bindingKeys, requestor, this.apiLevel, this.compilerOptions, this.getClasspath(), flags, monitor);
            } else {
                CompilationUnitResolver.parse(sourceFilePaths, encodings, requestor, this.apiLevel, this.compilerOptions, flags, monitor);
            }
        }
        finally {
            this.initializeDefaults();
        }
    }

    public IBinding[] createBindings(IJavaElement[] elements, IProgressMonitor monitor) {
        try {
            if (this.project == null) {
                throw new IllegalStateException("project or classpath not specified");
            }
            int flags = 0;
            if ((this.bits & 4) != 0) {
                flags |= 2;
            }
            if ((this.bits & 0x10) != 0) {
                flags |= 4;
            }
            if ((this.bits & 8) != 0) {
                flags |= 8;
            }
            IBinding[] iBindingArray = CompilationUnitResolver.resolve(elements, this.apiLevel, this.compilerOptions, this.project, this.workingCopyOwner, flags, monitor);
            return iBindingArray;
        }
        finally {
            this.initializeDefaults();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ASTNode internalCreateAST(IProgressMonitor monitor) {
        boolean needToResolveBindings = (this.bits & 1) != 0;
        switch (this.astKind) {
            case 1: 
            case 2: 
            case 4: {
                if (this.rawSource == null && this.typeRoot != null) {
                    if (this.typeRoot instanceof ICompilationUnit) {
                        org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit)((Object)this.typeRoot);
                        this.rawSource = sourceUnit.getContents();
                    } else if (this.typeRoot instanceof IClassFile) {
                        try {
                            String sourceString = this.typeRoot.getSource();
                            if (sourceString != null) {
                                this.rawSource = sourceString.toCharArray();
                            }
                        }
                        catch (JavaModelException e) {
                            StringWriter stringWriter = new StringWriter();
                            PrintWriter writer = null;
                            try {
                                writer = new PrintWriter(stringWriter);
                                e.printStackTrace(writer);
                                throw new IllegalStateException(String.valueOf(stringWriter.getBuffer()));
                            }
                            finally {
                                if (writer != null) {
                                    writer.close();
                                }
                            }
                        }
                    }
                }
                if (this.rawSource == null) throw new IllegalStateException();
                if (this.sourceOffset + this.sourceLength <= this.rawSource.length) return this.internalCreateASTForKind();
                throw new IllegalStateException();
            }
            case 8: {
                CompilationUnitDeclaration compilationUnitDeclaration = null;
                try {
                    NodeSearcher searcher = null;
                    org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit = null;
                    WorkingCopyOwner wcOwner = this.workingCopyOwner;
                    if (this.typeRoot instanceof ICompilationUnit) {
                        sourceUnit = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit)((Object)this.typeRoot);
                        sourceUnit = new BasicCompilationUnit(sourceUnit.getContents(), sourceUnit.getPackageName(), new String(sourceUnit.getFileName()), this.project);
                        wcOwner = ((ICompilationUnit)this.typeRoot).getOwner();
                    } else {
                        if (this.typeRoot instanceof IClassFile) {
                            try {
                                String sourceString = this.typeRoot.getSource();
                                if (sourceString == null) {
                                    throw new IllegalStateException();
                                }
                                PackageFragment packageFragment = (PackageFragment)this.typeRoot.getParent();
                                BinaryType type = (BinaryType)this.typeRoot.findPrimaryType();
                                IBinaryType binaryType = (IBinaryType)type.getElementInfo();
                                char[] fileName = binaryType.getFileName();
                                int firstDollar = CharOperation.indexOf('$', fileName);
                                if (firstDollar != -1) {
                                    char[] suffix = SuffixConstants.SUFFIX_class;
                                    int suffixLength = suffix.length;
                                    char[] newFileName = new char[firstDollar + suffixLength];
                                    System.arraycopy(fileName, 0, newFileName, 0, firstDollar);
                                    System.arraycopy(suffix, 0, newFileName, firstDollar, suffixLength);
                                    fileName = newFileName;
                                }
                                sourceUnit = new BasicCompilationUnit(sourceString.toCharArray(), Util.toCharArrays(packageFragment.names), new String(fileName), this.project);
                            }
                            catch (JavaModelException e) {
                                StringWriter stringWriter = new StringWriter();
                                PrintWriter writer = null;
                                try {
                                    writer = new PrintWriter(stringWriter);
                                    e.printStackTrace(writer);
                                    throw new IllegalStateException(String.valueOf(stringWriter.getBuffer()));
                                }
                                finally {
                                    if (writer != null) {
                                        writer.close();
                                    }
                                }
                            }
                        }
                        if (this.rawSource == null) throw new IllegalStateException();
                        needToResolveBindings = (this.bits & 1) != 0 && this.unitName != null && (this.project != null || this.classpaths != null || this.sourcepaths != null || (this.bits & 0x20) != 0) && this.compilerOptions != null;
                        sourceUnit = new BasicCompilationUnit(this.rawSource, null, this.unitName == null ? "" : this.unitName, this.project);
                    }
                    if ((this.bits & 2) != 0) {
                        searcher = new NodeSearcher(this.focalPointPosition);
                    }
                    int flags = 0;
                    if ((this.bits & 4) != 0) {
                        flags |= 2;
                    }
                    if (searcher == null && (this.bits & 8) != 0) {
                        flags |= 8;
                    }
                    if (needToResolveBindings) {
                        if ((this.bits & 0x10) != 0) {
                            flags |= 4;
                        }
                        try {
                            compilationUnitDeclaration = CompilationUnitResolver.resolve(sourceUnit, this.project, this.getClasspath(), searcher, this.compilerOptions, this.workingCopyOwner, flags, monitor);
                        }
                        catch (JavaModelException javaModelException) {
                            compilationUnitDeclaration = CompilationUnitResolver.parse(sourceUnit, searcher, this.compilerOptions, flags &= 0xFFFFFFFB);
                            needToResolveBindings = false;
                        }
                    } else {
                        compilationUnitDeclaration = CompilationUnitResolver.parse(sourceUnit, searcher, this.compilerOptions, flags);
                        needToResolveBindings = false;
                    }
                    CompilationUnit result = CompilationUnitResolver.convert(compilationUnitDeclaration, sourceUnit.getContents(), this.apiLevel, this.compilerOptions, needToResolveBindings, wcOwner, needToResolveBindings ? new DefaultBindingResolver.BindingTables() : null, flags, monitor, this.project != null);
                    result.setTypeRoot(this.typeRoot);
                    CompilationUnit compilationUnit = result;
                    return compilationUnit;
                }
                finally {
                    if (compilationUnitDeclaration != null && (this.bits & 1) != 0) {
                        compilationUnitDeclaration.cleanUp();
                    }
                }
            }
        }
        throw new IllegalStateException();
    }

    private ASTNode internalCreateASTForKind() {
        ASTConverter converter = new ASTConverter(this.compilerOptions, false, null);
        converter.compilationUnitSource = this.rawSource;
        converter.compilationUnitSourceLength = this.rawSource.length;
        converter.scanner.setSource(this.rawSource);
        AST ast = AST.newAST(this.apiLevel);
        ast.setDefaultNodeFlag(2);
        ast.setBindingResolver(new BindingResolver());
        if ((this.bits & 4) != 0) {
            ast.setFlag(2);
        }
        converter.setAST(ast);
        CodeSnippetParsingUtil codeSnippetParsingUtil = new CodeSnippetParsingUtil((this.bits & 8) != 0);
        CompilationUnit compilationUnit = ast.newCompilationUnit();
        if (this.sourceLength == -1) {
            this.sourceLength = this.rawSource.length;
        }
        switch (this.astKind) {
            case 2: {
                ConstructorDeclaration constructorDeclaration = codeSnippetParsingUtil.parseStatements(this.rawSource, this.sourceOffset, this.sourceLength, this.compilerOptions, true, (this.bits & 4) != 0);
                RecoveryScannerData data = constructorDeclaration.compilationResult.recoveryScannerData;
                if (data != null) {
                    Scanner scanner = converter.scanner;
                    converter.docParser.scanner = converter.scanner = new RecoveryScanner(scanner, data.removeUnused());
                    converter.scanner.setSource(scanner.source);
                    compilationUnit.setStatementsRecoveryData(data);
                }
                RecordedParsingInformation recordedParsingInformation = codeSnippetParsingUtil.recordedParsingInformation;
                int[][] comments = recordedParsingInformation.commentPositions;
                if (comments != null) {
                    converter.buildCommentsTable(compilationUnit, comments);
                }
                compilationUnit.setLineEndTable(recordedParsingInformation.lineEnds);
                Block block = ast.newBlock();
                block.setSourceRange(this.sourceOffset, this.sourceOffset + this.sourceLength);
                org.eclipse.jdt.internal.compiler.ast.Statement[] statements = constructorDeclaration.statements;
                if (statements != null) {
                    int statementsLength = statements.length;
                    int i = 0;
                    while (i < statementsLength) {
                        if (statements[i] instanceof LocalDeclaration) {
                            converter.checkAndAddMultipleLocalDeclaration(statements, i, block.statements());
                        } else {
                            Statement statement = converter.convert(statements[i]);
                            if (statement != null) {
                                block.statements().add(statement);
                            }
                        }
                        ++i;
                    }
                }
                this.rootNodeToCompilationUnit(ast, compilationUnit, block, recordedParsingInformation, data);
                ast.setDefaultNodeFlag(0);
                ast.setOriginalModificationCount(ast.modificationCount());
                return block;
            }
            case 1: {
                org.eclipse.jdt.internal.compiler.ast.Expression expression = codeSnippetParsingUtil.parseExpression(this.rawSource, this.sourceOffset, this.sourceLength, this.compilerOptions, true);
                RecordedParsingInformation recordedParsingInformation = codeSnippetParsingUtil.recordedParsingInformation;
                int[][] comments = recordedParsingInformation.commentPositions;
                if (comments != null) {
                    converter.buildCommentsTable(compilationUnit, comments);
                }
                compilationUnit.setLineEndTable(recordedParsingInformation.lineEnds);
                if (expression != null) {
                    Expression expression2 = converter.convert(expression);
                    this.rootNodeToCompilationUnit(expression2.getAST(), compilationUnit, expression2, codeSnippetParsingUtil.recordedParsingInformation, null);
                    ast.setDefaultNodeFlag(0);
                    ast.setOriginalModificationCount(ast.modificationCount());
                    return expression2;
                }
                IProblem[] problems = recordedParsingInformation.problems;
                if (problems != null) {
                    compilationUnit.setProblems(problems);
                }
                ast.setDefaultNodeFlag(0);
                ast.setOriginalModificationCount(ast.modificationCount());
                return compilationUnit;
            }
            case 4: {
                org.eclipse.jdt.internal.compiler.ast.ASTNode[] nodes = codeSnippetParsingUtil.parseClassBodyDeclarations(this.rawSource, this.sourceOffset, this.sourceLength, this.compilerOptions, true, (this.bits & 4) != 0);
                RecordedParsingInformation recordedParsingInformation = codeSnippetParsingUtil.recordedParsingInformation;
                int[][] comments = recordedParsingInformation.commentPositions;
                if (comments != null) {
                    converter.buildCommentsTable(compilationUnit, comments);
                }
                compilationUnit.setLineEndTable(recordedParsingInformation.lineEnds);
                if (nodes != null) {
                    TypeDeclaration typeDeclaration = converter.convert(nodes);
                    typeDeclaration.setSourceRange(this.sourceOffset, this.sourceOffset + this.sourceLength);
                    this.rootNodeToCompilationUnit(typeDeclaration.getAST(), compilationUnit, typeDeclaration, codeSnippetParsingUtil.recordedParsingInformation, null);
                    ast.setDefaultNodeFlag(0);
                    ast.setOriginalModificationCount(ast.modificationCount());
                    return typeDeclaration;
                }
                IProblem[] problems = recordedParsingInformation.problems;
                if (problems != null) {
                    compilationUnit.setProblems(problems);
                }
                ast.setDefaultNodeFlag(0);
                ast.setOriginalModificationCount(ast.modificationCount());
                return compilationUnit;
            }
        }
        throw new IllegalStateException();
    }

    private void propagateErrors(ASTNode astNode, CategorizedProblem[] problems, RecoveryScannerData data) {
        astNode.accept(new ASTSyntaxErrorPropagator(problems));
        if (data != null) {
            astNode.accept(new ASTRecoveryPropagator(problems, data));
        }
    }

    private void rootNodeToCompilationUnit(AST ast, CompilationUnit compilationUnit, ASTNode node, RecordedParsingInformation recordedParsingInformation, RecoveryScannerData data) {
        int problemsCount = recordedParsingInformation.problemsCount;
        switch (node.getNodeType()) {
            case 8: {
                Block block = (Block)node;
                if (problemsCount != 0) {
                    IProblem[] problems = recordedParsingInformation.problems;
                    this.propagateErrors(block, (CategorizedProblem[])problems, data);
                    compilationUnit.setProblems(problems);
                }
                TypeDeclaration typeDeclaration = ast.newTypeDeclaration();
                Initializer initializer = ast.newInitializer();
                initializer.setBody(block);
                typeDeclaration.bodyDeclarations().add(initializer);
                compilationUnit.types().add(typeDeclaration);
                break;
            }
            case 55: {
                TypeDeclaration typeDeclaration = (TypeDeclaration)node;
                if (problemsCount != 0) {
                    IProblem[] problems = recordedParsingInformation.problems;
                    this.propagateErrors(typeDeclaration, (CategorizedProblem[])problems, data);
                    compilationUnit.setProblems(problems);
                }
                compilationUnit.types().add(typeDeclaration);
                break;
            }
            default: {
                if (!(node instanceof Expression)) break;
                Expression expression = (Expression)node;
                if (problemsCount != 0) {
                    IProblem[] problems = recordedParsingInformation.problems;
                    this.propagateErrors(expression, (CategorizedProblem[])problems, data);
                    compilationUnit.setProblems(problems);
                }
                ExpressionStatement expressionStatement = ast.newExpressionStatement(expression);
                Block block = ast.newBlock();
                block.statements().add(expressionStatement);
                Initializer initializer = ast.newInitializer();
                initializer.setBody(block);
                TypeDeclaration typeDeclaration = ast.newTypeDeclaration();
                typeDeclaration.bodyDeclarations().add(initializer);
                compilationUnit.types().add(typeDeclaration);
            }
        }
    }
}

