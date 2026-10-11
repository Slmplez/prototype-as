/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchParticipant;
import org.eclipse.jdt.internal.core.search.PathCollector;
import org.eclipse.jdt.internal.core.search.PatternSearchJob;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;
import org.eclipse.jdt.internal.core.util.ASTNodeFinder;
import org.eclipse.jdt.internal.core.util.Util;

public class SuperTypeNamesCollector {
    SearchPattern pattern;
    char[] typeSimpleName;
    char[] typeQualification;
    MatchLocator locator;
    IType type;
    IProgressMonitor progressMonitor;
    char[][][] result;
    int resultIndex;

    public SuperTypeNamesCollector(SearchPattern pattern, char[] typeSimpleName, char[] typeQualification, MatchLocator locator, IType type, IProgressMonitor progressMonitor) {
        this.pattern = pattern;
        this.typeSimpleName = typeSimpleName;
        this.typeQualification = typeQualification;
        this.locator = locator;
        this.type = type;
        this.progressMonitor = progressMonitor;
    }

    protected void addToResult(char[][] compoundName) {
        int resultLength = this.result.length;
        int i = 0;
        while (i < resultLength) {
            if (CharOperation.equals(this.result[i], compoundName)) {
                return;
            }
            ++i;
        }
        if (resultLength == this.resultIndex) {
            char[][][] cArrayArray = new char[resultLength * 2][][];
            this.result = cArrayArray;
            System.arraycopy(this.result, 0, cArrayArray, 0, resultLength);
        }
        this.result[this.resultIndex++] = compoundName;
    }

    protected CompilationUnitDeclaration buildBindings(org.eclipse.jdt.core.ICompilationUnit compilationUnit, boolean isTopLevelOrMember) throws JavaModelException {
        CompilationUnitDeclaration unit;
        ICompilationUnit sourceUnit = (ICompilationUnit)((Object)compilationUnit);
        CompilationResult compilationResult = new CompilationResult(sourceUnit, 1, 1, 0);
        CompilationUnitDeclaration compilationUnitDeclaration = unit = isTopLevelOrMember ? this.locator.basicParser().dietParse(sourceUnit, compilationResult) : this.locator.basicParser().parse(sourceUnit, compilationResult);
        if (unit != null) {
            this.locator.lookupEnvironment.buildTypeBindings(unit, null);
            this.locator.lookupEnvironment.completeTypeBindings(unit, !isTopLevelOrMember);
            if (!isTopLevelOrMember) {
                if (unit.scope != null) {
                    unit.scope.faultInTypes();
                }
                unit.resolve();
            }
        }
        return unit;
    }

    public char[][][] collect() throws JavaModelException {
        if (this.type != null) {
            this.result = new char[1][][];
            this.resultIndex = 0;
            JavaProject javaProject = (JavaProject)this.type.getJavaProject();
            this.locator.initialize(javaProject, 0);
            try {
                if (this.type.isBinary()) {
                    BinaryTypeBinding binding = this.locator.cacheBinaryType(this.type, null);
                    if (binding != null) {
                        this.collectSuperTypeNames(binding);
                    }
                } else {
                    TypeDeclaration typeDecl;
                    SourceType sourceType;
                    boolean isTopLevelOrMember;
                    org.eclipse.jdt.core.ICompilationUnit unit = this.type.getCompilationUnit();
                    CompilationUnitDeclaration parsedUnit = this.buildBindings(unit, isTopLevelOrMember = (sourceType = (SourceType)this.type).getOuterMostLocalContext() == null);
                    if (parsedUnit != null && (typeDecl = new ASTNodeFinder(parsedUnit).findType(this.type)) != null && typeDecl.binding != null) {
                        this.collectSuperTypeNames(typeDecl.binding);
                    }
                }
            }
            catch (AbortCompilation abortCompilation) {
                return null;
            }
            if (this.result.length > this.resultIndex) {
                char[][][] cArrayArray = new char[this.resultIndex][][];
                this.result = cArrayArray;
                System.arraycopy(this.result, 0, cArrayArray, 0, this.resultIndex);
            }
            return this.result;
        }
        String[] paths = this.getPathsOfDeclaringType();
        if (paths == null) {
            return null;
        }
        Util.sort(paths);
        JavaProject previousProject = null;
        this.result = new char[1][][];
        this.resultIndex = 0;
        int i = 0;
        int length = paths.length;
        while (i < length) {
            try {
                Openable openable = this.locator.handleFactory.createOpenable(paths[i], this.locator.scope);
                if (openable != null) {
                    IClassFile classFile;
                    BinaryTypeBinding binding;
                    IJavaProject project = openable.getJavaProject();
                    if (!project.equals(previousProject)) {
                        previousProject = (JavaProject)project;
                        this.locator.initialize(previousProject, 0);
                    }
                    if (openable instanceof org.eclipse.jdt.core.ICompilationUnit) {
                        org.eclipse.jdt.core.ICompilationUnit unit = (org.eclipse.jdt.core.ICompilationUnit)((Object)openable);
                        CompilationUnitDeclaration parsedUnit = this.buildBindings(unit, true);
                        if (parsedUnit != null) {
                            parsedUnit.traverse((ASTVisitor)new TypeDeclarationVisitor(), parsedUnit.scope);
                        }
                    } else if (openable instanceof IClassFile && this.matches(binding = this.locator.cacheBinaryType((classFile = (IClassFile)((Object)openable)).getType(), null))) {
                        this.collectSuperTypeNames(binding);
                    }
                }
            }
            catch (AbortCompilation abortCompilation) {
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        if (this.result.length > this.resultIndex) {
            char[][][] cArrayArray = new char[this.resultIndex][][];
            this.result = cArrayArray;
            System.arraycopy(this.result, 0, cArrayArray, 0, this.resultIndex);
        }
        return this.result;
    }

    protected void collectSuperTypeNames(ReferenceBinding binding) {
        ReferenceBinding[] interfaces;
        ReferenceBinding superclass = binding.superclass();
        if (superclass != null) {
            this.addToResult(superclass.compoundName);
            this.collectSuperTypeNames(superclass);
        }
        if ((interfaces = binding.superInterfaces()) != null) {
            int i = 0;
            while (i < interfaces.length) {
                ReferenceBinding interfaceBinding = interfaces[i];
                this.addToResult(interfaceBinding.compoundName);
                this.collectSuperTypeNames(interfaceBinding);
                ++i;
            }
        }
    }

    protected String[] getPathsOfDeclaringType() {
        if (this.typeQualification == null && this.typeSimpleName == null) {
            return null;
        }
        final PathCollector pathCollector = new PathCollector();
        IJavaSearchScope scope = SearchEngine.createWorkspaceScope();
        IndexManager indexManager = JavaModelManager.getIndexManager();
        TypeDeclarationPattern searchPattern = new TypeDeclarationPattern(this.typeSimpleName != null ? null : this.typeQualification, null, this.typeSimpleName, '\u0000', this.pattern.getMatchRule());
        IndexQueryRequestor searchRequestor = new IndexQueryRequestor(){

            public boolean acceptIndexMatch(String documentPath, SearchPattern indexRecord, SearchParticipant participant, AccessRuleSet access) {
                TypeDeclarationPattern record = (TypeDeclarationPattern)indexRecord;
                if (record.enclosingTypeNames != IIndexConstants.ONE_ZERO_CHAR) {
                    pathCollector.acceptIndexMatch(documentPath, indexRecord, participant, access);
                }
                return true;
            }
        };
        indexManager.performConcurrentJob(new PatternSearchJob(searchPattern, new JavaSearchParticipant(), scope, searchRequestor), 3, (IProgressMonitor)(this.progressMonitor == null ? null : new SubProgressMonitor(this.progressMonitor, 100)));
        return pathCollector.getPaths();
    }

    protected boolean matches(char[][] compoundName) {
        int length = ((char[][])compoundName).length;
        if (length == 0) {
            return false;
        }
        char[] simpleName = compoundName[length - 1];
        int last = length - 1;
        if (this.typeSimpleName == null || this.pattern.matchesName(simpleName, this.typeSimpleName)) {
            char[][] qualification = new char[last][];
            System.arraycopy(compoundName, 0, qualification, 0, last);
            return this.pattern.matchesName(this.typeQualification, CharOperation.concatWith(qualification, '.'));
        }
        if (!CharOperation.endsWith(simpleName, this.typeSimpleName)) {
            return false;
        }
        char[][] cArray = compoundName;
        char[][] cArrayArray = new char[length + 1][];
        compoundName = cArrayArray;
        System.arraycopy(cArray, 0, cArrayArray, 0, last);
        int dollar = CharOperation.indexOf('$', simpleName);
        if (dollar == -1) {
            return false;
        }
        compoundName[last] = CharOperation.subarray(simpleName, 0, dollar);
        compoundName[length] = CharOperation.subarray(simpleName, dollar + 1, simpleName.length);
        return this.matches((char[][])compoundName);
    }

    protected boolean matches(ReferenceBinding binding) {
        return binding != null && binding.compoundName != null && this.matches(binding.compoundName);
    }

    public class TypeDeclarationVisitor
    extends ASTVisitor {
        public boolean visit(TypeDeclaration typeDeclaration, BlockScope scope) {
            SourceTypeBinding binding = typeDeclaration.binding;
            if (SuperTypeNamesCollector.this.matches(binding)) {
                SuperTypeNamesCollector.this.collectSuperTypeNames(binding);
            }
            return true;
        }

        public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope scope) {
            SourceTypeBinding binding = typeDeclaration.binding;
            if (SuperTypeNamesCollector.this.matches(binding)) {
                SuperTypeNamesCollector.this.collectSuperTypeNames(binding);
            }
            return true;
        }

        public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope scope) {
            SourceTypeBinding binding = memberTypeDeclaration.binding;
            if (SuperTypeNamesCollector.this.matches(binding)) {
                SuperTypeNamesCollector.this.collectSuperTypeNames(binding);
            }
            return true;
        }

        public boolean visit(FieldDeclaration fieldDeclaration, MethodScope scope) {
            return false;
        }

        public boolean visit(Initializer initializer, MethodScope scope) {
            return false;
        }

        public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope scope) {
            return false;
        }

        public boolean visit(MethodDeclaration methodDeclaration, ClassScope scope) {
            return false;
        }
    }
}

