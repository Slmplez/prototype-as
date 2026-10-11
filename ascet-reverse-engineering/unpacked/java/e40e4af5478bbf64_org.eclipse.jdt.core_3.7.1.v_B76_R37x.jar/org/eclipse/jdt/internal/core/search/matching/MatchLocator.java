/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.search.FieldDeclarationMatch;
import org.eclipse.jdt.core.search.FieldReferenceMatch;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.LocalVariableDeclarationMatch;
import org.eclipse.jdt.core.search.LocalVariableReferenceMatch;
import org.eclipse.jdt.core.search.MethodDeclarationMatch;
import org.eclipse.jdt.core.search.MethodReferenceMatch;
import org.eclipse.jdt.core.search.PackageDeclarationMatch;
import org.eclipse.jdt.core.search.PackageReferenceMatch;
import org.eclipse.jdt.core.search.ReferenceMatch;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.core.search.TypeDeclarationMatch;
import org.eclipse.jdt.core.search.TypeParameterDeclarationMatch;
import org.eclipse.jdt.core.search.TypeParameterReferenceMatch;
import org.eclipse.jdt.core.search.TypeReferenceMatch;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.BinaryMember;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyResolver;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.HierarchyScope;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.IndexSelector;
import org.eclipse.jdt.internal.core.search.JavaSearchDocument;
import org.eclipse.jdt.internal.core.search.matching.ClassFileMatchLocator;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchNameEnvironment;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocatorParser;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.MemberDeclarationVisitor;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.matching.OrPattern;
import org.eclipse.jdt.internal.core.search.matching.PackageDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;
import org.eclipse.jdt.internal.core.search.matching.PossibleMatch;
import org.eclipse.jdt.internal.core.search.matching.PossibleMatchSet;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeNamesCollector;
import org.eclipse.jdt.internal.core.search.matching.VariablePattern;
import org.eclipse.jdt.internal.core.util.HandleFactory;
import org.eclipse.jdt.internal.core.util.Util;

public class MatchLocator
implements ITypeRequestor {
    public static final int MAX_AT_ONCE;
    public SearchPattern pattern;
    public PatternLocator patternLocator;
    public int matchContainer;
    public SearchRequestor requestor;
    public IJavaSearchScope scope;
    public IProgressMonitor progressMonitor;
    public ICompilationUnit[] workingCopies;
    public HandleFactory handleFactory;
    public char[][][] allSuperTypeNames;
    public MatchLocatorParser parser;
    private Parser basicParser;
    public INameEnvironment nameEnvironment;
    public NameLookup nameLookup;
    public LookupEnvironment lookupEnvironment;
    public HierarchyResolver hierarchyResolver;
    public CompilerOptions options;
    public int numberOfMatches;
    public PossibleMatch[] matchesToProcess;
    public PossibleMatch currentPossibleMatch;
    public long resultCollectorTime = 0L;
    int progressStep;
    int progressWorked;
    CompilationUnitScope unitScope;
    SimpleLookupTable bindings;
    HashSet methodHandles;
    private final boolean searchPackageDeclaration;

    static {
        long maxMemory = Runtime.getRuntime().maxMemory();
        int ratio = (int)Math.round((double)maxMemory / 6.7108864E7);
        switch (ratio) {
            case 0: 
            case 1: {
                MAX_AT_ONCE = 100;
                break;
            }
            case 2: {
                MAX_AT_ONCE = 200;
                break;
            }
            case 3: {
                MAX_AT_ONCE = 300;
                break;
            }
            default: {
                MAX_AT_ONCE = 400;
            }
        }
    }

    public static SearchDocument[] addWorkingCopies(SearchPattern pattern, SearchDocument[] indexMatches, ICompilationUnit[] copies, SearchParticipant participant) {
        int remainingWorkingCopiesSize;
        if (copies == null) {
            return indexMatches;
        }
        HashMap workingCopyDocuments = MatchLocator.workingCopiesThatCanSeeFocus(copies, pattern, participant);
        if (workingCopyDocuments.size() == 0) {
            return indexMatches;
        }
        SearchDocument[] matches = null;
        int length = indexMatches.length;
        int i = 0;
        while (i < length) {
            SearchDocument workingCopyDocument;
            SearchDocument searchDocument = indexMatches[i];
            if (searchDocument.getParticipant() == participant && (workingCopyDocument = (SearchDocument)workingCopyDocuments.remove(searchDocument.getPath())) != null) {
                if (matches == null) {
                    matches = new SearchDocument[length];
                    System.arraycopy(indexMatches, 0, matches, 0, length);
                }
                matches[i] = workingCopyDocument;
            }
            ++i;
        }
        if (matches == null) {
            matches = indexMatches;
        }
        if ((remainingWorkingCopiesSize = workingCopyDocuments.size()) != 0) {
            SearchDocument[] searchDocumentArray = matches;
            matches = new SearchDocument[length + remainingWorkingCopiesSize];
            System.arraycopy(searchDocumentArray, 0, matches, 0, length);
            Iterator iterator = workingCopyDocuments.values().iterator();
            int index = length;
            while (iterator.hasNext()) {
                matches[index++] = (SearchDocument)iterator.next();
            }
        }
        return matches;
    }

    public static void setFocus(SearchPattern pattern, IJavaElement focus) {
        pattern.focus = focus;
    }

    private static HashMap workingCopiesThatCanSeeFocus(ICompilationUnit[] copies, SearchPattern pattern, SearchParticipant participant) {
        if (copies == null) {
            return new HashMap();
        }
        HashMap<String, WorkingCopyDocument> result = new HashMap<String, WorkingCopyDocument>();
        int i = 0;
        int length = copies.length;
        while (i < length) {
            ICompilationUnit workingCopy = copies[i];
            IPath projectOrJar = MatchLocator.getProjectOrJar(workingCopy).getPath();
            if (pattern.focus == null || IndexSelector.canSeeFocus(pattern, projectOrJar)) {
                result.put(workingCopy.getPath().toString(), new WorkingCopyDocument(workingCopy, participant));
            }
            ++i;
        }
        return result;
    }

    public static ClassFileReader classFileReader(IType type) {
        IClassFile classFile = type.getClassFile();
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        if (classFile.isOpen()) {
            return (ClassFileReader)manager.getInfo(type);
        }
        PackageFragment pkg = (PackageFragment)type.getPackageFragment();
        IPackageFragmentRoot root = (IPackageFragmentRoot)pkg.getParent();
        if (!root.isArchive()) {
            return org.eclipse.jdt.internal.core.util.Util.newClassFileReader(((JavaElement)((Object)type)).resource());
        }
        ZipFile zipFile = null;
        try {
            IPath zipPath = root.getPath();
            if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                System.out.println("(" + Thread.currentThread() + ") [MatchLocator.classFileReader()] Creating ZipFile on " + zipPath);
            }
            zipFile = manager.getZipFile(zipPath);
            String classFileName = classFile.getElementName();
            String path = org.eclipse.jdt.internal.core.util.Util.concatWith(pkg.names, classFileName, '/');
            ClassFileReader classFileReader = ClassFileReader.read(zipFile, path);
            manager.closeZipFile(zipFile);
            return classFileReader;
        }
        catch (Throwable throwable) {
            try {
                manager.closeZipFile(zipFile);
                throw throwable;
            }
            catch (ClassFormatException classFormatException) {
            }
            catch (CoreException coreException) {
            }
            catch (IOException iOException) {}
        }
        return null;
    }

    public static void findIndexMatches(SearchPattern pattern, Index index, IndexQueryRequestor requestor, SearchParticipant participant, IJavaSearchScope scope, IProgressMonitor monitor) throws IOException {
        pattern.findIndexMatches(index, requestor, participant, scope, monitor);
    }

    public static IJavaElement getProjectOrJar(IJavaElement element) {
        while (!(element instanceof IJavaProject) && !(element instanceof JarPackageFragmentRoot)) {
            element = element.getParent();
        }
        return element;
    }

    public static IJavaElement projectOrJarFocus(SearchPattern pattern) {
        return pattern == null || pattern.focus == null ? null : MatchLocator.getProjectOrJar(pattern.focus);
    }

    public MatchLocator(SearchPattern pattern, SearchRequestor requestor, IJavaSearchScope scope, IProgressMonitor progressMonitor) {
        this.pattern = pattern;
        this.patternLocator = PatternLocator.patternLocator(this.pattern);
        this.matchContainer = this.patternLocator == null ? 0 : this.patternLocator.matchContainer();
        this.requestor = requestor;
        this.scope = scope;
        this.progressMonitor = progressMonitor;
        this.searchPackageDeclaration = pattern instanceof PackageDeclarationPattern ? true : (pattern instanceof OrPattern ? ((OrPattern)pattern).hasPackageDeclaration() : false);
    }

    public void accept(IBinaryType binaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        this.lookupEnvironment.createBinaryTypeFrom(binaryType, packageBinding, accessRestriction);
    }

    public void accept(org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit, AccessRestriction accessRestriction) {
        CompilationResult unitResult;
        block3: {
            unitResult = new CompilationResult(sourceUnit, 1, 1, this.options.maxProblemsPerUnit);
            try {
                CompilationUnitDeclaration parsedUnit = this.basicParser().dietParse(sourceUnit, unitResult);
                this.lookupEnvironment.buildTypeBindings(parsedUnit, accessRestriction);
                this.lookupEnvironment.completeTypeBindings(parsedUnit, true);
            }
            catch (AbortCompilationUnit e) {
                if (unitResult.compilationUnit == sourceUnit) break block3;
                throw e;
            }
        }
        if (BasicSearchEngine.VERBOSE && unitResult.problemCount > 0) {
            System.out.println(unitResult);
        }
    }

    public void accept(ISourceType[] sourceTypes, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        ISourceType sourceType = sourceTypes[0];
        while (sourceType.getEnclosingType() != null) {
            sourceType = sourceType.getEnclosingType();
        }
        if (sourceType instanceof SourceTypeElementInfo) {
            SourceTypeElementInfo elementInfo = (SourceTypeElementInfo)sourceType;
            IType type = elementInfo.getHandle();
            org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit)((Object)type.getCompilationUnit());
            this.accept(sourceUnit, accessRestriction);
        } else {
            CompilationResult result = new CompilationResult(sourceType.getFileName(), 1, 1, 0);
            CompilationUnitDeclaration unit = SourceTypeConverter.buildCompilationUnit(sourceTypes, 15, this.lookupEnvironment.problemReporter, result);
            this.lookupEnvironment.buildTypeBindings(unit, accessRestriction);
            this.lookupEnvironment.completeTypeBindings(unit, true);
        }
    }

    protected Parser basicParser() {
        if (this.basicParser == null) {
            ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.options, new DefaultProblemFactory());
            this.basicParser = new Parser(problemReporter, false);
            this.basicParser.reportOnlyOneSyntaxError = true;
        }
        return this.basicParser;
    }

    protected BinaryTypeBinding cacheBinaryType(IType type, IBinaryType binaryType) throws JavaModelException {
        char[][] compoundName;
        ReferenceBinding referenceBinding;
        BinaryTypeBinding binding;
        IType enclosingType = type.getDeclaringType();
        if (enclosingType != null) {
            this.cacheBinaryType(enclosingType, null);
        }
        if (binaryType == null) {
            ClassFile classFile = (ClassFile)type.getClassFile();
            try {
                binaryType = this.getBinaryInfo(classFile, classFile.resource());
            }
            catch (CoreException e) {
                if (e instanceof JavaModelException) {
                    throw (JavaModelException)e;
                }
                throw new JavaModelException(e);
            }
        }
        if ((binding = this.lookupEnvironment.cacheBinaryType(binaryType, null)) == null && (referenceBinding = this.lookupEnvironment.getCachedType(compoundName = CharOperation.splitOn('.', type.getFullyQualifiedName().toCharArray()))) != null && referenceBinding instanceof BinaryTypeBinding) {
            binding = (BinaryTypeBinding)referenceBinding;
        }
        return binding;
    }

    protected char[][][] computeSuperTypeNames(IType focusType) {
        String fullyQualifiedName = focusType.getFullyQualifiedName();
        int lastDot = fullyQualifiedName.lastIndexOf(46);
        char[] qualification = lastDot == -1 ? CharOperation.NO_CHAR : fullyQualifiedName.substring(0, lastDot).toCharArray();
        char[] simpleName = focusType.getElementName().toCharArray();
        SuperTypeNamesCollector superTypeNamesCollector = new SuperTypeNamesCollector(this.pattern, simpleName, qualification, new MatchLocator(this.pattern, this.requestor, this.scope, this.progressMonitor), focusType, this.progressMonitor);
        try {
            this.allSuperTypeNames = superTypeNamesCollector.collect();
        }
        catch (JavaModelException javaModelException) {}
        return this.allSuperTypeNames;
    }

    protected IJavaElement createHandle(AbstractMethodDeclaration method, IJavaElement parent) {
        int argCount;
        if (!(parent instanceof IType)) {
            return parent;
        }
        IType type = (IType)parent;
        Argument[] arguments = method.arguments;
        int n = argCount = arguments == null ? 0 : arguments.length;
        if (type.isBinary()) {
            ClassFileReader reader = MatchLocator.classFileReader(type);
            if (reader != null) {
                boolean firstIsSynthetic = false;
                if (reader.isMember() && method.isConstructor() && !Flags.isStatic(reader.getModifiers())) {
                    firstIsSynthetic = true;
                    ++argCount;
                }
                char[][] argumentTypeNames = new char[argCount][];
                int i = 0;
                while (i < argCount) {
                    char[] typeName = null;
                    if (i == 0 && firstIsSynthetic) {
                        typeName = type.getDeclaringType().getFullyQualifiedName().toCharArray();
                    } else if (arguments != null) {
                        TypeReference typeRef = arguments[firstIsSynthetic ? i - 1 : i].type;
                        typeName = CharOperation.concatWith(typeRef.getTypeName(), '.');
                        int k = 0;
                        int dim = typeRef.dimensions();
                        while (k < dim) {
                            typeName = CharOperation.concat(typeName, new char[]{'[', ']'});
                            ++k;
                        }
                    }
                    if (typeName == null) {
                        return null;
                    }
                    argumentTypeNames[i] = typeName;
                    ++i;
                }
                IMethod binaryMethod = this.createBinaryMethodHandle(type, method.selector, argumentTypeNames);
                if (binaryMethod == null) {
                    PossibleMatch similarMatch = this.currentPossibleMatch.getSimilarMatch();
                    while (similarMatch != null) {
                        type = ((ClassFile)similarMatch.openable).getType();
                        binaryMethod = this.createBinaryMethodHandle(type, method.selector, argumentTypeNames);
                        if (binaryMethod != null) {
                            return binaryMethod;
                        }
                        similarMatch = similarMatch.getSimilarMatch();
                    }
                }
                return binaryMethod;
            }
            if (BasicSearchEngine.VERBOSE) {
                System.out.println("Not able to createHandle for the method " + CharOperation.charToString(method.selector) + " May miss some results");
            }
            return null;
        }
        String[] parameterTypeSignatures = new String[argCount];
        if (arguments != null) {
            int i = 0;
            while (i < argCount) {
                TypeReference typeRef = arguments[i].type;
                char[] typeName = CharOperation.concatWith(typeRef.getParameterizedTypeName(), '.');
                parameterTypeSignatures[i] = Signature.createTypeSignature(typeName, false);
                ++i;
            }
        }
        return this.createMethodHandle(type, new String(method.selector), parameterTypeSignatures);
    }

    IMethod createBinaryMethodHandle(IType type, char[] methodSelector, char[][] argumentTypeNames) {
        IBinaryMethod[] methods;
        ClassFileReader reader = MatchLocator.classFileReader(type);
        if (reader != null && (methods = reader.getMethods()) != null) {
            int argCount = argumentTypeNames == null ? 0 : argumentTypeNames.length;
            int i = 0;
            int methodsLength = methods.length;
            while (i < methodsLength) {
                char[] selector;
                IBinaryMethod binaryMethod = methods[i];
                char[] cArray = selector = binaryMethod.isConstructor() ? type.getElementName().toCharArray() : binaryMethod.getSelector();
                if (CharOperation.equals(selector, methodSelector)) {
                    char[][] parameterTypes;
                    char[] signature = binaryMethod.getGenericSignature();
                    if (signature == null) {
                        signature = binaryMethod.getMethodDescriptor();
                    }
                    if (argCount == (parameterTypes = Signature.getParameterTypes(signature)).length) {
                        if (argumentTypeNames != null) {
                            int j = 0;
                            while (j < argCount) {
                                char[] parameterTypeName = ClassFileMatchLocator.convertClassFileFormat(parameterTypes[j]);
                                if (CharOperation.endsWith(Signature.toCharArray(Signature.getTypeErasure(parameterTypeName)), CharOperation.replaceOnCopy(argumentTypeNames[j], '$', '.'))) {
                                    parameterTypes[j] = parameterTypeName;
                                    ++j;
                                    continue;
                                }
                                break;
                            }
                        } else {
                            return (IMethod)this.createMethodHandle(type, new String(selector), CharOperation.toStrings(parameterTypes));
                        }
                    }
                }
                ++i;
            }
        }
        return null;
    }

    private IJavaElement createMethodHandle(IType type, String methodName, String[] parameterTypeSignatures) {
        IMethod methodHandle = type.getMethod(methodName, parameterTypeSignatures);
        if (methodHandle instanceof SourceMethod) {
            while (this.methodHandles.contains(methodHandle)) {
                ++((SourceMethod)methodHandle).occurrenceCount;
            }
        }
        this.methodHandles.add(methodHandle);
        return methodHandle;
    }

    protected IJavaElement createHandle(FieldDeclaration fieldDeclaration, TypeDeclaration typeDeclaration, IJavaElement parent) {
        if (!(parent instanceof IType)) {
            return parent;
        }
        IType type = (IType)parent;
        switch (fieldDeclaration.getKind()) {
            case 1: 
            case 3: {
                return ((IType)parent).getField(new String(fieldDeclaration.name));
            }
        }
        if (type.isBinary()) {
            return type;
        }
        int occurrenceCount = 0;
        FieldDeclaration[] fields = typeDeclaration.fields;
        int length = fields == null ? 0 : fields.length;
        int i = 0;
        while (i < length) {
            if (fields[i].getKind() == 2) {
                ++occurrenceCount;
                if (fields[i].equals(fieldDeclaration)) break;
            }
            ++i;
        }
        return ((IType)parent).getInitializer(occurrenceCount);
    }

    protected IJavaElement createHandle(AbstractVariableDeclaration variableDeclaration, IJavaElement parent) {
        switch (variableDeclaration.getKind()) {
            case 4: {
                if (variableDeclaration.type.resolvedType == null) break;
                return new LocalVariable((JavaElement)parent, new String(variableDeclaration.name), variableDeclaration.declarationSourceStart, variableDeclaration.declarationSourceEnd, variableDeclaration.sourceStart, variableDeclaration.sourceEnd, new String(variableDeclaration.type.resolvedType.signature()), variableDeclaration.annotations, variableDeclaration.modifiers, false);
            }
            case 5: {
                if (variableDeclaration.type.resolvedType == null) break;
                return new LocalVariable((JavaElement)parent, new String(variableDeclaration.name), variableDeclaration.declarationSourceStart, variableDeclaration.declarationSourceEnd, variableDeclaration.sourceStart, variableDeclaration.sourceEnd, new String(variableDeclaration.type.resolvedType.signature()), variableDeclaration.annotations, variableDeclaration.modifiers, true);
            }
            case 6: {
                return new TypeParameter((JavaElement)parent, new String(variableDeclaration.name));
            }
        }
        return null;
    }

    protected IJavaElement createHandle(Annotation annotation, IAnnotatable parent) {
        if (parent == null) {
            return null;
        }
        TypeReference typeRef = annotation.type;
        char[][] typeName = typeRef.getTypeName();
        String name = new String(typeName[typeName.length - 1]);
        try {
            IAnnotation[] annotations = parent.getAnnotations();
            int length = annotations == null ? 0 : annotations.length;
            int i = 0;
            while (i < length) {
                if (annotations[i].getElementName().equals(name)) {
                    return annotations[i];
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return null;
    }

    private IJavaElement[] createHandles(FieldDeclaration[] fields, TypeDeclaration type, IJavaElement parent) {
        IJavaElement[] otherElements = null;
        if (fields != null) {
            int length = fields.length;
            int size = 0;
            while (size < length && fields[size] != null) {
                ++size;
            }
            otherElements = new IJavaElement[size];
            int j = 0;
            while (j < size) {
                otherElements[j] = this.createHandle(fields[j], type, parent);
                ++j;
            }
        }
        return otherElements;
    }

    protected boolean createHierarchyResolver(IType focusType, PossibleMatch[] possibleMatches) {
        char[][] compoundName = CharOperation.splitOn('.', focusType.getFullyQualifiedName().toCharArray());
        boolean isPossibleMatch = false;
        int i = 0;
        int length = possibleMatches.length;
        while (i < length) {
            if (CharOperation.equals(possibleMatches[i].compoundName, compoundName)) {
                isPossibleMatch = true;
                break;
            }
            ++i;
        }
        if (!isPossibleMatch) {
            if (focusType.isBinary()) {
                try {
                    this.cacheBinaryType(focusType, null);
                }
                catch (JavaModelException javaModelException) {
                    return false;
                }
            } else {
                this.accept((org.eclipse.jdt.internal.compiler.env.ICompilationUnit)((Object)focusType.getCompilationUnit()), null);
            }
        }
        this.hierarchyResolver = new HierarchyResolver(this.lookupEnvironment, null);
        ReferenceBinding binding = this.hierarchyResolver.setFocusType(compoundName);
        return binding != null && binding.isValidBinding() && (binding.tagBits & 0x20000L) == 0L;
    }

    protected IJavaElement createImportHandle(ImportReference importRef) {
        Openable openable;
        char[] importName = CharOperation.concatWith(importRef.getImportName(), '.');
        if ((importRef.bits & 0x20000) != 0) {
            importName = CharOperation.concat(importName, ".*".toCharArray());
        }
        if ((openable = this.currentPossibleMatch.openable) instanceof CompilationUnit) {
            return ((CompilationUnit)openable).getImport(new String(importName));
        }
        IType binaryType = ((ClassFile)openable).getType();
        String typeName = binaryType.getElementName();
        int lastDollar = typeName.lastIndexOf(36);
        if (lastDollar == -1) {
            return binaryType;
        }
        return this.createTypeHandle(typeName.substring(0, lastDollar));
    }

    protected IJavaElement createPackageDeclarationHandle(CompilationUnitDeclaration unit) {
        if (unit.isPackageInfo()) {
            char[] packName = CharOperation.concatWith(unit.currentPackage.getImportName(), '.');
            Openable openable = this.currentPossibleMatch.openable;
            if (openable instanceof CompilationUnit) {
                return ((CompilationUnit)openable).getPackageDeclaration(new String(packName));
            }
        }
        return this.createTypeHandle(new String(unit.getMainTypeName()));
    }

    protected IType createTypeHandle(String simpleTypeName) {
        Openable openable = this.currentPossibleMatch.openable;
        if (openable instanceof CompilationUnit) {
            return ((CompilationUnit)openable).getType(simpleTypeName);
        }
        IType binaryType = ((ClassFile)openable).getType();
        String binaryTypeQualifiedName = binaryType.getTypeQualifiedName();
        if (simpleTypeName.equals(binaryTypeQualifiedName)) {
            return binaryType;
        }
        String classFileName = simpleTypeName.length() == 0 ? binaryTypeQualifiedName : simpleTypeName;
        IClassFile classFile = binaryType.getPackageFragment().getClassFile(String.valueOf(classFileName) + ".class");
        return classFile.getType();
    }

    protected boolean encloses(IJavaElement element) {
        if (element != null) {
            if (this.scope instanceof HierarchyScope) {
                return ((HierarchyScope)this.scope).encloses(element, this.progressMonitor);
            }
            return this.scope.encloses(element);
        }
        return false;
    }

    private boolean filterEnum(SearchMatch match) {
        IJavaProject proj;
        String complianceStr;
        IJavaElement element = (IJavaElement)match.getElement();
        PackageFragment pkg = (PackageFragment)element.getAncestor(4);
        return pkg != null && pkg.names.length == 5 && pkg.names[4].equals("enum") && (this.options == null ? CompilerOptions.versionToJdkLevel(complianceStr = (proj = (IJavaProject)pkg.getAncestor(2)).getOption("org.eclipse.jdt.core.compiler.source", true)) >= 0x310000L : this.options.sourceLevel >= 0x310000L);
    }

    private long findLastTypeArgumentInfo(TypeReference typeRef) {
        TypeReference lastTypeArgument = typeRef;
        int depth = 0;
        while (true) {
            int i;
            TypeReference[] lastTypeArguments = null;
            if (lastTypeArgument instanceof ParameterizedQualifiedTypeReference) {
                ParameterizedQualifiedTypeReference pqtRef = (ParameterizedQualifiedTypeReference)lastTypeArgument;
                i = pqtRef.typeArguments.length - 1;
                while (i >= 0 && lastTypeArguments == null) {
                    lastTypeArguments = pqtRef.typeArguments[i];
                    --i;
                }
            }
            TypeReference last = null;
            if (lastTypeArgument instanceof ParameterizedSingleTypeReference || lastTypeArguments != null) {
                if (lastTypeArguments == null) {
                    lastTypeArguments = ((ParameterizedSingleTypeReference)lastTypeArgument).typeArguments;
                }
                if (lastTypeArguments != null) {
                    i = lastTypeArguments.length - 1;
                    while (i >= 0 && last == null) {
                        last = lastTypeArguments[i];
                        ++i;
                    }
                }
            }
            if (last == null) break;
            ++depth;
            lastTypeArgument = last;
        }
        return ((long)depth << 32) + (long)lastTypeArgument.sourceEnd;
    }

    protected IBinaryType getBinaryInfo(ClassFile classFile, IResource resource) throws CoreException {
        BinaryType binaryType = (BinaryType)classFile.getType();
        if (classFile.isOpen()) {
            return (IBinaryType)binaryType.getElementInfo();
        }
        try {
            ClassFileReader info;
            PackageFragment pkg = (PackageFragment)classFile.getParent();
            PackageFragmentRoot root = (PackageFragmentRoot)pkg.getParent();
            if (root.isArchive()) {
                String classFileName = classFile.getElementName();
                String classFilePath = org.eclipse.jdt.internal.core.util.Util.concatWith(pkg.names, classFileName, '/');
                ZipFile zipFile = null;
                try {
                    zipFile = ((JarPackageFragmentRoot)root).getJar();
                    info = ClassFileReader.read(zipFile, classFilePath);
                }
                finally {
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                }
            } else {
                info = org.eclipse.jdt.internal.core.util.Util.newClassFileReader(resource);
            }
            if (info == null) {
                throw binaryType.newNotPresentException();
            }
            return info;
        }
        catch (ClassFormatException classFormatException) {
            return null;
        }
        catch (IOException e) {
            throw new JavaModelException(e, 985);
        }
    }

    protected IType getFocusType() {
        return this.scope instanceof HierarchyScope ? ((HierarchyScope)this.scope).focusType : null;
    }

    protected void getMethodBodies(CompilationUnitDeclaration unit, MatchingNodeSet nodeSet) {
        if (unit.ignoreMethodBodies) {
            unit.ignoreFurtherInvestigation = true;
            return;
        }
        int[] oldLineEnds = this.parser.scanner.lineEnds;
        int oldLinePtr = this.parser.scanner.linePtr;
        try {
            CompilationResult compilationResult = unit.compilationResult;
            this.parser.scanner.setSource(compilationResult);
            if (this.parser.javadocParser.checkDocComment) {
                char[] contents = compilationResult.compilationUnit.getContents();
                this.parser.javadocParser.scanner.setSource(contents);
            }
            this.parser.nodeSet = nodeSet;
            this.parser.parseBodies(unit);
        }
        finally {
            this.parser.nodeSet = null;
            this.parser.scanner.lineEnds = oldLineEnds;
            this.parser.scanner.linePtr = oldLinePtr;
        }
    }

    protected TypeBinding getType(Object typeKey, char[] typeName) {
        if (this.unitScope == null || typeName == null || typeName.length == 0) {
            return null;
        }
        Binding binding = (Binding)this.bindings.get(typeKey);
        if (binding != null) {
            if (binding instanceof TypeBinding && binding.isValidBinding()) {
                return (TypeBinding)binding;
            }
            return null;
        }
        char[][] compoundName = CharOperation.splitOn('.', typeName);
        TypeBinding typeBinding = this.unitScope.getType(compoundName, compoundName.length);
        this.bindings.put(typeKey, typeBinding);
        return typeBinding.isValidBinding() ? typeBinding : null;
    }

    public MethodBinding getMethodBinding(MethodPattern methodPattern) {
        TypeBinding declaringTypeBinding;
        if (this.unitScope == null) {
            return null;
        }
        Binding binding = (Binding)this.bindings.get(methodPattern);
        if (binding != null) {
            if (binding instanceof MethodBinding && binding.isValidBinding()) {
                return (MethodBinding)binding;
            }
            return null;
        }
        char[] typeName = PatternLocator.qualifiedPattern(methodPattern.declaringSimpleName, methodPattern.declaringQualification);
        if (typeName == null) {
            if (methodPattern.declaringType == null) {
                return null;
            }
            typeName = methodPattern.declaringType.getFullyQualifiedName().toCharArray();
        }
        if ((declaringTypeBinding = this.getType(typeName, typeName)) != null) {
            if (declaringTypeBinding.isArrayType()) {
                declaringTypeBinding = declaringTypeBinding.leafComponentType();
            }
            if (!declaringTypeBinding.isBaseType()) {
                char[][] parameterTypes = methodPattern.parameterSimpleNames;
                if (parameterTypes == null) {
                    return null;
                }
                int paramTypeslength = parameterTypes.length;
                ReferenceBinding referenceBinding = (ReferenceBinding)declaringTypeBinding;
                MethodBinding[] methods = referenceBinding.getMethods(methodPattern.selector);
                int methodsLength = methods.length;
                TypeVariableBinding[] refTypeVariables = referenceBinding.typeVariables();
                int typeVarLength = refTypeVariables == null ? 0 : refTypeVariables.length;
                int i = 0;
                while (i < methodsLength) {
                    TypeBinding[] methodParameters = methods[i].parameters;
                    int paramLength = methodParameters == null ? 0 : methodParameters.length;
                    TypeVariableBinding[] methodTypeVariables = methods[i].typeVariables;
                    int methTypeVarLength = methodTypeVariables == null ? 0 : methodTypeVariables.length;
                    boolean found = false;
                    if (methodParameters != null && paramLength == paramTypeslength) {
                        int p = 0;
                        while (p < paramLength) {
                            if (CharOperation.equals(methodParameters[p].sourceName(), parameterTypes[p])) {
                                found = true;
                            } else {
                                int v;
                                found = false;
                                if (refTypeVariables != null) {
                                    v = 0;
                                    while (v < typeVarLength) {
                                        if (!CharOperation.equals(refTypeVariables[v].sourceName, parameterTypes[p])) {
                                            found = false;
                                            break;
                                        }
                                        found = true;
                                        ++v;
                                    }
                                }
                                if (!found && methodTypeVariables != null) {
                                    v = 0;
                                    while (v < methTypeVarLength) {
                                        if (!CharOperation.equals(methodTypeVariables[v].sourceName, parameterTypes[p])) {
                                            found = false;
                                            break;
                                        }
                                        found = true;
                                        ++v;
                                    }
                                }
                                if (!found) break;
                            }
                            ++p;
                        }
                    }
                    if (found) {
                        this.bindings.put(methodPattern, methods[i]);
                        return methods[i];
                    }
                    ++i;
                }
            }
        }
        this.bindings.put(methodPattern, new ProblemMethodBinding(methodPattern.selector, null, 1));
        return null;
    }

    protected boolean hasAlreadyDefinedType(CompilationUnitDeclaration parsedUnit) {
        CompilationResult result = parsedUnit.compilationResult;
        if (result == null) {
            return false;
        }
        int i = 0;
        while (i < result.problemCount) {
            if (result.problems[i].getID() == 16777539) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void initialize(JavaProject project, int possibleMatchSize) throws JavaModelException {
        if (this.nameEnvironment != null && possibleMatchSize != 1) {
            this.nameEnvironment.cleanup();
        }
        SearchableEnvironment searchableEnvironment = project.newSearchableNameEnvironment(this.workingCopies);
        this.nameEnvironment = possibleMatchSize == 1 ? searchableEnvironment : new JavaSearchNameEnvironment(project, this.workingCopies);
        Map map = project.getOptions(true);
        map.put("org.eclipse.jdt.core.compiler.taskTags", Util.EMPTY_STRING);
        this.options = new CompilerOptions(map);
        ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.options, new DefaultProblemFactory());
        this.lookupEnvironment = new LookupEnvironment(this, this.options, problemReporter, this.nameEnvironment);
        this.parser = MatchLocatorParser.createParser(problemReporter, this);
        this.basicParser = null;
        this.nameLookup = searchableEnvironment.nameLookup;
        this.numberOfMatches = 0;
        this.matchesToProcess = new PossibleMatch[possibleMatchSize];
    }

    protected void locateMatches(JavaProject javaProject, PossibleMatch[] possibleMatches, int start, int length) throws CoreException {
        boolean mustResolvePattern;
        this.initialize(javaProject, length);
        boolean mustResolve = mustResolvePattern = this.pattern.mustResolve;
        this.patternLocator.mayBeGeneric = this.options.sourceLevel >= 0x310000L;
        boolean bindingsWereCreated = mustResolve;
        try {
            IType focusType;
            int i = start;
            int maxUnits = start + length;
            while (i < maxUnits) {
                PossibleMatch possibleMatch = possibleMatches[i];
                try {
                    if (this.parseAndBuildBindings(possibleMatch, mustResolvePattern)) {
                        if (this.patternLocator.mayBeGeneric) {
                            if (!mustResolvePattern && !mustResolve) {
                                bindingsWereCreated = mustResolve = possibleMatch.nodeSet.mustResolve;
                            }
                        } else {
                            possibleMatch.nodeSet.mustResolve = mustResolvePattern;
                        }
                        if (!possibleMatch.nodeSet.mustResolve) {
                            if (this.progressMonitor != null) {
                                ++this.progressWorked;
                                if (this.progressWorked % this.progressStep == 0) {
                                    this.progressMonitor.worked(this.progressStep);
                                }
                            }
                            this.process(possibleMatch, bindingsWereCreated);
                            if (this.numberOfMatches > 0 && this.matchesToProcess[this.numberOfMatches - 1] == possibleMatch) {
                                --this.numberOfMatches;
                            }
                        }
                    }
                }
                finally {
                    if (possibleMatch.hasSimilarMatch()) {
                        possibleMatches[i] = possibleMatch.getSimilarMatch();
                        --i;
                    }
                    if (!possibleMatch.nodeSet.mustResolve) {
                        possibleMatch.cleanUp();
                    }
                }
                ++i;
            }
            if (mustResolve) {
                this.lookupEnvironment.completeTypeBindings();
            }
            if ((focusType = this.getFocusType()) == null) {
                this.hierarchyResolver = null;
            } else if (!this.createHierarchyResolver(focusType, possibleMatches) && this.computeSuperTypeNames(focusType) == null) {
                return;
            }
        }
        catch (AbortCompilation abortCompilation) {
            bindingsWereCreated = false;
        }
        if (!mustResolve) {
            return;
        }
        int i = 0;
        while (i < this.numberOfMatches) {
            block39: {
                PossibleMatch possibleMatch;
                block41: {
                    if (this.progressMonitor != null && this.progressMonitor.isCanceled()) {
                        throw new OperationCanceledException();
                    }
                    possibleMatch = this.matchesToProcess[i];
                    this.matchesToProcess[i] = null;
                    try {
                        this.process(possibleMatch, bindingsWereCreated);
                    }
                    catch (AbortCompilation abortCompilation) {
                        bindingsWereCreated = false;
                        if (this.progressMonitor != null) {
                            ++this.progressWorked;
                            if (this.progressWorked % this.progressStep == 0) {
                                this.progressMonitor.worked(this.progressStep);
                            }
                        }
                        if (this.options.verbose) {
                            System.out.println(Messages.bind(Messages.compilation_done, new String[]{String.valueOf(i + 1), String.valueOf(this.numberOfMatches), new String(possibleMatch.parsedUnit.getFileName())}));
                        }
                        possibleMatch.cleanUp();
                        break block39;
                    }
                    catch (JavaModelException javaModelException) {
                        block40: {
                            try {
                                bindingsWereCreated = false;
                                if (this.progressMonitor == null) break block40;
                                ++this.progressWorked;
                                if (this.progressWorked % this.progressStep != 0) break block40;
                            }
                            catch (Throwable throwable) {
                                if (this.progressMonitor != null) {
                                    ++this.progressWorked;
                                    if (this.progressWorked % this.progressStep == 0) {
                                        this.progressMonitor.worked(this.progressStep);
                                    }
                                }
                                if (this.options.verbose) {
                                    System.out.println(Messages.bind(Messages.compilation_done, new String[]{String.valueOf(i + 1), String.valueOf(this.numberOfMatches), new String(possibleMatch.parsedUnit.getFileName())}));
                                }
                                possibleMatch.cleanUp();
                                throw throwable;
                            }
                            this.progressMonitor.worked(this.progressStep);
                        }
                        if (this.options.verbose) {
                            System.out.println(Messages.bind(Messages.compilation_done, new String[]{String.valueOf(i + 1), String.valueOf(this.numberOfMatches), new String(possibleMatch.parsedUnit.getFileName())}));
                        }
                        possibleMatch.cleanUp();
                        break block39;
                    }
                    if (this.progressMonitor == null) break block41;
                    ++this.progressWorked;
                    if (this.progressWorked % this.progressStep != 0) break block41;
                    this.progressMonitor.worked(this.progressStep);
                }
                if (this.options.verbose) {
                    System.out.println(Messages.bind(Messages.compilation_done, new String[]{String.valueOf(i + 1), String.valueOf(this.numberOfMatches), new String(possibleMatch.parsedUnit.getFileName())}));
                }
                possibleMatch.cleanUp();
            }
            ++i;
        }
    }

    protected void locateMatches(JavaProject javaProject, PossibleMatchSet matchSet, int expected) throws CoreException {
        PossibleMatch[] possibleMatches = matchSet.getPossibleMatches(javaProject.getPackageFragmentRoots());
        int length = possibleMatches.length;
        if (this.progressMonitor != null && expected > length) {
            this.progressWorked += expected - length;
            this.progressMonitor.worked(expected - length);
        }
        int index = 0;
        while (index < length) {
            int max = Math.min(MAX_AT_ONCE, length - index);
            this.locateMatches(javaProject, possibleMatches, index, max);
            index += max;
        }
        this.patternLocator.clear();
    }

    public void locateMatches(SearchDocument[] searchDocuments) throws CoreException {
        int docsLength;
        if (this.patternLocator == null) {
            return;
        }
        int progressLength = docsLength = searchDocuments.length;
        if (BasicSearchEngine.VERBOSE) {
            System.out.println("Locating matches in documents [");
            int i = 0;
            while (i < docsLength) {
                System.out.println("\t" + searchDocuments[i]);
                ++i;
            }
            System.out.println("]");
        }
        IJavaProject[] javaModelProjects = null;
        if (this.searchPackageDeclaration) {
            javaModelProjects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
            progressLength += javaModelProjects.length;
        }
        int n = progressLength < 1000 ? Math.min(Math.max(progressLength / 200 + 1, 2), 4) : 5 * (progressLength / 1000);
        this.progressStep = progressLength < n ? 1 : progressLength / n;
        this.progressWorked = 0;
        ArrayList<ICompilationUnit> copies = new ArrayList<ICompilationUnit>();
        int i = 0;
        while (i < docsLength) {
            SearchDocument document = searchDocuments[i];
            if (document instanceof WorkingCopyDocument) {
                copies.add(((WorkingCopyDocument)document).workingCopy);
            }
            ++i;
        }
        int copiesLength = copies.size();
        this.workingCopies = new ICompilationUnit[copiesLength];
        copies.toArray(this.workingCopies);
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        this.bindings = new SimpleLookupTable();
        try {
            manager.cacheZipFiles(this);
            if (this.handleFactory == null) {
                this.handleFactory = new HandleFactory();
            }
            if (this.progressMonitor != null) {
                this.progressMonitor.beginTask("", searchDocuments.length);
            }
            this.patternLocator.initializePolymorphicSearch(this);
            JavaProject previousJavaProject = null;
            PossibleMatchSet matchSet = new PossibleMatchSet();
            org.eclipse.jdt.internal.core.util.Util.sort(searchDocuments, new Util.Comparer(){

                public int compare(Object a, Object b) {
                    return ((SearchDocument)a).getPath().compareTo(((SearchDocument)b).getPath());
                }
            });
            int displayed = 0;
            String previousPath = null;
            SearchParticipant searchParticipant = null;
            int i2 = 0;
            while (i2 < docsLength) {
                if (this.progressMonitor != null && this.progressMonitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                SearchDocument searchDocument = searchDocuments[i2];
                if (searchParticipant == null) {
                    searchParticipant = searchDocument.getParticipant();
                }
                searchDocuments[i2] = null;
                String pathString = searchDocument.getPath();
                if (i2 > 0 && pathString.equals(previousPath)) {
                    if (this.progressMonitor != null) {
                        ++this.progressWorked;
                        if (this.progressWorked % this.progressStep == 0) {
                            this.progressMonitor.worked(this.progressStep);
                        }
                    }
                    ++displayed;
                } else {
                    Openable openable;
                    previousPath = pathString;
                    ICompilationUnit workingCopy = null;
                    if (searchDocument instanceof WorkingCopyDocument) {
                        workingCopy = ((WorkingCopyDocument)searchDocument).workingCopy;
                        openable = (Openable)((Object)workingCopy);
                    } else {
                        openable = this.handleFactory.createOpenable(pathString, this.scope);
                    }
                    if (openable == null) {
                        if (this.progressMonitor != null) {
                            ++this.progressWorked;
                            if (this.progressWorked % this.progressStep == 0) {
                                this.progressMonitor.worked(this.progressStep);
                            }
                        }
                        ++displayed;
                    } else {
                        IResource resource = null;
                        JavaProject javaProject = (JavaProject)openable.getJavaProject();
                        IResource iResource = resource = workingCopy != null ? workingCopy.getResource() : openable.getResource();
                        if (resource == null) {
                            resource = javaProject.getProject();
                        }
                        if (!javaProject.equals(previousJavaProject)) {
                            if (previousJavaProject != null) {
                                try {
                                    this.locateMatches(previousJavaProject, matchSet, i2 - displayed);
                                    displayed = i2;
                                }
                                catch (JavaModelException javaModelException) {}
                                matchSet.reset();
                            }
                            previousJavaProject = javaProject;
                        }
                        matchSet.add(new PossibleMatch(this, resource, openable, searchDocument, this.pattern.mustResolve));
                    }
                }
                ++i2;
            }
            if (previousJavaProject != null) {
                try {
                    this.locateMatches(previousJavaProject, matchSet, docsLength - displayed);
                }
                catch (JavaModelException javaModelException) {}
            }
            if (this.searchPackageDeclaration) {
                this.locatePackageDeclarations(searchParticipant, javaModelProjects);
            }
        }
        finally {
            if (this.progressMonitor != null) {
                this.progressMonitor.done();
            }
            if (this.nameEnvironment != null) {
                this.nameEnvironment.cleanup();
            }
            manager.flushZipFiles(this);
            this.bindings = null;
        }
    }

    protected void locatePackageDeclarations(SearchParticipant participant, IJavaProject[] projects) throws CoreException {
        this.locatePackageDeclarations(this.pattern, participant, projects);
    }

    protected void locatePackageDeclarations(SearchPattern searchPattern, SearchParticipant participant, IJavaProject[] projects) throws CoreException {
        block19: {
            block18: {
                if (this.progressMonitor != null && this.progressMonitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                if (!(searchPattern instanceof OrPattern)) break block18;
                SearchPattern[] patterns = ((OrPattern)searchPattern).patterns;
                int i = 0;
                int length = patterns.length;
                while (i < length) {
                    this.locatePackageDeclarations(patterns[i], participant, projects);
                    ++i;
                }
                break block19;
            }
            if (!(searchPattern instanceof PackageDeclarationPattern)) break block19;
            IJavaElement focus = searchPattern.focus;
            if (focus != null) {
                if (this.encloses(focus)) {
                    PackageDeclarationMatch match = new PackageDeclarationMatch(focus.getAncestor(4), 0, -1, -1, participant, focus.getResource());
                    this.report(match);
                }
                return;
            }
            PackageDeclarationPattern pkgPattern = (PackageDeclarationPattern)searchPattern;
            boolean isWorkspaceScope = this.scope == JavaModelManager.getJavaModelManager().getWorkspaceScope();
            IPath[] scopeProjectsAndJars = isWorkspaceScope ? null : this.scope.enclosingProjectsAndJars();
            int scopeLength = isWorkspaceScope ? 0 : scopeProjectsAndJars.length;
            SimpleSet packages = new SimpleSet();
            int i = 0;
            int length = projects.length;
            while (i < length) {
                block21: {
                    IJavaProject javaProject;
                    block20: {
                        javaProject = projects[i];
                        if (this.progressMonitor != null) {
                            if (this.progressMonitor.isCanceled()) {
                                throw new OperationCanceledException();
                            }
                            ++this.progressWorked;
                            if (this.progressWorked % this.progressStep == 0) {
                                this.progressMonitor.worked(this.progressStep);
                            }
                        }
                        if (isWorkspaceScope) break block20;
                        boolean found = false;
                        int j = 0;
                        while (j < scopeLength) {
                            if (javaProject.getPath().equals((Object)scopeProjectsAndJars[j])) {
                                found = true;
                                break;
                            }
                            ++j;
                        }
                        if (!found) break block21;
                    }
                    this.nameLookup = ((JavaProject)projects[i]).newNameLookup(this.workingCopies);
                    IPackageFragment[] packageFragments = this.nameLookup.findPackageFragments(new String(pkgPattern.pkgName), false, true);
                    int pLength = packageFragments == null ? 0 : packageFragments.length;
                    int p = 0;
                    while (p < pLength) {
                        IPackageFragment fragment = packageFragments[p];
                        if (packages.addIfNotIncluded(fragment) != null && this.encloses(fragment)) {
                            IResource resource = fragment.getResource();
                            if (resource == null) {
                                resource = javaProject.getProject();
                            }
                            try {
                                if (this.encloses(fragment)) {
                                    PackageDeclarationMatch match = new PackageDeclarationMatch(fragment, 0, -1, -1, participant, resource);
                                    this.report(match);
                                }
                            }
                            catch (JavaModelException e) {
                                throw e;
                            }
                            catch (CoreException e) {
                                throw new JavaModelException(e);
                            }
                        }
                        ++p;
                    }
                }
                ++i;
            }
        }
    }

    protected IType lookupType(ReferenceBinding typeBinding) {
        char[][] qualifiedName;
        IType type;
        int length;
        if (typeBinding == null) {
            return null;
        }
        char[] packageName = typeBinding.qualifiedPackageName();
        IPackageFragment[] pkgs = this.nameLookup.findPackageFragments(packageName == null || packageName.length == 0 ? "" : new String(packageName), false);
        char[] sourceName = typeBinding.qualifiedSourceName();
        String typeName = new String(sourceName);
        int acceptFlag = 0;
        if (typeBinding.isAnnotationType()) {
            acceptFlag = 16;
        } else if (typeBinding.isEnum()) {
            acceptFlag = 8;
        } else if (typeBinding.isInterface()) {
            acceptFlag = 4;
        } else if (typeBinding.isClass()) {
            acceptFlag = 2;
        }
        if (pkgs != null) {
            int i = 0;
            length = pkgs.length;
            while (i < length) {
                type = this.nameLookup.findType(typeName, pkgs[i], false, acceptFlag, true);
                if (type != null) {
                    return type;
                }
                ++i;
            }
        }
        if ((length = (qualifiedName = CharOperation.splitOn('.', sourceName)).length) == 0) {
            return null;
        }
        type = this.createTypeHandle(new String(qualifiedName[0]));
        if (type == null) {
            return null;
        }
        int i = 1;
        while (i < length) {
            if ((type = type.getType(new String(qualifiedName[i]))) == null) {
                return null;
            }
            ++i;
        }
        if (type.exists()) {
            return type;
        }
        return null;
    }

    public SearchMatch newDeclarationMatch(IJavaElement element, Binding binding, int accuracy, int offset, int length) {
        SearchParticipant participant = this.getParticipant();
        IResource resource = this.currentPossibleMatch.resource;
        return this.newDeclarationMatch(element, binding, accuracy, offset, length, participant, resource);
    }

    public SearchMatch newDeclarationMatch(IJavaElement element, Binding binding, int accuracy, int offset, int length, SearchParticipant participant, IResource resource) {
        switch (element.getElementType()) {
            case 4: {
                return new PackageDeclarationMatch(element, accuracy, offset, length, participant, resource);
            }
            case 7: {
                return new TypeDeclarationMatch(binding == null ? element : ((JavaElement)element).resolved(binding), accuracy, offset, length, participant, resource);
            }
            case 8: {
                return new FieldDeclarationMatch(binding == null ? element : ((JavaElement)element).resolved(binding), accuracy, offset, length, participant, resource);
            }
            case 9: {
                return new MethodDeclarationMatch(binding == null ? element : ((JavaElement)element).resolved(binding), accuracy, offset, length, participant, resource);
            }
            case 14: {
                return new LocalVariableDeclarationMatch(element, accuracy, offset, length, participant, resource);
            }
            case 11: {
                return new PackageDeclarationMatch(element, accuracy, offset, length, participant, resource);
            }
            case 15: {
                return new TypeParameterDeclarationMatch(element, accuracy, offset, length, participant, resource);
            }
        }
        return null;
    }

    public FieldReferenceMatch newFieldReferenceMatch(IJavaElement enclosingElement, IJavaElement localElement, Binding enclosingBinding, int accuracy, int offset, int length, ASTNode reference) {
        boolean isWriteAccess;
        int bits = reference.bits;
        boolean isCompoundAssigned = (bits & 0x10000) != 0;
        boolean isReadAccess = isCompoundAssigned || (bits & 0x2000) == 0;
        boolean bl = isWriteAccess = isCompoundAssigned || (bits & 0x2000) != 0;
        if (isWriteAccess && reference instanceof QualifiedNameReference) {
            char[][] tokens = ((QualifiedNameReference)reference).tokens;
            char[] lastToken = tokens[tokens.length - 1];
            if (this.pattern instanceof OrPattern) {
                SearchPattern[] patterns = ((OrPattern)this.pattern).patterns;
                int i = 0;
                int pLength = patterns.length;
                while (i < pLength) {
                    if (!this.patternLocator.matchesName(((VariablePattern)patterns[i]).name, lastToken)) {
                        isWriteAccess = false;
                        isReadAccess = true;
                    }
                    ++i;
                }
            } else if (!this.patternLocator.matchesName(((VariablePattern)this.pattern).name, lastToken)) {
                isWriteAccess = false;
                isReadAccess = true;
            }
        }
        boolean insideDocComment = (bits & 0x8000) != 0;
        SearchParticipant participant = this.getParticipant();
        IResource resource = this.currentPossibleMatch.resource;
        if (enclosingBinding != null) {
            enclosingElement = ((JavaElement)enclosingElement).resolved(enclosingBinding);
        }
        FieldReferenceMatch match = new FieldReferenceMatch(enclosingElement, accuracy, offset, length, isReadAccess, isWriteAccess, insideDocComment, participant, resource);
        match.setLocalElement(localElement);
        return match;
    }

    public SearchMatch newLocalVariableReferenceMatch(IJavaElement enclosingElement, int accuracy, int offset, int length, ASTNode reference) {
        boolean isWriteAccess;
        int bits = reference.bits;
        boolean isCompoundAssigned = (bits & 0x10000) != 0;
        boolean isReadAccess = isCompoundAssigned || (bits & 0x2000) == 0;
        boolean bl = isWriteAccess = isCompoundAssigned || (bits & 0x2000) != 0;
        if (isWriteAccess && reference instanceof QualifiedNameReference) {
            char[][] tokens = ((QualifiedNameReference)reference).tokens;
            char[] lastToken = tokens[tokens.length - 1];
            if (this.pattern instanceof OrPattern) {
                SearchPattern[] patterns = ((OrPattern)this.pattern).patterns;
                int i = 0;
                int pLength = patterns.length;
                while (i < pLength) {
                    if (!this.patternLocator.matchesName(((VariablePattern)patterns[i]).name, lastToken)) {
                        isWriteAccess = false;
                        isReadAccess = true;
                    }
                    ++i;
                }
            } else if (!this.patternLocator.matchesName(((VariablePattern)this.pattern).name, lastToken)) {
                isWriteAccess = false;
                isReadAccess = true;
            }
        }
        boolean insideDocComment = (bits & 0x8000) != 0;
        SearchParticipant participant = this.getParticipant();
        IResource resource = this.currentPossibleMatch.resource;
        return new LocalVariableReferenceMatch(enclosingElement, accuracy, offset, length, isReadAccess, isWriteAccess, insideDocComment, participant, resource);
    }

    public MethodReferenceMatch newMethodReferenceMatch(IJavaElement enclosingElement, Binding enclosingBinding, int accuracy, int offset, int length, boolean isConstructor, boolean isSynthetic, ASTNode reference) {
        boolean insideDocComment;
        SearchParticipant participant = this.getParticipant();
        IResource resource = this.currentPossibleMatch.resource;
        boolean bl = insideDocComment = (reference.bits & 0x8000) != 0;
        if (enclosingBinding != null) {
            enclosingElement = ((JavaElement)enclosingElement).resolved(enclosingBinding);
        }
        boolean isOverridden = (accuracy & 0x200) != 0;
        return new MethodReferenceMatch(enclosingElement, accuracy, offset, length, isConstructor, isSynthetic, isOverridden, insideDocComment, participant, resource);
    }

    public PackageReferenceMatch newPackageReferenceMatch(IJavaElement enclosingElement, int accuracy, int offset, int length, ASTNode reference) {
        SearchParticipant participant = this.getParticipant();
        IResource resource = this.currentPossibleMatch.resource;
        boolean insideDocComment = (reference.bits & 0x8000) != 0;
        return new PackageReferenceMatch(enclosingElement, accuracy, offset, length, insideDocComment, participant, resource);
    }

    public SearchMatch newTypeParameterReferenceMatch(IJavaElement enclosingElement, int accuracy, int offset, int length, ASTNode reference) {
        int bits = reference.bits;
        boolean insideDocComment = (bits & 0x8000) != 0;
        SearchParticipant participant = this.getParticipant();
        IResource resource = this.currentPossibleMatch.resource;
        return new TypeParameterReferenceMatch(enclosingElement, accuracy, offset, length, insideDocComment, participant, resource);
    }

    public TypeReferenceMatch newTypeReferenceMatch(IJavaElement enclosingElement, Binding enclosingBinding, int accuracy, int offset, int length, ASTNode reference) {
        boolean insideDocComment;
        SearchParticipant participant = this.getParticipant();
        IResource resource = this.currentPossibleMatch.resource;
        boolean bl = insideDocComment = (reference.bits & 0x8000) != 0;
        if (enclosingBinding != null) {
            enclosingElement = ((JavaElement)enclosingElement).resolved(enclosingBinding);
        }
        return new TypeReferenceMatch(enclosingElement, accuracy, offset, length, insideDocComment, participant, resource);
    }

    public TypeReferenceMatch newTypeReferenceMatch(IJavaElement enclosingElement, Binding enclosingBinding, int accuracy, ASTNode reference) {
        return this.newTypeReferenceMatch(enclosingElement, enclosingBinding, accuracy, reference.sourceStart, reference.sourceEnd - reference.sourceStart + 1, reference);
    }

    protected boolean parseAndBuildBindings(PossibleMatch possibleMatch, boolean mustResolve) throws CoreException {
        if (this.progressMonitor != null && this.progressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        try {
            if (BasicSearchEngine.VERBOSE) {
                System.out.println("Parsing " + possibleMatch.openable.toStringWithAncestors());
            }
            this.parser.nodeSet = possibleMatch.nodeSet;
            CompilationResult unitResult = new CompilationResult(possibleMatch, 1, 1, this.options.maxProblemsPerUnit);
            CompilationUnitDeclaration parsedUnit = this.parser.dietParse(possibleMatch, unitResult);
            if (parsedUnit != null) {
                if (!parsedUnit.isEmpty()) {
                    if (mustResolve) {
                        this.lookupEnvironment.buildTypeBindings(parsedUnit, null);
                    }
                    if (this.hasAlreadyDefinedType(parsedUnit)) {
                        return false;
                    }
                    this.getMethodBodies(parsedUnit, possibleMatch.nodeSet);
                    if (this.patternLocator.mayBeGeneric && !mustResolve && possibleMatch.nodeSet.mustResolve) {
                        this.lookupEnvironment.buildTypeBindings(parsedUnit, null);
                    }
                }
                possibleMatch.parsedUnit = parsedUnit;
                int size = this.matchesToProcess.length;
                if (this.numberOfMatches == size) {
                    this.matchesToProcess = new PossibleMatch[size == 0 ? 1 : size * 2];
                    System.arraycopy(this.matchesToProcess, 0, this.matchesToProcess, 0, this.numberOfMatches);
                }
                this.matchesToProcess[this.numberOfMatches++] = possibleMatch;
            }
        }
        finally {
            this.parser.nodeSet = null;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void process(PossibleMatch possibleMatch, boolean bindingsWereCreated) throws CoreException {
        this.currentPossibleMatch = possibleMatch;
        CompilationUnitDeclaration unit = possibleMatch.parsedUnit;
        try {
            boolean mustResolve;
            if (unit.isEmpty()) {
                if (!(this.currentPossibleMatch.openable instanceof ClassFile)) return;
                ClassFile classFile = (ClassFile)this.currentPossibleMatch.openable;
                IBinaryType info = null;
                try {
                    info = this.getBinaryInfo(classFile, classFile.resource());
                }
                catch (CoreException coreException) {}
                if (info == null) return;
                boolean mayBeGeneric = this.patternLocator.mayBeGeneric;
                this.patternLocator.mayBeGeneric = false;
                try {
                    new ClassFileMatchLocator().locateMatches(this, classFile, info);
                    return;
                }
                finally {
                    this.patternLocator.mayBeGeneric = mayBeGeneric;
                }
            }
            if (this.hasAlreadyDefinedType(unit)) {
                return;
            }
            boolean bl = mustResolve = this.pattern.mustResolve || possibleMatch.nodeSet.mustResolve;
            if (bindingsWereCreated && mustResolve) {
                if (unit.types != null) {
                    if (BasicSearchEngine.VERBOSE) {
                        System.out.println("Resolving " + this.currentPossibleMatch.openable.toStringWithAncestors());
                    }
                    this.lookupEnvironment.unitBeingCompleted = unit;
                    this.reduceParseTree(unit);
                    if (unit.scope != null) {
                        unit.scope.faultInTypes();
                    }
                    unit.resolve();
                } else if (unit.isPackageInfo()) {
                    if (BasicSearchEngine.VERBOSE) {
                        System.out.println("Resolving " + this.currentPossibleMatch.openable.toStringWithAncestors());
                    }
                    unit.resolve();
                }
            }
            this.reportMatching(unit, mustResolve);
            return;
        }
        catch (AbortCompilation e) {
            this.reportMatching(unit, false);
            if (e instanceof AbortCompilationUnit) return;
            throw e;
        }
        finally {
            this.lookupEnvironment.unitBeingCompleted = null;
            this.currentPossibleMatch = null;
        }
    }

    protected void purgeMethodStatements(TypeDeclaration type, boolean checkEachMethod) {
        TypeDeclaration[] memberTypes;
        checkEachMethod = checkEachMethod && this.currentPossibleMatch.nodeSet.hasPossibleNodes(type.declarationSourceStart, type.declarationSourceEnd);
        AbstractMethodDeclaration[] methods = type.methods;
        if (methods != null) {
            int length;
            int j;
            if (checkEachMethod) {
                j = 0;
                length = methods.length;
                while (j < length) {
                    AbstractMethodDeclaration method = methods[j];
                    if (!this.currentPossibleMatch.nodeSet.hasPossibleNodes(method.declarationSourceStart, method.declarationSourceEnd)) {
                        method.statements = null;
                        method.javadoc = null;
                    }
                    ++j;
                }
            } else {
                j = 0;
                length = methods.length;
                while (j < length) {
                    methods[j].statements = null;
                    methods[j].javadoc = null;
                    ++j;
                }
            }
        }
        if ((memberTypes = type.memberTypes) != null) {
            int i = 0;
            int l = memberTypes.length;
            while (i < l) {
                this.purgeMethodStatements(memberTypes[i], checkEachMethod);
                ++i;
            }
        }
    }

    protected void reduceParseTree(CompilationUnitDeclaration unit) {
        TypeDeclaration[] types = unit.types;
        int i = 0;
        int l = types.length;
        while (i < l) {
            this.purgeMethodStatements(types[i], true);
            ++i;
        }
    }

    public SearchParticipant getParticipant() {
        return this.currentPossibleMatch.document.getParticipant();
    }

    protected void report(SearchMatch match) throws CoreException {
        if (match == null) {
            if (BasicSearchEngine.VERBOSE) {
                System.out.println("Cannot report a null match!!!");
            }
            return;
        }
        if (this.filterEnum(match)) {
            if (BasicSearchEngine.VERBOSE) {
                System.out.println("Filtered package with name enum");
            }
            return;
        }
        long start = -1L;
        if (BasicSearchEngine.VERBOSE) {
            start = System.currentTimeMillis();
            System.out.println("Reporting match");
            System.out.println("\tResource: " + match.getResource());
            System.out.println("\tPositions: [offset=" + match.getOffset() + ", length=" + match.getLength() + "]");
            try {
                if (this.parser != null && match.getOffset() > 0 && match.getLength() > 0 && !(match.getElement() instanceof BinaryMember)) {
                    String selection = new String(this.parser.scanner.source, match.getOffset(), match.getLength());
                    System.out.println("\tSelection: -->" + selection + "<--");
                }
            }
            catch (Exception exception) {}
            try {
                JavaElement javaElement = (JavaElement)match.getElement();
                System.out.println("\tJava element: " + javaElement.toStringWithAncestors());
                if (!javaElement.exists()) {
                    System.out.println("\t\tWARNING: this element does NOT exist!");
                }
            }
            catch (Exception exception) {}
            if (match instanceof ReferenceMatch) {
                try {
                    int length;
                    IJavaElement[] others;
                    ReferenceMatch refMatch = (ReferenceMatch)match;
                    JavaElement local = (JavaElement)refMatch.getLocalElement();
                    if (local != null) {
                        System.out.println("\tLocal element: " + local.toStringWithAncestors());
                    }
                    if (match instanceof TypeReferenceMatch && (others = ((TypeReferenceMatch)refMatch).getOtherElements()) != null && (length = others.length) > 0) {
                        System.out.println("\tOther elements:");
                        int i = 0;
                        while (i < length) {
                            JavaElement other = (JavaElement)others[i];
                            System.out.println("\t\t- " + other.toStringWithAncestors());
                            ++i;
                        }
                    }
                }
                catch (Exception exception) {}
            }
            System.out.println(match.getAccuracy() == 0 ? "\tAccuracy: EXACT_MATCH" : "\tAccuracy: POTENTIAL_MATCH");
            System.out.print("\tRule: ");
            if (match.isExact()) {
                System.out.print("EXACT");
            } else if (match.isEquivalent()) {
                System.out.print("EQUIVALENT");
            } else if (match.isErasure()) {
                System.out.print("ERASURE");
            } else {
                System.out.print("INVALID RULE");
            }
            if (match instanceof MethodReferenceMatch) {
                MethodReferenceMatch methodReferenceMatch = (MethodReferenceMatch)match;
                if (methodReferenceMatch.isSuperInvocation()) {
                    System.out.print("+SUPER INVOCATION");
                }
                if (methodReferenceMatch.isImplicit()) {
                    System.out.print("+IMPLICIT");
                }
                if (methodReferenceMatch.isSynthetic()) {
                    System.out.print("+SYNTHETIC");
                }
            }
            System.out.println("\n\tRaw: " + match.isRaw());
        }
        this.requestor.acceptSearchMatch(match);
        if (BasicSearchEngine.VERBOSE) {
            this.resultCollectorTime += System.currentTimeMillis() - start;
        }
    }

    protected void reportAccurateTypeReference(SearchMatch match, ASTNode typeRef, char[] name) throws CoreException {
        if (match.getRule() == 0) {
            return;
        }
        if (!this.encloses((IJavaElement)match.getElement())) {
            return;
        }
        int sourceStart = typeRef.sourceStart;
        int sourceEnd = typeRef.sourceEnd;
        if (name != null) {
            Scanner scanner = this.parser.scanner;
            scanner.setSource(this.currentPossibleMatch.getContents());
            scanner.resetTo(sourceStart, sourceEnd);
            int token = -1;
            do {
                int currentPosition = scanner.currentPosition;
                try {
                    token = scanner.getNextToken();
                }
                catch (InvalidInputException invalidInputException) {}
                if (token != 26 || !this.pattern.matchesName(name, scanner.getCurrentTokenSource())) continue;
                int length = scanner.currentPosition - currentPosition;
                match.setOffset(currentPosition);
                match.setLength(length);
                this.report(match);
                return;
            } while (token != 69);
        }
        match.setOffset(sourceStart);
        match.setLength(sourceEnd - sourceStart + 1);
        this.report(match);
    }

    protected void reportAccurateParameterizedMethodReference(SearchMatch match, ASTNode statement, TypeReference[] typeArguments) throws CoreException {
        int start;
        block10: {
            if (match.getRule() == 0) {
                return;
            }
            if (!this.encloses((IJavaElement)match.getElement())) {
                return;
            }
            start = match.getOffset();
            if (typeArguments != null && typeArguments.length > 0) {
                boolean isErasureMatch;
                boolean bl = isErasureMatch = this.pattern instanceof OrPattern ? ((OrPattern)this.pattern).isErasureMatch() : ((JavaSearchPattern)this.pattern).isErasureMatch();
                if (!isErasureMatch) {
                    Scanner scanner = this.parser.scanner;
                    char[] source = this.currentPossibleMatch.getContents();
                    scanner.setSource(source);
                    start = typeArguments[0].sourceStart;
                    int end = statement.sourceEnd;
                    scanner.resetTo(start, end);
                    int lineStart = start;
                    try {
                        while (true) {
                            if (scanner.source[scanner.currentPosition] != '\n') {
                                --scanner.currentPosition;
                                if (scanner.currentPosition != 0) {
                                    continue;
                                }
                                break;
                            }
                            lineStart = scanner.currentPosition + 1;
                            scanner.resetTo(lineStart, end);
                            while (!scanner.atEnd()) {
                                if (scanner.getNextToken() != 7) continue;
                                start = scanner.getCurrentTokenStartPosition();
                                break block10;
                            }
                            scanner.currentPosition = end = lineStart - 2;
                        }
                    }
                    catch (InvalidInputException invalidInputException) {}
                }
            }
        }
        match.setOffset(start);
        match.setLength(statement.sourceEnd - start + 1);
        this.report(match);
    }

    /*
     * Unable to fully structure code
     */
    protected void reportAccurateParameterizedTypeReference(SearchMatch match, TypeReference typeRef, int index, TypeReference[] typeArguments) throws CoreException {
        block7: {
            block6: {
                block8: {
                    block9: {
                        if (match.getRule() == 0) {
                            return;
                        }
                        if (!this.encloses((IJavaElement)match.getElement())) {
                            return;
                        }
                        end = typeRef.sourceEnd;
                        if (typeArguments == null) break block7;
                        shouldMatchErasure = this.pattern instanceof OrPattern != false ? ((OrPattern)this.pattern).isErasureMatch() : ((JavaSearchPattern)this.pattern).isErasureMatch();
                        v0 = hasSignatures = this.pattern instanceof OrPattern != false ? ((OrPattern)this.pattern).hasSignatures() : ((JavaSearchPattern)this.pattern).hasSignatures();
                        if (!shouldMatchErasure && hasSignatures) break block8;
                        if (!(typeRef instanceof QualifiedTypeReference) || index < 0) break block9;
                        positions = ((QualifiedTypeReference)typeRef).sourcePositions;
                        end = (int)positions[index];
                        break block7;
                    }
                    if (!(typeRef instanceof ArrayTypeReference)) break block7;
                    end = ((ArrayTypeReference)typeRef).originalSourceEnd;
                    break block7;
                }
                scanner = this.parser.scanner;
                source = this.currentPossibleMatch.getContents();
                scanner.setSource(source);
                scanner.resetTo(end, source.length - 1);
                depth = 0;
                i = typeArguments.length - 1;
                while (i >= 0) {
                    if (typeArguments[i] != null) {
                        lastTypeArgInfo = this.findLastTypeArgumentInfo(typeArguments[i]);
                        depth = (int)(lastTypeArgInfo >>> 32) + 1;
                        scanner.resetTo((int)lastTypeArgInfo + 1, scanner.eofPosition - 1);
                        break block6;
                    }
                    --i;
                }
                break block6;
                while (true) {
                    if (scanner.getNextChar() != 62) continue;
                    end = scanner.currentPosition - 1;
                    break;
                }
            }
            while (depth-- > 0) {
                if (!scanner.atEnd()) ** continue;
            }
        }
        match.setLength(end - match.getOffset() + 1);
        this.report(match);
    }

    protected void reportAccurateEnumConstructorReference(SearchMatch match, FieldDeclaration field, AllocationExpression allocation) throws CoreException {
        if (allocation == null || allocation.enumConstant == null) {
            this.report(match);
            return;
        }
        int sourceStart = match.getOffset() + match.getLength();
        if (allocation.arguments != null && allocation.arguments.length > 0) {
            sourceStart = allocation.arguments[allocation.arguments.length - 1].sourceEnd + 1;
        }
        int sourceEnd = field.declarationSourceEnd;
        if (allocation instanceof QualifiedAllocationExpression) {
            QualifiedAllocationExpression qualifiedAllocation = (QualifiedAllocationExpression)allocation;
            if (qualifiedAllocation.anonymousType != null) {
                sourceEnd = qualifiedAllocation.anonymousType.sourceStart - 1;
            }
        }
        Scanner scanner = this.parser.scanner;
        scanner.setSource(this.currentPossibleMatch.getContents());
        scanner.resetTo(sourceStart, sourceEnd);
        try {
            int token = scanner.getNextToken();
            while (token != 69) {
                if (token == 28) {
                    sourceEnd = scanner.getCurrentTokenEndPosition();
                }
                token = scanner.getNextToken();
            }
        }
        catch (InvalidInputException invalidInputException) {}
        match.setLength(sourceEnd - match.getOffset() + 1);
        this.report(match);
    }

    protected void reportAccurateFieldReference(SearchMatch[] matches, QualifiedNameReference qNameRef) throws CoreException {
        if (matches == null) {
            return;
        }
        int matchesLength = matches.length;
        int sourceStart = qNameRef.sourceStart;
        int sourceEnd = qNameRef.sourceEnd;
        char[][] tokens = qNameRef.tokens;
        Scanner scanner = this.parser.scanner;
        scanner.setSource(this.currentPossibleMatch.getContents());
        scanner.resetTo(sourceStart, sourceEnd);
        int sourceLength = sourceEnd - sourceStart + 1;
        int refSourceStart = -1;
        int refSourceEnd = -1;
        int length = tokens.length;
        int token = -1;
        int previousValid = -1;
        int i = 0;
        int index = 0;
        do {
            SearchMatch match;
            int currentPosition = scanner.currentPosition;
            try {
                token = scanner.getNextToken();
            }
            catch (InvalidInputException invalidInputException) {}
            if (token != 69) {
                char[] currentTokenSource = scanner.getCurrentTokenSource();
                boolean equals = false;
                while (i < length && !(equals = this.pattern.matchesName(tokens[i++], currentTokenSource))) {
                }
                if (equals && (previousValid == -1 || previousValid == i - 2)) {
                    previousValid = i - 1;
                    if (refSourceStart == -1) {
                        refSourceStart = currentPosition;
                    }
                    refSourceEnd = scanner.currentPosition - 1;
                } else {
                    i = 0;
                    refSourceStart = -1;
                    previousValid = -1;
                }
                try {
                    token = scanner.getNextToken();
                }
                catch (InvalidInputException invalidInputException) {}
            }
            if ((match = matches[index]) != null && match.getRule() != 0) {
                if (!this.encloses((IJavaElement)match.getElement())) {
                    return;
                }
                if (refSourceStart != -1) {
                    match.setOffset(refSourceStart);
                    match.setLength(refSourceEnd - refSourceStart + 1);
                    this.report(match);
                } else {
                    match.setOffset(sourceStart);
                    match.setLength(sourceLength);
                    this.report(match);
                }
                i = 0;
            }
            refSourceStart = -1;
            previousValid = -1;
            if (index >= matchesLength - 1) continue;
            ++index;
        } while (token != 69);
    }

    protected void reportBinaryMemberDeclaration(IResource resource, IMember binaryMember, Binding binaryMemberBinding, IBinaryType info, int accuracy) throws CoreException {
        char[] contents;
        SourceMapper mapper;
        BinaryType type;
        String sourceFileName;
        ISourceRange range;
        ClassFile classFile = (ClassFile)binaryMember.getClassFile();
        ISourceRange iSourceRange = range = classFile.isOpen() ? binaryMember.getNameRange() : SourceMapper.UNKNOWN_RANGE;
        if (range.getOffset() == -1 && (sourceFileName = (type = (BinaryType)classFile.getType()).sourceFileName(info)) != null && (mapper = classFile.getSourceMapper()) != null && (contents = mapper.findSource((IType)type, sourceFileName)) != null) {
            range = mapper.mapSource(type, contents, info, binaryMember);
        }
        if (resource == null) {
            resource = this.currentPossibleMatch.resource;
        }
        SearchMatch match = this.newDeclarationMatch(binaryMember, binaryMemberBinding, accuracy, range.getOffset(), range.getLength(), this.getParticipant(), resource);
        this.report(match);
    }

    protected void reportMatching(AbstractMethodDeclaration method, TypeDeclaration type, IJavaElement parent, int accuracy, boolean typeInHierarchy, MatchingNodeSet nodeSet) throws CoreException {
        ASTNode[] nodes;
        org.eclipse.jdt.internal.compiler.ast.TypeParameter[] typeParameters;
        Integer level;
        int i;
        MemberDeclarationVisitor declarationVisitor;
        int length;
        IJavaElement enclosingElement = null;
        if (accuracy > -1 && (enclosingElement = this.createHandle(method, parent)) != null) {
            Scanner scanner = this.parser.scanner;
            int nameSourceStart = method.sourceStart;
            scanner.setSource(this.currentPossibleMatch.getContents());
            scanner.resetTo(nameSourceStart, method.sourceEnd);
            try {
                scanner.getNextToken();
            }
            catch (InvalidInputException invalidInputException) {}
            if (this.encloses(enclosingElement)) {
                SearchMatch match = null;
                if (method.isDefaultConstructor()) {
                    int offset = type.sourceStart;
                    match = this.patternLocator.newDeclarationMatch(type, parent, type.binding, accuracy, type.sourceEnd - offset + 1, this);
                } else {
                    length = scanner.currentPosition - nameSourceStart;
                    match = this.patternLocator.newDeclarationMatch(method, enclosingElement, method.binding, accuracy, length, this);
                }
                if (match != null) {
                    this.report(match);
                }
            }
        }
        if ((method.bits & 2) != 0) {
            if (enclosingElement == null) {
                enclosingElement = this.createHandle(method, parent);
            }
            ASTNode[] nodes2 = typeInHierarchy ? nodeSet.matchingNodes(method.declarationSourceStart, method.declarationSourceEnd) : null;
            boolean report = (this.matchContainer & 4) != 0 && this.encloses(enclosingElement);
            declarationVisitor = new MemberDeclarationVisitor(enclosingElement, (ASTNode[])(report ? nodes2 : null), nodeSet, this);
            try {
                method.traverse((ASTVisitor)declarationVisitor, (ClassScope)null);
            }
            catch (WrappedCoreException e) {
                throw e.coreException;
            }
            if (nodes2 != null) {
                length = nodes2.length;
                i = 0;
                while (i < length) {
                    level = (Integer)nodeSet.matchingNodes.removeKey(nodes2[i]);
                    if (report && level != null) {
                        this.patternLocator.matchReportReference(nodes2[i], enclosingElement, declarationVisitor.getLocalElement(i), declarationVisitor.getOtherElements(i), method.binding, level, this);
                    }
                    ++i;
                }
            }
        }
        if ((typeParameters = method.typeParameters()) != null) {
            if (enclosingElement == null) {
                enclosingElement = this.createHandle(method, parent);
            }
            if (enclosingElement != null) {
                this.reportMatching(typeParameters, enclosingElement, parent, method.binding, nodeSet);
            }
        }
        if (method.annotations != null) {
            if (enclosingElement == null) {
                enclosingElement = this.createHandle(method, parent);
            }
            if (enclosingElement != null) {
                this.reportMatching(method.annotations, enclosingElement, null, method.binding, nodeSet, true, true);
            }
        }
        if (typeInHierarchy && (nodes = nodeSet.matchingNodes(method.declarationSourceStart, method.declarationSourceEnd)) != null) {
            int l;
            if ((this.matchContainer & 4) != 0) {
                if (enclosingElement == null) {
                    enclosingElement = this.createHandle(method, parent);
                }
                if (this.encloses(enclosingElement)) {
                    if (this.pattern.mustResolve) {
                        declarationVisitor = new MemberDeclarationVisitor(enclosingElement, nodes, nodeSet, this);
                        method.traverse((ASTVisitor)declarationVisitor, (ClassScope)null);
                        length = nodes.length;
                        i = 0;
                        while (i < length) {
                            level = (Integer)nodeSet.matchingNodes.removeKey(nodes[i]);
                            if (level != null) {
                                this.patternLocator.matchReportReference(nodes[i], enclosingElement, declarationVisitor.getLocalElement(i), declarationVisitor.getOtherElements(i), method.binding, level, this);
                            }
                            ++i;
                        }
                    } else {
                        int i2 = 0;
                        l = nodes.length;
                        while (i2 < l) {
                            ASTNode node = nodes[i2];
                            level = (Integer)nodeSet.matchingNodes.removeKey(node);
                            if (level != null) {
                                this.patternLocator.matchReportReference(node, enclosingElement, null, null, method.binding, level, this);
                            }
                            ++i2;
                        }
                    }
                    return;
                }
            }
            int i3 = 0;
            l = nodes.length;
            while (i3 < l) {
                nodeSet.matchingNodes.removeKey(nodes[i3]);
                ++i3;
            }
        }
    }

    protected void reportMatching(Annotation[] annotations, IJavaElement enclosingElement, IJavaElement[] otherElements, Binding elementBinding, MatchingNodeSet nodeSet, boolean matchedContainer, boolean enclosesElement) throws CoreException {
        int i = 0;
        int al = annotations.length;
        while (i < al) {
            int o;
            Annotation annotationType = annotations[i];
            IJavaElement localAnnotation = null;
            IJavaElement[] otherAnnotations = null;
            int length = otherElements == null ? 0 : otherElements.length;
            boolean handlesCreated = false;
            TypeReference typeRef = annotationType.type;
            Integer level = (Integer)nodeSet.matchingNodes.removeKey(typeRef);
            if (level != null && enclosesElement && matchedContainer) {
                localAnnotation = this.createHandle(annotationType, (IAnnotatable)((Object)enclosingElement));
                if (length > 0) {
                    otherAnnotations = new IJavaElement[length];
                    int o2 = 0;
                    while (o2 < length) {
                        otherAnnotations[o2] = this.createHandle(annotationType, (IAnnotatable)((Object)otherElements[o2]));
                        ++o2;
                    }
                }
                handlesCreated = true;
                this.patternLocator.matchReportReference(typeRef, enclosingElement, localAnnotation, otherAnnotations, elementBinding, level, this);
            }
            MemberValuePair[] pairs = annotationType.memberValuePairs();
            int j = 0;
            int pl = pairs.length;
            while (j < pl) {
                MemberValuePair pair = pairs[j];
                level = (Integer)nodeSet.matchingNodes.removeKey(pair);
                if (level != null && enclosesElement) {
                    ASTNode reference;
                    ASTNode aSTNode = reference = annotationType instanceof SingleMemberAnnotation ? annotationType : pair;
                    if (!handlesCreated) {
                        localAnnotation = this.createHandle(annotationType, (IAnnotatable)((Object)enclosingElement));
                        if (length > 0) {
                            otherAnnotations = new IJavaElement[length];
                            o = 0;
                            while (o < length) {
                                otherAnnotations[o] = this.createHandle(annotationType, (IAnnotatable)((Object)otherElements[o]));
                                ++o;
                            }
                        }
                        handlesCreated = true;
                    }
                    this.patternLocator.matchReportReference(reference, enclosingElement, localAnnotation, otherAnnotations, pair.binding, level, this);
                }
                ++j;
            }
            ASTNode[] nodes = nodeSet.matchingNodes(annotationType.sourceStart, annotationType.declarationSourceEnd);
            if (nodes != null) {
                int j2;
                if (!matchedContainer) {
                    j2 = 0;
                    int nl = nodes.length;
                    while (j2 < nl) {
                        nodeSet.matchingNodes.removeKey(nodes[j2]);
                        ++j2;
                    }
                } else {
                    j2 = 0;
                    int nl = nodes.length;
                    while (j2 < nl) {
                        ASTNode node = nodes[j2];
                        level = (Integer)nodeSet.matchingNodes.removeKey(node);
                        if (enclosesElement) {
                            if (!handlesCreated) {
                                localAnnotation = this.createHandle(annotationType, (IAnnotatable)((Object)enclosingElement));
                                if (length > 0) {
                                    otherAnnotations = new IJavaElement[length];
                                    o = 0;
                                    while (o < length) {
                                        otherAnnotations[o] = this.createHandle(annotationType, (IAnnotatable)((Object)otherElements[o]));
                                        ++o;
                                    }
                                }
                                handlesCreated = true;
                            }
                            this.patternLocator.matchReportReference(node, enclosingElement, localAnnotation, otherAnnotations, elementBinding, level, this);
                        }
                        ++j2;
                    }
                }
            }
            ++i;
        }
    }

    protected void reportMatching(CompilationUnitDeclaration unit, boolean mustResolve) throws CoreException {
        TypeDeclaration[] types;
        Integer level;
        ASTNode[] nodes;
        boolean matchedUnitContainer;
        MatchingNodeSet nodeSet = this.currentPossibleMatch.nodeSet;
        boolean locatorMustResolve = this.patternLocator.mustResolve;
        if (nodeSet.mustResolve) {
            this.patternLocator.mustResolve = true;
        }
        if (BasicSearchEngine.VERBOSE) {
            System.out.println("Report matching: ");
            int size = nodeSet.matchingNodes == null ? 0 : nodeSet.matchingNodes.elementSize;
            System.out.print("\t- node set: accurate=" + size);
            size = nodeSet.possibleMatchingNodesSet == null ? 0 : nodeSet.possibleMatchingNodesSet.elementSize;
            System.out.println(", possible=" + size);
            System.out.print("\t- must resolve: " + mustResolve);
            System.out.print(" (locator: " + this.patternLocator.mustResolve);
            System.out.println(", nodeSet: " + nodeSet.mustResolve + ')');
            System.out.println("\t- fine grain flags=" + JavaSearchPattern.getFineGrainFlagString(this.patternLocator.fineGrain()));
        }
        if (mustResolve) {
            this.unitScope = unit.scope.compilationUnitScope();
            Object[] nodes2 = nodeSet.possibleMatchingNodesSet.values;
            int i = 0;
            int l = nodes2.length;
            while (i < l) {
                ASTNode node = (ASTNode)nodes2[i];
                if (node != null) {
                    if (node instanceof ImportReference) {
                        if (this.hierarchyResolver == null) {
                            ImportReference importRef = (ImportReference)node;
                            Binding binding = (importRef.bits & 0x20000) != 0 ? this.unitScope.getImport(CharOperation.subarray(importRef.tokens, 0, importRef.tokens.length), true, importRef.isStatic()) : this.unitScope.getImport(importRef.tokens, false, importRef.isStatic());
                            this.patternLocator.matchLevelAndReportImportRef(importRef, binding, this);
                        }
                    } else {
                        nodeSet.addMatch(node, this.patternLocator.resolveLevel(node));
                    }
                }
                ++i;
            }
            nodeSet.possibleMatchingNodesSet = new SimpleSet(3);
            if (BasicSearchEngine.VERBOSE) {
                int size = nodeSet.matchingNodes == null ? 0 : nodeSet.matchingNodes.elementSize;
                System.out.print("\t- node set: accurate=" + size);
                size = nodeSet.possibleMatchingNodesSet == null ? 0 : nodeSet.possibleMatchingNodesSet.elementSize;
                System.out.println(", possible=" + size);
            }
        } else {
            this.unitScope = null;
        }
        if (nodeSet.matchingNodes.elementSize == 0) {
            return;
        }
        this.methodHandles = new HashSet();
        boolean bl = matchedUnitContainer = (this.matchContainer & 1) != 0;
        if (unit.javadoc != null && (nodes = nodeSet.matchingNodes(unit.javadoc.sourceStart, unit.javadoc.sourceEnd)) != null) {
            if (!matchedUnitContainer) {
                int i = 0;
                int l = nodes.length;
                while (i < l) {
                    nodeSet.matchingNodes.removeKey(nodes[i]);
                    ++i;
                }
            } else {
                IJavaElement element = this.createPackageDeclarationHandle(unit);
                int i = 0;
                int l = nodes.length;
                while (i < l) {
                    ASTNode node = nodes[i];
                    level = (Integer)nodeSet.matchingNodes.removeKey(node);
                    if (this.encloses(element)) {
                        this.patternLocator.matchReportReference(node, element, null, null, null, level, this);
                    }
                    ++i;
                }
            }
        }
        if (matchedUnitContainer) {
            ImportReference[] imports;
            IJavaElement element;
            ImportReference pkg = unit.currentPackage;
            if (pkg != null && pkg.annotations != null && (element = this.createPackageDeclarationHandle(unit)) != null) {
                this.reportMatching(pkg.annotations, element, null, null, nodeSet, true, this.encloses(element));
            }
            if ((imports = unit.imports) != null) {
                int i = 0;
                int l = imports.length;
                while (i < l) {
                    ImportReference importRef = imports[i];
                    level = (Integer)nodeSet.matchingNodes.removeKey(importRef);
                    if (level != null) {
                        this.patternLocator.matchReportImportRef(importRef, null, this.createImportHandle(importRef), level, this);
                    }
                    ++i;
                }
            }
        }
        if ((types = unit.types) != null) {
            int i = 0;
            int l = types.length;
            while (i < l) {
                if (nodeSet.matchingNodes.elementSize == 0) {
                    return;
                }
                TypeDeclaration type = types[i];
                Integer level2 = (Integer)nodeSet.matchingNodes.removeKey(type);
                int accuracy = level2 != null && matchedUnitContainer ? level2 : -1;
                this.reportMatching(type, null, accuracy, nodeSet, 1);
                ++i;
            }
        }
        this.methodHandles = null;
        this.bindings.removeKey(this.pattern);
        this.patternLocator.mustResolve = locatorMustResolve;
    }

    protected void reportMatching(FieldDeclaration field, FieldDeclaration[] otherFields, TypeDeclaration type, IJavaElement parent, int accuracy, boolean typeInHierarchy, MatchingNodeSet nodeSet) throws CoreException {
        QualifiedAllocationExpression allocation;
        Integer level;
        ASTNode node;
        ASTNode[] nodes;
        IJavaElement enclosingElement = null;
        if (accuracy > -1 && this.encloses(enclosingElement = this.createHandle(field, type, parent))) {
            int offset = field.sourceStart;
            SearchMatch match = this.newDeclarationMatch(enclosingElement, field.binding, accuracy, offset, field.sourceEnd - offset + 1);
            if (field.initialization instanceof AllocationExpression) {
                this.reportAccurateEnumConstructorReference(match, field, (AllocationExpression)field.initialization);
            } else {
                this.report(match);
            }
        }
        if ((field.bits & 2) != 0) {
            if (enclosingElement == null) {
                enclosingElement = this.createHandle(field, type, parent);
            }
            int fieldEnd = field.endPart2Position == 0 ? field.declarationSourceEnd : field.endPart2Position;
            nodes = typeInHierarchy ? nodeSet.matchingNodes(field.sourceStart, fieldEnd) : null;
            boolean report = (this.matchContainer & 8) != 0 && this.encloses(enclosingElement);
            MemberDeclarationVisitor declarationVisitor = new MemberDeclarationVisitor(enclosingElement, (ASTNode[])(report ? nodes : null), nodeSet, this);
            try {
                field.traverse((ASTVisitor)declarationVisitor, null);
            }
            catch (WrappedCoreException e) {
                throw e.coreException;
            }
            if (nodes != null) {
                int length = nodes.length;
                int i = 0;
                while (i < length) {
                    node = nodes[i];
                    level = (Integer)nodeSet.matchingNodes.removeKey(node);
                    if (report && level != null) {
                        if (node instanceof TypeDeclaration && (allocation = ((TypeDeclaration)node).allocation) != null && allocation.enumConstant != null) {
                            node = field;
                        }
                        this.patternLocator.matchReportReference(node, enclosingElement, declarationVisitor.getLocalElement(i), declarationVisitor.getOtherElements(i), field.binding, level, this);
                    }
                    ++i;
                }
            }
        }
        IJavaElement[] otherElements = null;
        if (field.annotations != null) {
            if (enclosingElement == null) {
                enclosingElement = this.createHandle(field, type, parent);
            }
            if (otherFields != null) {
                otherElements = this.createHandles(otherFields, type, parent);
            }
            this.reportMatching(field.annotations, enclosingElement, otherElements, field.binding, nodeSet, true, true);
        }
        if (typeInHierarchy) {
            int fieldEnd;
            ASTNode[] nodes2;
            if (field.endPart1Position != 0 && (nodes = nodeSet.matchingNodes(field.declarationSourceStart, field.endPart1Position)) != null) {
                int i;
                if ((this.matchContainer & 8) == 0) {
                    i = 0;
                    int l = nodes.length;
                    while (i < l) {
                        nodeSet.matchingNodes.removeKey(nodes[i]);
                        ++i;
                    }
                } else {
                    if (enclosingElement == null) {
                        enclosingElement = this.createHandle(field, type, parent);
                    }
                    if (this.encloses(enclosingElement)) {
                        i = 0;
                        int l = nodes.length;
                        while (i < l) {
                            ASTNode node2 = nodes[i];
                            Integer level2 = (Integer)nodeSet.matchingNodes.removeKey(node2);
                            if (otherFields != null && otherElements == null) {
                                otherElements = this.createHandles(otherFields, type, parent);
                            }
                            this.patternLocator.matchReportReference(node2, enclosingElement, null, otherElements, field.binding, level2, this);
                            ++i;
                        }
                    }
                }
            }
            if ((nodes2 = nodeSet.matchingNodes(field.sourceStart, fieldEnd = field.endPart2Position == 0 ? field.declarationSourceEnd : field.endPart2Position)) != null) {
                if ((this.matchContainer & 8) == 0) {
                    int i = 0;
                    int l = nodes2.length;
                    while (i < l) {
                        nodeSet.matchingNodes.removeKey(nodes2[i]);
                        ++i;
                    }
                } else {
                    if (enclosingElement == null) {
                        enclosingElement = this.createHandle(field, type, parent);
                    }
                    if (this.encloses(enclosingElement)) {
                        MemberDeclarationVisitor declarationVisitor = new MemberDeclarationVisitor(enclosingElement, nodes2, nodeSet, this);
                        field.traverse((ASTVisitor)declarationVisitor, null);
                        int length = nodes2.length;
                        int i = 0;
                        while (i < length) {
                            node = nodes2[i];
                            level = (Integer)nodeSet.matchingNodes.removeKey(node);
                            if (level != null) {
                                if (node instanceof TypeDeclaration && (allocation = ((TypeDeclaration)node).allocation) != null && allocation.enumConstant != null) {
                                    node = field;
                                }
                                this.patternLocator.matchReportReference(node, enclosingElement, declarationVisitor.getLocalElement(i), declarationVisitor.getOtherElements(i), field.binding, level, this);
                            }
                            ++i;
                        }
                        return;
                    }
                }
            }
        }
    }

    protected void reportMatching(TypeDeclaration type, IJavaElement parent, int accuracy, MatchingNodeSet nodeSet, int occurrenceCount) throws CoreException {
        TypeDeclaration[] memberTypes;
        AbstractMethodDeclaration[] methods;
        ASTNode[] nodes;
        boolean matchedClassContainer;
        IJavaElement enclosingElement = parent;
        if (enclosingElement == null) {
            enclosingElement = this.createTypeHandle(new String(type.name));
        } else if (enclosingElement instanceof IType) {
            enclosingElement = ((IType)parent).getType(new String(type.name));
        } else if (enclosingElement instanceof IMember) {
            IMember member = (IMember)parent;
            enclosingElement = member.isBinary() ? ((IClassFile)((Object)this.currentPossibleMatch.openable)).getType() : member.getType(new String(type.name), occurrenceCount);
        }
        if (enclosingElement == null) {
            return;
        }
        boolean enclosesElement = this.encloses(enclosingElement);
        if (accuracy > -1 && enclosesElement) {
            int offset = type.sourceStart;
            SearchMatch match = this.patternLocator.newDeclarationMatch(type, enclosingElement, type.binding, accuracy, type.sourceEnd - offset + 1, this);
            this.report(match);
        }
        boolean bl = matchedClassContainer = (this.matchContainer & 2) != 0;
        if (type.typeParameters != null) {
            this.reportMatching(type.typeParameters, enclosingElement, parent, type.binding, nodeSet);
        }
        if (type.annotations != null) {
            this.reportMatching(type.annotations, enclosingElement, null, type.binding, nodeSet, matchedClassContainer, enclosesElement);
        }
        if (type.javadoc != null && (nodes = nodeSet.matchingNodes(type.declarationSourceStart, type.sourceStart)) != null) {
            int l;
            int i;
            if (!matchedClassContainer) {
                i = 0;
                l = nodes.length;
                while (i < l) {
                    nodeSet.matchingNodes.removeKey(nodes[i]);
                    ++i;
                }
            } else {
                i = 0;
                l = nodes.length;
                while (i < l) {
                    ASTNode node = nodes[i];
                    Integer level = (Integer)nodeSet.matchingNodes.removeKey(node);
                    if (enclosesElement) {
                        this.patternLocator.matchReportReference(node, enclosingElement, null, null, type.binding, level, this);
                    }
                    ++i;
                }
            }
        }
        if ((type.bits & 0x200) != 0) {
            Integer level;
            TypeReference superType = type.allocation.type;
            if (superType != null && (level = (Integer)nodeSet.matchingNodes.removeKey(superType)) != null && matchedClassContainer) {
                this.patternLocator.matchReportReference(superType, enclosingElement, null, null, type.binding, level, this);
            }
        } else {
            TypeReference[] superInterfaces;
            TypeReference superClass = type.superclass;
            if (superClass != null) {
                this.reportMatchingSuper(superClass, enclosingElement, type.binding, nodeSet, matchedClassContainer);
            }
            if ((superInterfaces = type.superInterfaces) != null) {
                int i = 0;
                int l = superInterfaces.length;
                while (i < l) {
                    this.reportMatchingSuper(superInterfaces[i], enclosingElement, type.binding, nodeSet, matchedClassContainer);
                    ++i;
                }
            }
        }
        boolean typeInHierarchy = type.binding == null || this.typeInHierarchy(type.binding);
        matchedClassContainer = matchedClassContainer && typeInHierarchy;
        FieldDeclaration[] fields = type.fields;
        if (fields != null) {
            if (nodeSet.matchingNodes.elementSize == 0) {
                return;
            }
            FieldDeclaration[] otherFields = null;
            int first = -1;
            int length = fields.length;
            int i = 0;
            while (i < length) {
                boolean last;
                FieldDeclaration field = fields[i];
                boolean bl2 = last = field.endPart2Position == 0 || field.declarationEnd == field.endPart2Position;
                if (!last && first == -1) {
                    first = i;
                }
                if (first >= 0) {
                    if (i > first) {
                        if (otherFields == null) {
                            otherFields = new FieldDeclaration[length - i];
                        }
                        otherFields[i - 1 - first] = field;
                    }
                    if (last) {
                        int j = first;
                        while (j <= i) {
                            Integer level = (Integer)nodeSet.matchingNodes.removeKey(fields[j]);
                            int value = level != null && matchedClassContainer ? level : -1;
                            this.reportMatching(fields[j], otherFields, type, enclosingElement, value, typeInHierarchy, nodeSet);
                            ++j;
                        }
                        first = -1;
                        otherFields = null;
                    }
                } else {
                    Integer level = (Integer)nodeSet.matchingNodes.removeKey(field);
                    int value = level != null && matchedClassContainer ? level : -1;
                    this.reportMatching(field, null, type, enclosingElement, value, typeInHierarchy, nodeSet);
                }
                ++i;
            }
        }
        if ((methods = type.methods) != null) {
            if (nodeSet.matchingNodes.elementSize == 0) {
                return;
            }
            int i = 0;
            int l = methods.length;
            while (i < l) {
                AbstractMethodDeclaration method = methods[i];
                Integer level = (Integer)nodeSet.matchingNodes.removeKey(method);
                int value = level != null && matchedClassContainer ? level : -1;
                this.reportMatching(method, type, enclosingElement, value, typeInHierarchy, nodeSet);
                ++i;
            }
        }
        if ((memberTypes = type.memberTypes) != null) {
            int i = 0;
            int l = memberTypes.length;
            while (i < l) {
                if (nodeSet.matchingNodes.elementSize == 0) {
                    return;
                }
                TypeDeclaration memberType = memberTypes[i];
                Integer level = (Integer)nodeSet.matchingNodes.removeKey(memberType);
                int value = level != null && matchedClassContainer ? level : -1;
                this.reportMatching(memberType, enclosingElement, value, nodeSet, 1);
                ++i;
            }
        }
    }

    protected void reportMatching(org.eclipse.jdt.internal.compiler.ast.TypeParameter[] typeParameters, IJavaElement enclosingElement, IJavaElement parent, Binding binding, MatchingNodeSet nodeSet) throws CoreException {
        if (typeParameters == null) {
            return;
        }
        int i = 0;
        int l = typeParameters.length;
        while (i < l) {
            org.eclipse.jdt.internal.compiler.ast.TypeParameter typeParameter = typeParameters[i];
            if (typeParameter != null) {
                Integer level = (Integer)nodeSet.matchingNodes.removeKey(typeParameter);
                if (level != null && level > -1 && this.encloses(enclosingElement)) {
                    int offset = typeParameter.sourceStart;
                    SearchMatch match = this.patternLocator.newDeclarationMatch(typeParameter, enclosingElement, binding, level, typeParameter.sourceEnd - offset + 1, this);
                    this.report(match);
                }
                if (typeParameter.type != null) {
                    level = (Integer)nodeSet.matchingNodes.removeKey(typeParameter.type);
                    if (level != null) {
                        IJavaElement localElement = this.createHandle(typeParameter, enclosingElement);
                        this.patternLocator.matchReportReference(typeParameter.type, enclosingElement, localElement, null, binding, level, this);
                    }
                    if (typeParameter.type instanceof ParameterizedSingleTypeReference) {
                        ParameterizedSingleTypeReference paramSTR = (ParameterizedSingleTypeReference)typeParameter.type;
                        if (paramSTR.typeArguments != null) {
                            int length = paramSTR.typeArguments.length;
                            int k = 0;
                            while (k < length) {
                                TypeReference wildcardBound;
                                TypeReference typeArgument = paramSTR.typeArguments[k];
                                level = (Integer)nodeSet.matchingNodes.removeKey(typeArgument);
                                if (level != null) {
                                    IJavaElement localElement = this.createHandle(typeParameter, enclosingElement);
                                    this.patternLocator.matchReportReference(typeArgument, enclosingElement, localElement, null, binding, level, this);
                                }
                                if (typeArgument instanceof Wildcard && (wildcardBound = ((Wildcard)typeArgument).bound) != null && (level = (Integer)nodeSet.matchingNodes.removeKey(wildcardBound)) != null) {
                                    IJavaElement localElement = this.createHandle(typeParameter, enclosingElement);
                                    this.patternLocator.matchReportReference(wildcardBound, enclosingElement, localElement, null, binding, level, this);
                                }
                                ++k;
                            }
                        }
                    }
                }
                if (typeParameter.bounds != null) {
                    int j = 0;
                    int b = typeParameter.bounds.length;
                    while (j < b) {
                        TypeReference typeParameterBound = typeParameter.bounds[j];
                        level = (Integer)nodeSet.matchingNodes.removeKey(typeParameterBound);
                        if (level != null) {
                            IJavaElement localElement = this.createHandle(typeParameter, enclosingElement);
                            this.patternLocator.matchReportReference(typeParameterBound, enclosingElement, localElement, null, binding, level, this);
                        }
                        if (typeParameterBound instanceof ParameterizedSingleTypeReference) {
                            ParameterizedSingleTypeReference paramSTR = (ParameterizedSingleTypeReference)typeParameterBound;
                            if (paramSTR.typeArguments != null) {
                                int length = paramSTR.typeArguments.length;
                                int k = 0;
                                while (k < length) {
                                    TypeReference wildcardBound;
                                    TypeReference typeArgument = paramSTR.typeArguments[k];
                                    level = (Integer)nodeSet.matchingNodes.removeKey(typeArgument);
                                    if (level != null) {
                                        IJavaElement localElement = this.createHandle(typeParameter, enclosingElement);
                                        this.patternLocator.matchReportReference(typeArgument, enclosingElement, localElement, null, binding, level, this);
                                    }
                                    if (typeArgument instanceof Wildcard && (wildcardBound = ((Wildcard)typeArgument).bound) != null && (level = (Integer)nodeSet.matchingNodes.removeKey(wildcardBound)) != null) {
                                        IJavaElement localElement = this.createHandle(typeParameter, enclosingElement);
                                        this.patternLocator.matchReportReference(wildcardBound, enclosingElement, localElement, null, binding, level, this);
                                    }
                                    ++k;
                                }
                            }
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
    }

    protected void reportMatchingSuper(TypeReference superReference, IJavaElement enclosingElement, Binding elementBinding, MatchingNodeSet nodeSet, boolean matchedClassContainer) throws CoreException {
        Integer level;
        ASTNode[] nodes = null;
        if (superReference instanceof ParameterizedSingleTypeReference || superReference instanceof ParameterizedQualifiedTypeReference) {
            long lastTypeArgumentInfo = this.findLastTypeArgumentInfo(superReference);
            nodes = nodeSet.matchingNodes(superReference.sourceStart, (int)lastTypeArgumentInfo);
        }
        if (nodes != null) {
            if ((this.matchContainer & 2) == 0) {
                int i = 0;
                int l = nodes.length;
                while (i < l) {
                    nodeSet.matchingNodes.removeKey(nodes[i]);
                    ++i;
                }
            } else if (this.encloses(enclosingElement)) {
                int i = 0;
                int l = nodes.length;
                while (i < l) {
                    ASTNode node = nodes[i];
                    Integer level2 = (Integer)nodeSet.matchingNodes.removeKey(node);
                    this.patternLocator.matchReportReference(node, enclosingElement, null, null, elementBinding, level2, this);
                    ++i;
                }
            }
        } else if (this.encloses(enclosingElement) && (level = (Integer)nodeSet.matchingNodes.removeKey(superReference)) != null && matchedClassContainer) {
            this.patternLocator.matchReportReference(superReference, enclosingElement, null, null, elementBinding, level, this);
        }
    }

    protected boolean typeInHierarchy(ReferenceBinding binding) {
        if (this.hierarchyResolver == null) {
            return true;
        }
        if (this.hierarchyResolver.subOrSuperOfFocus(binding)) {
            return true;
        }
        if (this.allSuperTypeNames != null) {
            char[][] compoundName = binding.compoundName;
            int i = 0;
            int length = this.allSuperTypeNames.length;
            while (i < length) {
                if (CharOperation.equals(compoundName, this.allSuperTypeNames[i])) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public static class WorkingCopyDocument
    extends JavaSearchDocument {
        public ICompilationUnit workingCopy;

        WorkingCopyDocument(ICompilationUnit workingCopy, SearchParticipant participant) {
            super(workingCopy.getPath().toString(), participant);
            this.charContents = ((CompilationUnit)workingCopy).getContents();
            this.workingCopy = workingCopy;
        }

        public String toString() {
            return "WorkingCopyDocument for " + this.getPath();
        }
    }

    public static class WrappedCoreException
    extends RuntimeException {
        private static final long serialVersionUID = 8354329870126121212L;
        public CoreException coreException;

        public WrappedCoreException(CoreException coreException) {
            this.coreException = coreException;
        }
    }
}

