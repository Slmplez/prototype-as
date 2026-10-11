/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.codeassist;

import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.ISearchRequestor;
import org.eclipse.jdt.internal.codeassist.InternalCompletionContext;
import org.eclipse.jdt.internal.codeassist.InternalCompletionProposal;
import org.eclipse.jdt.internal.codeassist.MissingTypesGuesser;
import org.eclipse.jdt.internal.codeassist.RelevanceConstants;
import org.eclipse.jdt.internal.codeassist.ThrownExceptionFinder;
import org.eclipse.jdt.internal.codeassist.UnresolvedReferenceNameFinder;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeDetector;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnAnnotationOfType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnArgumentName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnBranchStatementLabel;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnClassLiteralAccess;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnExplicitConstructorCall;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnImportReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadoc;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocAllocationExpression;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocFieldReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocMessageSend;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocParamNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocTag;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocTypeParamReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnLocalName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMarkerAnnotationName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMemberAccess;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMemberValueName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMessageSend;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMessageSendName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodReturnType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnPackageReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedAllocationExpression;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnStringLiteral;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.codeassist.complete.CompletionScanner;
import org.eclipse.jdt.internal.codeassist.complete.InvalidCursorLocation;
import org.eclipse.jdt.internal.codeassist.impl.AssistParser;
import org.eclipse.jdt.internal.codeassist.impl.Engine;
import org.eclipse.jdt.internal.codeassist.impl.Keywords;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.AssertStatement;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocImplicitTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.OperatorExpression;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.ast.WhileStatement;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.parser.TerminalTokens;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.BinaryTypeConverter;
import org.eclipse.jdt.internal.core.INamingRequestor;
import org.eclipse.jdt.internal.core.InternalNamingConventions;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceMethodElementInfo;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchNameEnvironment;

public final class CompletionEngine
extends Engine
implements ISearchRequestor,
TypeConstants,
TerminalTokens,
RelevanceConstants,
SuffixConstants {
    public HashtableOfObject typeCache;
    public int openedBinaryTypes;
    public static boolean DEBUG = false;
    public static boolean PERF = false;
    private static final char[] KNOWN_TYPE_WITH_UNKNOWN_CONSTRUCTORS = new char[0];
    private static final char[] KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS = new char[0];
    private static final char[] ARG = "arg".toCharArray();
    private static final char[] ARG0 = "arg0".toCharArray();
    private static final char[] ARG1 = "arg1".toCharArray();
    private static final char[] ARG2 = "arg2".toCharArray();
    private static final char[] ARG3 = "arg3".toCharArray();
    private static final char[][] ARGS1 = new char[][]{ARG0};
    private static final char[][] ARGS2 = new char[][]{ARG0, ARG1};
    private static final char[][] ARGS3 = new char[][]{ARG0, ARG1, ARG2};
    private static final char[][] ARGS4 = new char[][]{ARG0, ARG1, ARG2, ARG3};
    private static final int CHECK_CANCEL_FREQUENCY = 50;
    public static final boolean NO_TYPE_COMPLETION_ON_EMPTY_TOKEN = false;
    private static final char[] ERROR_PATTERN = "*error*".toCharArray();
    private static final char[] EXCEPTION_PATTERN = "*exception*".toCharArray();
    private static final char[] SEMICOLON = new char[]{';'};
    private static final char[] CLASS = "Class".toCharArray();
    private static final char[] VOID = "void".toCharArray();
    private static final char[] INT = "int".toCharArray();
    private static final char[] INT_SIGNATURE = new char[]{'I'};
    private static final char[] VALUE = "value".toCharArray();
    private static final char[] EXTENDS = "extends".toCharArray();
    private static final char[] SUPER = "super".toCharArray();
    private static final char[] DEFAULT_CONSTRUCTOR_SIGNATURE = "()V".toCharArray();
    private static final char[] DOT = ".".toCharArray();
    private static final char[] VARARGS = "...".toCharArray();
    private static final char[] IMPORT = "import".toCharArray();
    private static final char[] STATIC = "static".toCharArray();
    private static final char[] ON_DEMAND = ".*".toCharArray();
    private static final char[] IMPORT_END = ";\n".toCharArray();
    private static final char[] JAVA_LANG_OBJECT_SIGNATURE = CompletionEngine.createTypeSignature(CharOperation.concatWith(JAVA_LANG, '.'), OBJECT);
    private static final char[] JAVA_LANG_NAME = CharOperation.concatWith(JAVA_LANG, '.');
    private static final int NONE = 0;
    private static final int SUPERTYPE = 1;
    private static final int SUBTYPE = 2;
    private static final char[] DOT_ENUM = ".enum".toCharArray();
    int expectedTypesPtr = -1;
    TypeBinding[] expectedTypes = new TypeBinding[1];
    int expectedTypesFilter;
    boolean hasJavaLangObjectAsExpectedType = false;
    boolean hasExpectedArrayTypes = false;
    boolean hasComputedExpectedArrayTypes = false;
    int uninterestingBindingsPtr = -1;
    Binding[] uninterestingBindings = new Binding[1];
    int forbbidenBindingsPtr = -1;
    Binding[] forbbidenBindings = new Binding[1];
    int uninterestingBindingsFilter;
    ImportBinding[] favoriteReferenceBindings;
    boolean assistNodeIsClass;
    boolean assistNodeIsEnum;
    boolean assistNodeIsException;
    boolean assistNodeIsInterface;
    boolean assistNodeIsAnnotation;
    boolean assistNodeIsConstructor;
    boolean assistNodeIsSuperType;
    boolean assistNodeIsExtendedType;
    boolean assistNodeIsInterfaceExcludingAnnotation;
    int assistNodeInJavadoc = 0;
    boolean assistNodeCanBeSingleMemberAnnotation = false;
    boolean assistNodeIsInsideCase = false;
    boolean assistNodeIsString = false;
    long targetedElement;
    WorkingCopyOwner owner;
    IProgressMonitor monitor;
    IJavaProject javaProject;
    ITypeRoot typeRoot;
    CompletionParser parser;
    CompletionRequestor requestor;
    CompletionProblemFactory problemFactory;
    ProblemReporter problemReporter;
    private JavaSearchNameEnvironment noCacheNameEnvironment;
    char[] source;
    char[] completionToken;
    char[] qualifiedCompletionToken;
    boolean resolvingImports = false;
    boolean resolvingStaticImports = false;
    boolean insideQualifiedReference = false;
    boolean noProposal = true;
    CategorizedProblem problem = null;
    char[] fileName = null;
    int startPosition;
    int actualCompletionPosition;
    int endPosition;
    int offset;
    int tokenStart;
    int tokenEnd;
    int javadocTagPosition;
    HashtableOfObject knownPkgs = new HashtableOfObject(10);
    HashtableOfObject knownTypes = new HashtableOfObject(10);
    static final BaseTypeBinding[] BASE_TYPES = new BaseTypeBinding[]{TypeBinding.BOOLEAN, TypeBinding.BYTE, TypeBinding.CHAR, TypeBinding.DOUBLE, TypeBinding.FLOAT, TypeBinding.INT, TypeBinding.LONG, TypeBinding.SHORT, TypeBinding.VOID};
    static final int BASE_TYPES_LENGTH = BASE_TYPES.length;
    static final char[][] BASE_TYPE_NAMES = new char[BASE_TYPES_LENGTH][];
    static final int BASE_TYPES_WITHOUT_VOID_LENGTH = BASE_TYPES.length - 1;
    static final char[][] BASE_TYPE_NAMES_WITHOUT_VOID = new char[BASE_TYPES_WITHOUT_VOID_LENGTH][];
    static final char[] classField;
    static final char[] lengthField;
    static final char[] cloneMethod;
    static final char[] THIS;
    static final char[] THROWS;
    static InvocationSite FakeInvocationSite;
    private int foundTypesCount;
    private ObjectVector acceptedTypes;
    private int foundConstructorsCount;
    private ObjectVector acceptedConstructors;

    static {
        int i = 0;
        while (i < BASE_TYPES_LENGTH) {
            CompletionEngine.BASE_TYPE_NAMES[i] = CompletionEngine.BASE_TYPES[i].simpleName;
            ++i;
        }
        i = 0;
        while (i < BASE_TYPES_WITHOUT_VOID_LENGTH) {
            CompletionEngine.BASE_TYPE_NAMES_WITHOUT_VOID[i] = CompletionEngine.BASE_TYPES[i].simpleName;
            ++i;
        }
        classField = "class".toCharArray();
        lengthField = "length".toCharArray();
        cloneMethod = "clone".toCharArray();
        THIS = "this".toCharArray();
        THROWS = "throws".toCharArray();
        FakeInvocationSite = new InvocationSite(){

            public TypeBinding[] genericTypeArguments() {
                return null;
            }

            public boolean isSuperAccess() {
                return false;
            }

            public boolean isTypeAccess() {
                return false;
            }

            public void setActualReceiverType(ReferenceBinding receiverType) {
            }

            public void setDepth(int depth) {
            }

            public void setFieldIndex(int depth) {
            }

            public int sourceEnd() {
                return 0;
            }

            public int sourceStart() {
                return 0;
            }

            public TypeBinding expectedType() {
                return null;
            }
        };
    }

    public static char[] createBindingKey(char[] packageName, char[] typeName) {
        char[] signature = CompletionEngine.createTypeSignature(packageName, typeName);
        CharOperation.replace(signature, '.', '/');
        return signature;
    }

    public static char[][] createDefaultParameterNames(int length) {
        Object parameters;
        switch (length) {
            case 0: {
                parameters = new char[length][];
                break;
            }
            case 1: {
                parameters = ARGS1;
                break;
            }
            case 2: {
                parameters = ARGS2;
                break;
            }
            case 3: {
                parameters = ARGS3;
                break;
            }
            case 4: {
                parameters = ARGS4;
                break;
            }
            default: {
                parameters = new char[length][];
                int i = 0;
                while (i < length) {
                    parameters[i] = CharOperation.concat(ARG, String.valueOf(i).toCharArray());
                    ++i;
                }
                break block0;
            }
        }
        return parameters;
    }

    public static char[] createMethodSignature(char[][] parameterPackageNames, char[][] parameterTypeNames, char[] returnTypeSignature) {
        char[][] parameterTypeSignature = new char[parameterTypeNames.length][];
        int i = 0;
        while (i < parameterTypeSignature.length) {
            parameterTypeSignature[i] = Signature.createCharArrayTypeSignature(CharOperation.concat(parameterPackageNames[i], CharOperation.replaceOnCopy(parameterTypeNames[i], '.', '$'), '.'), true);
            ++i;
        }
        return Signature.createMethodSignature(parameterTypeSignature, returnTypeSignature);
    }

    public static char[] createMethodSignature(char[][] parameterPackageNames, char[][] parameterTypeNames, char[] returnPackagename, char[] returnTypeName) {
        char[] returnTypeSignature = returnTypeName == null || returnTypeName.length == 0 ? Signature.createCharArrayTypeSignature(VOID, true) : Signature.createCharArrayTypeSignature(CharOperation.concat(returnPackagename, CharOperation.replaceOnCopy(returnTypeName, '.', '$'), '.'), true);
        return CompletionEngine.createMethodSignature(parameterPackageNames, parameterTypeNames, returnTypeSignature);
    }

    public static char[] createNonGenericTypeSignature(char[] qualifiedPackageName, char[] qualifiedTypeName) {
        return Signature.createCharArrayTypeSignature(CharOperation.concat(qualifiedPackageName, CharOperation.replaceOnCopy(qualifiedTypeName, '.', '$'), '.'), true);
    }

    public static char[] createTypeSignature(char[] qualifiedPackageName, char[] qualifiedTypeName) {
        char[] name = new char[qualifiedTypeName.length];
        System.arraycopy(qualifiedTypeName, 0, name, 0, qualifiedTypeName.length);
        int depth = 0;
        int length = name.length;
        int i = length - 1;
        while (i >= 0) {
            switch (name[i]) {
                case '.': {
                    if (depth != 0 || name[i - 1] == '>') break;
                    name[i] = 36;
                    break;
                }
                case '<': {
                    --depth;
                    break;
                }
                case '>': {
                    ++depth;
                }
            }
            --i;
        }
        return Signature.createCharArrayTypeSignature(CharOperation.concat(qualifiedPackageName, name, '.'), true);
    }

    private static char[] getRequiredTypeSignature(TypeBinding typeBinding) {
        char[] result = null;
        StringBuffer sig = new StringBuffer(10);
        sig.append(typeBinding.signature());
        int sigLength = sig.length();
        result = new char[sigLength];
        sig.getChars(0, sigLength, result, 0);
        result = CharOperation.replaceOnCopy(result, '/', '.');
        return result;
    }

    private static char[] getTypeName(TypeReference typeReference) {
        char[] typeName = CharOperation.concatWith(typeReference.getTypeName(), '.');
        int dims = typeReference.dimensions();
        if (dims > 0) {
            int length = typeName.length;
            int newLength = length + dims * 2;
            char[] cArray = typeName;
            typeName = new char[newLength];
            System.arraycopy(cArray, 0, typeName, 0, length);
            int k = length;
            while (k < newLength) {
                typeName[k] = 91;
                typeName[k + 1] = 93;
                k += 2;
            }
        }
        return typeName;
    }

    private static boolean hasStaticMemberTypes(ReferenceBinding typeBinding, SourceTypeBinding invocationType, CompilationUnitScope unitScope) {
        ReferenceBinding[] memberTypes = typeBinding.memberTypes();
        int length = memberTypes == null ? 0 : memberTypes.length;
        int i = 0;
        while (i < length) {
            ReferenceBinding memberType = memberTypes[i];
            if ((invocationType == null || memberType.canBeSeenBy(typeBinding, invocationType)) && (invocationType != null || memberType.canBeSeenBy(unitScope.fPackage)) && (memberType.modifiers & 8) != 0) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private static boolean hasMemberTypesInEnclosingScope(SourceTypeBinding typeBinding, Scope scope) {
        MethodScope methodScope;
        int length;
        ReferenceBinding[] memberTypes = typeBinding.memberTypes();
        int n = length = memberTypes == null ? 0 : memberTypes.length;
        if (length > 0 && (methodScope = scope.methodScope()) != null && !methodScope.isStatic) {
            ClassScope classScope = typeBinding.scope;
            Scope currentScope = scope;
            while (currentScope != null) {
                if (currentScope == classScope) {
                    return true;
                }
                currentScope = currentScope.parent;
            }
        }
        return false;
    }

    public CompletionEngine(SearchableEnvironment nameEnvironment, CompletionRequestor requestor, Map settings, IJavaProject javaProject, WorkingCopyOwner owner, IProgressMonitor monitor) {
        super(settings);
        this.javaProject = javaProject;
        this.requestor = requestor;
        this.nameEnvironment = nameEnvironment;
        this.typeCache = new HashtableOfObject(5);
        this.openedBinaryTypes = 0;
        this.problemFactory = new CompletionProblemFactory(Locale.getDefault());
        this.problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.compilerOptions, this.problemFactory);
        this.lookupEnvironment = new LookupEnvironment(this, this.compilerOptions, this.problemReporter, nameEnvironment);
        this.parser = new CompletionParser(this.problemReporter, this.requestor.isExtendedContextRequired());
        this.owner = owner;
        this.monitor = monitor;
    }

    public void accept(ICompilationUnit sourceUnit, AccessRestriction accessRestriction) {
        if (!CharOperation.equals(sourceUnit.getMainTypeName(), TypeConstants.PACKAGE_INFO_NAME)) {
            super.accept(sourceUnit, accessRestriction);
        }
    }

    public void acceptConstructor(int modifiers, char[] simpleTypeName, int parameterCount, char[] signature, char[][] parameterTypes, char[][] parameterNames, int typeModifiers, char[] packageName, int extraFlags, String path, AccessRestriction accessRestriction) {
        if (this.foundConstructorsCount % 50 == 0) {
            this.checkCancel();
        }
        ++this.foundConstructorsCount;
        if ((typeModifiers & 0x4000) != 0) {
            return;
        }
        if (this.options.checkDeprecation && (typeModifiers & 0x100000) != 0) {
            return;
        }
        if (this.options.checkVisibility && (typeModifiers & 1) == 0) {
            if ((typeModifiers & 2) != 0) {
                return;
            }
            if (this.currentPackageName == null) {
                this.initializePackageCache();
            }
            if (!CharOperation.equals(packageName, this.currentPackageName)) {
                return;
            }
        }
        int accessibility = 0;
        if (accessRestriction != null) {
            switch (accessRestriction.getProblemId()) {
                case 0x1000133: {
                    if (this.options.checkForbiddenReference) {
                        return;
                    }
                    accessibility = 1;
                    break;
                }
                case 0x1000118: {
                    if (this.options.checkDiscouragedReference) {
                        return;
                    }
                    accessibility = 2;
                }
            }
        }
        if (this.acceptedConstructors == null) {
            this.acceptedConstructors = new ObjectVector();
        }
        this.acceptedConstructors.add(new AcceptedConstructor(modifiers, simpleTypeName, parameterCount, signature, parameterTypes, parameterNames, typeModifiers, packageName, extraFlags, accessibility));
    }

    private void acceptConstructors(Scope scope) {
        this.checkCancel();
        if (this.acceptedConstructors == null) {
            return;
        }
        int length = this.acceptedConstructors.size();
        if (length == 0) {
            return;
        }
        HashtableOfObject onDemandFound = new HashtableOfObject();
        Object deferredProposals = null;
        try {
            int i = 0;
            while (i < length) {
                block45: {
                    boolean proposeConstructor;
                    char[] fullyQualifiedName;
                    boolean proposeType;
                    int accessibility;
                    int extraFlags;
                    char[][] parameterNames;
                    char[][] parameterTypes;
                    char[] signature;
                    int parameterCount;
                    int modifiers;
                    char[] simpleTypeName;
                    char[] packageName;
                    int typeModifiers;
                    AcceptedConstructor acceptedConstructor;
                    block50: {
                        block51: {
                            block49: {
                                block48: {
                                    if (i % 50 == 0) {
                                        this.checkCancel();
                                    }
                                    acceptedConstructor = (AcceptedConstructor)this.acceptedConstructors.elementAt(i);
                                    typeModifiers = acceptedConstructor.typeModifiers;
                                    packageName = acceptedConstructor.packageName;
                                    simpleTypeName = acceptedConstructor.simpleTypeName;
                                    modifiers = acceptedConstructor.modifiers;
                                    parameterCount = acceptedConstructor.parameterCount;
                                    signature = acceptedConstructor.signature;
                                    parameterTypes = acceptedConstructor.parameterTypes;
                                    parameterNames = acceptedConstructor.parameterNames;
                                    extraFlags = acceptedConstructor.extraFlags;
                                    accessibility = acceptedConstructor.accessibility;
                                    proposeType = this.hasArrayTypeAsExpectedSuperTypes() || (extraFlags & 1) != 0;
                                    fullyQualifiedName = CharOperation.concat(packageName, simpleTypeName, '.');
                                    Object knownTypeKind = this.knownTypes.get(fullyQualifiedName);
                                    if (knownTypeKind == null) break block48;
                                    if (knownTypeKind == KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS) break block45;
                                    proposeType = false;
                                    break block49;
                                }
                                this.knownTypes.put(fullyQualifiedName, KNOWN_TYPE_WITH_UNKNOWN_CONSTRUCTORS);
                            }
                            proposeConstructor = true;
                            if (!this.options.checkVisibility || (modifiers & 1) != 0) break block50;
                            if ((modifiers & 2) == 0) break block51;
                            if (!proposeType) break block45;
                            proposeConstructor = false;
                            break block50;
                        }
                        if (this.currentPackageName == null) {
                            this.initializePackageCache();
                        }
                        if (CharOperation.equals(packageName, this.currentPackageName) || (typeModifiers & 0x400) != 0 && (modifiers & 4) != 0) break block50;
                        if (!proposeType) break block45;
                        proposeConstructor = false;
                    }
                    acceptedConstructor.fullyQualifiedName = fullyQualifiedName;
                    acceptedConstructor.proposeType = proposeType;
                    acceptedConstructor.proposeConstructor = proposeConstructor;
                    if (!this.importCachesInitialized) {
                        this.initializeImportCaches();
                    }
                    int j = 0;
                    while (j < this.importCacheCount) {
                        char[][] importName = this.importsCache[j];
                        if (CharOperation.equals(simpleTypeName, importName[0])) {
                            if (proposeType) {
                                this.proposeType(packageName, simpleTypeName, typeModifiers, accessibility, simpleTypeName, fullyQualifiedName, !CharOperation.equals(fullyQualifiedName, importName[1]), scope);
                            }
                            if (proposeConstructor && !Flags.isEnum(typeModifiers)) {
                                boolean isQualified;
                                boolean bl = isQualified = !CharOperation.equals(fullyQualifiedName, importName[1]);
                                if (!isQualified) {
                                    this.proposeConstructor(simpleTypeName, parameterCount, signature, parameterTypes, parameterNames, modifiers, packageName, typeModifiers, accessibility, simpleTypeName, fullyQualifiedName, isQualified, scope, extraFlags);
                                } else {
                                    acceptedConstructor.mustBeQualified = true;
                                    this.proposeConstructor(acceptedConstructor, scope);
                                }
                            }
                            break block45;
                        }
                        ++j;
                    }
                    if (CharOperation.equals(this.currentPackageName, packageName)) {
                        if (proposeType) {
                            this.proposeType(packageName, simpleTypeName, typeModifiers, accessibility, simpleTypeName, fullyQualifiedName, false, scope);
                        }
                        if (proposeConstructor && !Flags.isEnum(typeModifiers)) {
                            this.proposeConstructor(simpleTypeName, parameterCount, signature, parameterTypes, parameterNames, modifiers, packageName, typeModifiers, accessibility, simpleTypeName, fullyQualifiedName, false, scope, extraFlags);
                        }
                    } else {
                        char[] importFlatName;
                        char[][] importName;
                        ImportBinding importBinding;
                        int j2;
                        char[] fullyQualifiedEnclosingTypeOrPackageName = null;
                        AcceptedConstructor foundConstructor = null;
                        foundConstructor = (AcceptedConstructor)onDemandFound.get(simpleTypeName);
                        if (foundConstructor == null) {
                            j2 = 0;
                            while (j2 < this.onDemandImportCacheCount) {
                                importBinding = this.onDemandImportsCache[j2];
                                importName = importBinding.compoundName;
                                importFlatName = CharOperation.concatWith(importName, '.');
                                if (fullyQualifiedEnclosingTypeOrPackageName == null) {
                                    fullyQualifiedEnclosingTypeOrPackageName = packageName;
                                }
                                if (CharOperation.equals(fullyQualifiedEnclosingTypeOrPackageName, importFlatName)) {
                                    if (importBinding.isStatic()) {
                                        if ((typeModifiers & 8) != 0) {
                                            onDemandFound.put(simpleTypeName, acceptedConstructor);
                                            break block45;
                                        }
                                    } else {
                                        onDemandFound.put(simpleTypeName, acceptedConstructor);
                                        break block45;
                                    }
                                }
                                ++j2;
                            }
                        } else if (!foundConstructor.mustBeQualified) {
                            j2 = 0;
                            while (j2 < this.onDemandImportCacheCount) {
                                importBinding = this.onDemandImportsCache[j2];
                                importName = importBinding.compoundName;
                                importFlatName = CharOperation.concatWith(importName, '.');
                                if (fullyQualifiedEnclosingTypeOrPackageName == null) {
                                    fullyQualifiedEnclosingTypeOrPackageName = packageName;
                                }
                                if (CharOperation.equals(fullyQualifiedEnclosingTypeOrPackageName, importFlatName)) {
                                    if (importBinding.isStatic()) {
                                        if ((typeModifiers & 8) != 0) {
                                            foundConstructor.mustBeQualified = true;
                                            break;
                                        }
                                    } else {
                                        foundConstructor.mustBeQualified = true;
                                        break;
                                    }
                                }
                                ++j2;
                            }
                        }
                        if (proposeType) {
                            this.proposeType(packageName, simpleTypeName, typeModifiers, accessibility, simpleTypeName, fullyQualifiedName, true, scope);
                        }
                        if (proposeConstructor && !Flags.isEnum(typeModifiers)) {
                            acceptedConstructor.mustBeQualified = true;
                            this.proposeConstructor(acceptedConstructor, scope);
                        }
                    }
                }
                ++i;
            }
            char[][] keys = onDemandFound.keyTable;
            Object[] values = onDemandFound.valueTable;
            int max = keys.length;
            int i2 = 0;
            while (i2 < max) {
                AcceptedConstructor value;
                if (i2 % 50 == 0) {
                    this.checkCancel();
                }
                if (keys[i2] != null && (value = (AcceptedConstructor)values[i2]) != null) {
                    if (value.proposeType) {
                        this.proposeType(value.packageName, value.simpleTypeName, value.typeModifiers, value.accessibility, value.simpleTypeName, value.fullyQualifiedName, value.mustBeQualified, scope);
                    }
                    if (value.proposeConstructor && !Flags.isEnum(value.modifiers)) {
                        if (!value.mustBeQualified) {
                            this.proposeConstructor(value.simpleTypeName, value.parameterCount, value.signature, value.parameterTypes, value.parameterNames, value.modifiers, value.packageName, value.typeModifiers, value.accessibility, value.simpleTypeName, value.fullyQualifiedName, value.mustBeQualified, scope, value.extraFlags);
                        } else {
                            this.proposeConstructor(value, scope);
                        }
                    }
                }
                ++i2;
            }
        }
        finally {
            this.acceptedTypes = null;
        }
    }

    public void acceptPackage(char[] packageName) {
        if (this.knownPkgs.containsKey(packageName)) {
            return;
        }
        this.knownPkgs.put(packageName, this);
        char[] completion = this.resolvingImports ? (this.resolvingStaticImports ? CharOperation.concat(packageName, new char[]{'.'}) : CharOperation.concat(packageName, new char[]{'.', '*', ';'})) : packageName;
        int relevance = this.computeBaseRelevance();
        relevance += this.computeRelevanceForResolution();
        relevance += this.computeRelevanceForInterestingProposal();
        relevance += this.computeRelevanceForCaseMatching(this.qualifiedCompletionToken == null ? this.completionToken : this.qualifiedCompletionToken, packageName);
        if (!this.resolvingImports) {
            relevance += this.computeRelevanceForQualification(true);
        }
        relevance += this.computeRelevanceForRestrictions(0);
        this.noProposal = false;
        if (!this.requestor.isIgnored(8)) {
            InternalCompletionProposal proposal = this.createProposal(8, this.actualCompletionPosition);
            proposal.setDeclarationSignature(packageName);
            proposal.setPackageName(packageName);
            proposal.setCompletion(completion);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            this.requestor.accept(proposal);
            if (DEBUG) {
                this.printDebug(proposal);
            }
        }
    }

    public void acceptType(char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, int modifiers, AccessRestriction accessRestriction) {
        if (this.foundTypesCount % 50 == 0) {
            this.checkCancel();
        }
        ++this.foundTypesCount;
        if (this.options.checkDeprecation && (modifiers & 0x100000) != 0) {
            return;
        }
        if (this.assistNodeIsExtendedType && (modifiers & 0x10) != 0) {
            return;
        }
        if (this.options.checkVisibility && (modifiers & 1) == 0) {
            if ((modifiers & 2) != 0) {
                return;
            }
            char[] currentPackage = CharOperation.concatWith(this.unitScope.fPackage.compoundName, '.');
            if (!CharOperation.equals(packageName, currentPackage)) {
                return;
            }
        }
        int accessibility = 0;
        if (accessRestriction != null) {
            switch (accessRestriction.getProblemId()) {
                case 0x1000133: {
                    if (this.options.checkForbiddenReference) {
                        return;
                    }
                    accessibility = 1;
                    break;
                }
                case 0x1000118: {
                    if (this.options.checkDiscouragedReference) {
                        return;
                    }
                    accessibility = 2;
                }
            }
        }
        if (this.isForbiddenType(packageName, simpleTypeName, enclosingTypeNames)) {
            return;
        }
        if (this.acceptedTypes == null) {
            this.acceptedTypes = new ObjectVector();
        }
        this.acceptedTypes.add(new AcceptedType(packageName, simpleTypeName, enclosingTypeNames, modifiers, accessibility));
    }

    private void acceptTypes(Scope scope) {
        this.checkCancel();
        if (this.acceptedTypes == null) {
            return;
        }
        int length = this.acceptedTypes.size();
        if (length == 0) {
            return;
        }
        HashtableOfObject onDemandFound = new HashtableOfObject();
        try {
            int i = 0;
            while (i < length) {
                block33: {
                    char[] fullyQualifiedName;
                    char[] typeName;
                    char[] flatEnclosingTypeNames;
                    int accessibility;
                    int modifiers;
                    char[][] enclosingTypeNames;
                    char[] simpleTypeName;
                    char[] packageName;
                    AcceptedType acceptedType;
                    block36: {
                        char[] completionName;
                        block39: {
                            block37: {
                                block38: {
                                    if (i % 50 == 0) {
                                        this.checkCancel();
                                    }
                                    acceptedType = (AcceptedType)this.acceptedTypes.elementAt(i);
                                    packageName = acceptedType.packageName;
                                    simpleTypeName = acceptedType.simpleTypeName;
                                    enclosingTypeNames = acceptedType.enclosingTypeNames;
                                    modifiers = acceptedType.modifiers;
                                    accessibility = acceptedType.accessibility;
                                    if (enclosingTypeNames == null || enclosingTypeNames.length == 0) {
                                        flatEnclosingTypeNames = null;
                                        typeName = simpleTypeName;
                                    } else {
                                        flatEnclosingTypeNames = CharOperation.concatWith(acceptedType.enclosingTypeNames, '.');
                                        typeName = CharOperation.concat(flatEnclosingTypeNames, simpleTypeName, '.');
                                    }
                                    fullyQualifiedName = CharOperation.concat(packageName, typeName, '.');
                                    if (this.knownTypes.containsKey(fullyQualifiedName)) break block33;
                                    this.knownTypes.put(fullyQualifiedName, KNOWN_TYPE_WITH_UNKNOWN_CONSTRUCTORS);
                                    if (!this.resolvingImports) break block36;
                                    if (this.compilerOptions.complianceLevel >= 0x300000L && packageName.length == 0) break block33;
                                    char[] cArray = completionName = this.insideQualifiedReference ? simpleTypeName : fullyQualifiedName;
                                    if (!this.resolvingStaticImports) break block37;
                                    if (enclosingTypeNames != null && enclosingTypeNames.length != 0) break block38;
                                    completionName = CharOperation.concat(completionName, new char[]{'.'});
                                    break block39;
                                }
                                if ((modifiers & 8) == 0) break block33;
                                completionName = CharOperation.concat(completionName, new char[]{';'});
                                break block39;
                            }
                            completionName = CharOperation.concat(completionName, new char[]{';'});
                        }
                        int relevance = this.computeBaseRelevance();
                        relevance += this.computeRelevanceForResolution();
                        relevance += this.computeRelevanceForInterestingProposal(packageName, fullyQualifiedName);
                        relevance += this.computeRelevanceForRestrictions(accessibility);
                        relevance += this.computeRelevanceForCaseMatching(this.completionToken, simpleTypeName);
                        this.noProposal = false;
                        if (!this.requestor.isIgnored(9)) {
                            this.createTypeProposal(packageName, typeName, modifiers, accessibility, completionName, relevance);
                        }
                        break block33;
                    }
                    if (!this.importCachesInitialized) {
                        this.initializeImportCaches();
                    }
                    int j = 0;
                    while (j < this.importCacheCount) {
                        char[][] importName = this.importsCache[j];
                        if (CharOperation.equals(typeName, importName[0])) {
                            this.proposeType(packageName, simpleTypeName, modifiers, accessibility, typeName, fullyQualifiedName, !CharOperation.equals(fullyQualifiedName, importName[1]), scope);
                            break block33;
                        }
                        ++j;
                    }
                    if ((enclosingTypeNames == null || enclosingTypeNames.length == 0) && CharOperation.equals(this.currentPackageName, packageName)) {
                        this.proposeType(packageName, simpleTypeName, modifiers, accessibility, typeName, fullyQualifiedName, false, scope);
                    } else {
                        char[] importFlatName;
                        char[][] importName;
                        ImportBinding importBinding;
                        int j2;
                        char[] fullyQualifiedEnclosingTypeOrPackageName = null;
                        AcceptedType foundType = null;
                        foundType = (AcceptedType)onDemandFound.get(simpleTypeName);
                        if (foundType == null) {
                            j2 = 0;
                            while (j2 < this.onDemandImportCacheCount) {
                                importBinding = this.onDemandImportsCache[j2];
                                importName = importBinding.compoundName;
                                importFlatName = CharOperation.concatWith(importName, '.');
                                if (fullyQualifiedEnclosingTypeOrPackageName == null) {
                                    fullyQualifiedEnclosingTypeOrPackageName = enclosingTypeNames != null && enclosingTypeNames.length != 0 ? CharOperation.concat(packageName, flatEnclosingTypeNames, '.') : packageName;
                                }
                                if (CharOperation.equals(fullyQualifiedEnclosingTypeOrPackageName, importFlatName)) {
                                    if (importBinding.isStatic()) {
                                        if ((modifiers & 8) != 0) {
                                            acceptedType.qualifiedTypeName = typeName;
                                            acceptedType.fullyQualifiedName = fullyQualifiedName;
                                            onDemandFound.put(simpleTypeName, acceptedType);
                                            break block33;
                                        }
                                    } else {
                                        acceptedType.qualifiedTypeName = typeName;
                                        acceptedType.fullyQualifiedName = fullyQualifiedName;
                                        onDemandFound.put(simpleTypeName, acceptedType);
                                        break block33;
                                    }
                                }
                                ++j2;
                            }
                        } else if (!foundType.mustBeQualified) {
                            j2 = 0;
                            while (j2 < this.onDemandImportCacheCount) {
                                importBinding = this.onDemandImportsCache[j2];
                                importName = importBinding.compoundName;
                                importFlatName = CharOperation.concatWith(importName, '.');
                                if (fullyQualifiedEnclosingTypeOrPackageName == null) {
                                    fullyQualifiedEnclosingTypeOrPackageName = enclosingTypeNames != null && enclosingTypeNames.length != 0 ? CharOperation.concat(packageName, flatEnclosingTypeNames, '.') : packageName;
                                }
                                if (CharOperation.equals(fullyQualifiedEnclosingTypeOrPackageName, importFlatName)) {
                                    if (importBinding.isStatic()) {
                                        if ((modifiers & 8) != 0) {
                                            foundType.mustBeQualified = true;
                                            break;
                                        }
                                    } else {
                                        foundType.mustBeQualified = true;
                                        break;
                                    }
                                }
                                ++j2;
                            }
                        }
                        this.proposeType(packageName, simpleTypeName, modifiers, accessibility, typeName, fullyQualifiedName, true, scope);
                    }
                }
                ++i;
            }
            char[][] keys = onDemandFound.keyTable;
            Object[] values = onDemandFound.valueTable;
            int max = keys.length;
            int i2 = 0;
            while (i2 < max) {
                AcceptedType value;
                if (i2 % 50 == 0) {
                    this.checkCancel();
                }
                if (keys[i2] != null && (value = (AcceptedType)values[i2]) != null) {
                    this.proposeType(value.packageName, value.simpleTypeName, value.modifiers, value.accessibility, value.qualifiedTypeName, value.fullyQualifiedName, value.mustBeQualified, scope);
                }
                ++i2;
            }
        }
        finally {
            this.acceptedTypes = null;
        }
    }

    public void acceptUnresolvedName(char[] name) {
        int relevance = this.computeBaseRelevance();
        relevance += this.computeRelevanceForResolution(false);
        relevance += this.computeRelevanceForInterestingProposal();
        relevance += this.computeRelevanceForCaseMatching(this.completionToken, name);
        relevance += this.computeRelevanceForQualification(false);
        relevance += this.computeRelevanceForRestrictions(0);
        this.noProposal = false;
        if (!this.requestor.isIgnored(5)) {
            InternalCompletionProposal proposal = this.createProposal(5, this.actualCompletionPosition);
            proposal.setSignature(JAVA_LANG_OBJECT_SIGNATURE);
            proposal.setPackageName(JAVA_LANG_NAME);
            proposal.setTypeName(OBJECT);
            proposal.setName(name);
            proposal.setCompletion(name);
            proposal.setFlags(0);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            this.requestor.accept(proposal);
            if (DEBUG) {
                this.printDebug(proposal);
            }
        }
    }

    private void addExpectedType(TypeBinding type, Scope scope) {
        if (type == null || !type.isValidBinding() || type == TypeBinding.NULL) {
            return;
        }
        int i = 0;
        while (i <= this.expectedTypesPtr) {
            if (this.expectedTypes[i] == type) {
                return;
            }
            ++i;
        }
        int length = this.expectedTypes.length;
        if (++this.expectedTypesPtr >= length) {
            this.expectedTypes = new TypeBinding[length * 2];
            System.arraycopy(this.expectedTypes, 0, this.expectedTypes, 0, length);
        }
        this.expectedTypes[this.expectedTypesPtr] = type;
        if (type == scope.getJavaLangObject()) {
            this.hasJavaLangObjectAsExpectedType = true;
        }
    }

    private void addForbiddenBindings(Binding binding) {
        if (binding == null) {
            return;
        }
        int length = this.forbbidenBindings.length;
        if (++this.forbbidenBindingsPtr >= length) {
            this.forbbidenBindings = new Binding[length * 2];
            System.arraycopy(this.forbbidenBindings, 0, this.forbbidenBindings, 0, length);
        }
        this.forbbidenBindings[this.forbbidenBindingsPtr] = binding;
    }

    private void addUninterestingBindings(Binding binding) {
        if (binding == null) {
            return;
        }
        int length = this.uninterestingBindings.length;
        if (++this.uninterestingBindingsPtr >= length) {
            this.uninterestingBindings = new Binding[length * 2];
            System.arraycopy(this.uninterestingBindings, 0, this.uninterestingBindings, 0, length);
        }
        this.uninterestingBindings[this.uninterestingBindingsPtr] = binding;
    }

    private final boolean areParametersCompatibleWith(TypeBinding[] parameters, TypeBinding[] arguments, boolean isVarargs) {
        int argLength;
        int paramLength = parameters.length;
        int lastIndex = argLength = arguments.length;
        if (isVarargs) {
            TypeBinding varArgType;
            lastIndex = paramLength - 1;
            if (paramLength == argLength) {
                varArgType = parameters[lastIndex];
                TypeBinding lastArgument = arguments[lastIndex];
                if (varArgType != lastArgument && !lastArgument.isCompatibleWith(varArgType)) {
                    return false;
                }
            } else if (paramLength < argLength) {
                varArgType = ((ArrayBinding)parameters[lastIndex]).elementsType();
                int i = lastIndex;
                while (i < argLength) {
                    if (varArgType != arguments[i] && !arguments[i].isCompatibleWith(varArgType)) {
                        return false;
                    }
                    ++i;
                }
            } else if (lastIndex != argLength) {
                return false;
            }
        } else if (paramLength != argLength) {
            return false;
        }
        int i = 0;
        while (i < lastIndex) {
            if (parameters[i] != arguments[i] && !arguments[i].isCompatibleWith(parameters[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private void buildContext(ASTNode astNode, ASTNode astNodeParent, CompilationUnitDeclaration compilationUnitDeclaration, Binding qualifiedBinding, Scope scope) {
        InternalCompletionContext context = new InternalCompletionContext();
        if (this.requestor.isExtendedContextRequired()) {
            context.setExtendedData(this.typeRoot, compilationUnitDeclaration, this.lookupEnvironment, scope, astNode, this.owner, this.parser);
        }
        if (this.expectedTypesPtr > -1) {
            int length = this.expectedTypesPtr + 1;
            char[][] expTypes = new char[length][];
            char[][] expKeys = new char[length][];
            int i = 0;
            while (i < length) {
                expTypes[i] = CompletionEngine.getSignature(this.expectedTypes[i]);
                expKeys[i] = this.expectedTypes[i].computeUniqueKey();
                ++i;
            }
            context.setExpectedTypesSignatures(expTypes);
            context.setExpectedTypesKeys(expKeys);
        }
        context.setOffset(this.actualCompletionPosition + 1 - this.offset);
        if (astNode instanceof CompletionOnJavadoc) {
            this.assistNodeInJavadoc = ((CompletionOnJavadoc)((Object)astNode)).getCompletionFlags();
            context.setJavadoc(this.assistNodeInJavadoc);
        }
        if (!(astNode instanceof CompletionOnJavadoc)) {
            CompletionScanner scanner = (CompletionScanner)this.parser.scanner;
            context.setToken(scanner.completionIdentifier);
            context.setTokenRange(scanner.completedIdentifierStart - this.offset, scanner.completedIdentifierEnd - this.offset, scanner.endOfEmptyToken - this.offset);
        } else if (astNode instanceof CompletionOnJavadocTag) {
            CompletionOnJavadocTag javadocTag = (CompletionOnJavadocTag)astNode;
            context.setToken(CharOperation.concat(new char[]{'@'}, javadocTag.token));
            context.setTokenRange(javadocTag.tagSourceStart - this.offset, javadocTag.tagSourceEnd - this.offset, ((CompletionScanner)this.parser.javadocParser.scanner).endOfEmptyToken - this.offset);
        } else {
            CompletionScanner scanner = (CompletionScanner)this.parser.javadocParser.scanner;
            context.setToken(scanner.completionIdentifier);
            context.setTokenRange(scanner.completedIdentifierStart - this.offset, scanner.completedIdentifierEnd - this.offset, scanner.endOfEmptyToken - this.offset);
        }
        if (astNode instanceof CompletionOnStringLiteral) {
            context.setTokenKind(2);
        } else {
            context.setTokenKind(1);
        }
        this.buildTokenLocationContext(context, scope, astNode, astNodeParent);
        if (DEBUG) {
            System.out.println(context.toString());
        }
        this.requestor.acceptContext(context);
    }

    private void buildTokenLocationContext(InternalCompletionContext context, Scope scope, ASTNode astNode, ASTNode astNodeParent) {
        if (scope == null || context.isInJavadoc()) {
            return;
        }
        if (astNode instanceof CompletionOnFieldType) {
            CompletionOnFieldType field = (CompletionOnFieldType)astNode;
            if (!(field.isLocalVariable || field.modifiers != 0 || field.annotations != null && field.annotations.length != 0)) {
                context.setTokenLocation(1);
            }
        } else if (astNode instanceof CompletionOnMethodReturnType) {
            CompletionOnMethodReturnType method = (CompletionOnMethodReturnType)astNode;
            if (method.modifiers == 0 && (method.annotations == null || method.annotations.length == 0)) {
                context.setTokenLocation(1);
            }
        } else {
            ReferenceContext referenceContext = scope.referenceContext();
            if (referenceContext instanceof AbstractMethodDeclaration) {
                AbstractMethodDeclaration methodDeclaration = (AbstractMethodDeclaration)referenceContext;
                if (methodDeclaration.bodyStart <= astNode.sourceStart && astNode.sourceEnd <= methodDeclaration.bodyEnd && astNodeParent == null && astNode instanceof CompletionOnSingleNameReference && !((CompletionOnSingleNameReference)astNode).isPrecededByModifiers) {
                    context.setTokenLocation(2);
                }
            } else if (referenceContext instanceof TypeDeclaration) {
                TypeDeclaration typeDeclaration = (TypeDeclaration)referenceContext;
                FieldDeclaration[] fields = typeDeclaration.fields;
                if (fields != null) {
                    int i = 0;
                    while (i < fields.length) {
                        if (fields[i] instanceof Initializer) {
                            Initializer initializer = (Initializer)fields[i];
                            if (initializer.block.sourceStart <= astNode.sourceStart && astNode.sourceStart < initializer.bodyEnd) {
                                if (astNodeParent != null || !(astNode instanceof CompletionOnSingleNameReference) || ((CompletionOnSingleNameReference)astNode).isPrecededByModifiers) break;
                                context.setTokenLocation(2);
                                break;
                            }
                        }
                        ++i;
                    }
                }
            }
        }
    }

    void checkCancel() {
        if (this.monitor != null && this.monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    private boolean complete(ASTNode astNode, ASTNode astNodeParent, ASTNode enclosingNode, CompilationUnitDeclaration compilationUnitDeclaration, Binding qualifiedBinding, Scope scope, boolean insideTypeAnnotation) {
        this.setSourceAndTokenRange(astNode.sourceStart, astNode.sourceEnd);
        scope = this.computeForbiddenBindings(astNode, astNodeParent, scope);
        this.computeUninterestingBindings(astNode, astNodeParent, scope);
        if (astNodeParent != null) {
            if (!this.isValidParent(astNodeParent, astNode, scope)) {
                return false;
            }
            this.computeExpectedTypes(astNodeParent, astNode, scope);
        }
        this.buildContext(astNode, astNodeParent, compilationUnitDeclaration, qualifiedBinding, scope);
        if (astNode instanceof CompletionOnFieldType) {
            this.completionOnFieldType(astNode, scope);
        } else if (astNode instanceof CompletionOnMethodReturnType) {
            this.completionOnMethodReturnType(astNode, scope);
        } else if (astNode instanceof CompletionOnSingleNameReference) {
            this.completionOnSingleNameReference(astNode, astNodeParent, scope, insideTypeAnnotation);
        } else if (astNode instanceof CompletionOnSingleTypeReference) {
            this.completionOnSingleTypeReference(astNode, astNodeParent, qualifiedBinding, scope);
        } else if (astNode instanceof CompletionOnQualifiedNameReference) {
            this.completionOnQualifiedNameReference(astNode, enclosingNode, qualifiedBinding, scope, insideTypeAnnotation);
        } else if (astNode instanceof CompletionOnQualifiedTypeReference) {
            this.completionOnQualifiedTypeReference(astNode, astNodeParent, qualifiedBinding, scope);
        } else if (astNode instanceof CompletionOnMemberAccess) {
            this.completionOnMemberAccess(astNode, enclosingNode, qualifiedBinding, scope, insideTypeAnnotation);
        } else if (astNode instanceof CompletionOnMessageSend) {
            this.completionOnMessageSend(astNode, qualifiedBinding, scope);
        } else if (astNode instanceof CompletionOnExplicitConstructorCall) {
            this.completionOnExplicitConstructorCall(astNode, qualifiedBinding, scope);
        } else if (astNode instanceof CompletionOnQualifiedAllocationExpression) {
            this.completionOnQualifiedAllocationExpression(astNode, qualifiedBinding, scope);
        } else if (astNode instanceof CompletionOnClassLiteralAccess) {
            this.completionOnClassLiteralAccess(astNode, qualifiedBinding, scope);
        } else if (astNode instanceof CompletionOnMethodName) {
            this.completionOnMethodName(astNode, scope);
        } else if (astNode instanceof CompletionOnFieldName) {
            this.completionOnFieldName(astNode, scope);
        } else if (astNode instanceof CompletionOnLocalName) {
            this.completionOnLocalOrArgumentName(astNode, scope);
        } else if (astNode instanceof CompletionOnArgumentName) {
            this.completionOnLocalOrArgumentName(astNode, scope);
        } else if (astNode instanceof CompletionOnKeyword) {
            this.completionOnKeyword(astNode);
        } else if (astNode instanceof CompletionOnParameterizedQualifiedTypeReference) {
            this.completionOnParameterizedQualifiedTypeReference(astNode, astNodeParent, qualifiedBinding, scope);
        } else if (astNode instanceof CompletionOnMarkerAnnotationName) {
            this.completionOnMarkerAnnotationName(astNode, qualifiedBinding, scope);
        } else if (astNode instanceof CompletionOnMemberValueName) {
            this.completionOnMemberValueName(astNode, astNodeParent, scope, insideTypeAnnotation);
        } else if (astNode instanceof CompletionOnBranchStatementLabel) {
            this.completionOnBranchStatementLabel(astNode);
        } else if (astNode instanceof CompletionOnMessageSendName) {
            this.completionOnMessageSendName(astNode, qualifiedBinding, scope);
        } else if ((astNode.bits & 0x8000) != 0) {
            if (astNode instanceof CompletionOnJavadocSingleTypeReference) {
                this.completionOnJavadocSingleTypeReference(astNode, scope);
            } else if (astNode instanceof CompletionOnJavadocQualifiedTypeReference) {
                this.completionOnJavadocQualifiedTypeReference(astNode, qualifiedBinding, scope);
            } else if (astNode instanceof CompletionOnJavadocFieldReference) {
                this.completionOnJavadocFieldReference(astNode, scope);
            } else if (astNode instanceof CompletionOnJavadocMessageSend) {
                this.completionOnJavadocMessageSend(astNode, qualifiedBinding, scope);
            } else if (astNode instanceof CompletionOnJavadocAllocationExpression) {
                this.completionOnJavadocAllocationExpression(astNode, qualifiedBinding, scope);
            } else if (astNode instanceof CompletionOnJavadocParamNameReference) {
                this.completionOnJavadocParamNameReference(astNode);
            } else if (astNode instanceof CompletionOnJavadocTypeParamReference) {
                this.completionOnJavadocTypeParamReference(astNode);
            } else if (astNode instanceof CompletionOnJavadocTag) {
                this.completionOnJavadocTag(astNode);
            }
        }
        return true;
    }

    /*
     * Exception decompiling
     */
    public void complete(ICompilationUnit sourceUnit, int completionPosition, int pos, ITypeRoot root) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [16[WHILELOOP]], but top level block is 4[TRYBLOCK]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public void complete(IType type, char[] snippet, int position, char[][] localVariableTypeNames, char[][] localVariableNames, int[] localVariableModifiers, boolean isStatic) {
        boolean contextAccepted;
        block29: {
            if (this.requestor != null) {
                this.requestor.beginReporting();
            }
            contextAccepted = false;
            IType topLevelType = type;
            while (topLevelType.getDeclaringType() != null) {
                topLevelType = topLevelType.getDeclaringType();
            }
            this.fileName = topLevelType.getParent().getElementName().toCharArray();
            CompilationResult compilationResult = new CompilationResult(this.fileName, 1, 1, this.compilerOptions.maxProblemsPerUnit);
            CompilationUnitDeclaration compilationUnit = null;
            try {
                block30: {
                    TypeDeclaration typeDeclaration = null;
                    if (type instanceof SourceType) {
                        SourceType sourceType = (SourceType)type;
                        ISourceType info = (ISourceType)sourceType.getElementInfo();
                        compilationUnit = SourceTypeConverter.buildCompilationUnit(new ISourceType[]{info}, 15, this.problemReporter, compilationResult);
                        if (compilationUnit.types != null) {
                            typeDeclaration = compilationUnit.types[0];
                        }
                    } else {
                        compilationUnit = new CompilationUnitDeclaration(this.problemReporter, compilationResult, 0);
                        typeDeclaration = new BinaryTypeConverter(this.parser.problemReporter(), compilationResult, null).buildTypeDeclaration(type, compilationUnit);
                    }
                    if (typeDeclaration == null) break block29;
                    Initializer fakeInitializer = this.parseSnippeInitializer(snippet, position, localVariableTypeNames, localVariableNames, localVariableModifiers, isStatic);
                    FieldDeclaration[] oldFields = typeDeclaration.fields;
                    FieldDeclaration[] newFields = null;
                    if (oldFields != null) {
                        newFields = new FieldDeclaration[oldFields.length + 1];
                        System.arraycopy(oldFields, 0, newFields, 0, oldFields.length);
                        newFields[oldFields.length] = fakeInitializer;
                    } else {
                        newFields = new FieldDeclaration[]{fakeInitializer};
                    }
                    typeDeclaration.fields = newFields;
                    if (DEBUG) {
                        System.out.println("SNIPPET COMPLETION AST :");
                        System.out.println(compilationUnit.toString());
                    }
                    if (compilationUnit.types != null) {
                        try {
                            this.lookupEnvironment.buildTypeBindings(compilationUnit, null);
                            this.unitScope = compilationUnit.scope;
                            if (this.unitScope != null) {
                                this.lookupEnvironment.completeTypeBindings(compilationUnit, true);
                                compilationUnit.scope.faultInTypes();
                                compilationUnit.resolve();
                            }
                        }
                        catch (CompletionNodeFound e) {
                            if (e.astNode == null) break block30;
                            contextAccepted = this.complete(e.astNode, this.parser.assistNodeParent, this.parser.enclosingNode, compilationUnit, e.qualifiedBinding, e.scope, e.insideTypeAnnotation);
                        }
                    }
                }
                if (this.noProposal && this.problem != null) {
                    if (!contextAccepted) {
                        contextAccepted = true;
                        InternalCompletionContext context = new InternalCompletionContext();
                        if (this.requestor.isExtendedContextRequired()) {
                            context.setExtended();
                        }
                        this.requestor.acceptContext(context);
                    }
                    this.requestor.completionFailure(this.problem);
                    if (DEBUG) {
                        this.printDebug(this.problem);
                    }
                }
            }
            catch (IndexOutOfBoundsException e) {
                if (DEBUG) {
                    System.out.println("Exception caught by CompletionEngine:");
                    e.printStackTrace(System.out);
                }
            }
            catch (InvalidCursorLocation e) {
                if (DEBUG) {
                    System.out.println("Exception caught by CompletionEngine:");
                    e.printStackTrace(System.out);
                }
            }
            catch (AbortCompilation e) {
                if (DEBUG) {
                    System.out.println("Exception caught by CompletionEngine:");
                    e.printStackTrace(System.out);
                }
            }
            catch (CompletionNodeFound e) {
                if (DEBUG) {
                    System.out.println("Exception caught by CompletionEngine:");
                    e.printStackTrace(System.out);
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        if (!contextAccepted) {
            contextAccepted = true;
            InternalCompletionContext context = new InternalCompletionContext();
            if (this.requestor.isExtendedContextRequired()) {
                context.setExtended();
            }
            this.requestor.acceptContext(context);
        }
        if (this.requestor != null) {
            this.requestor.endReporting();
        }
    }

    private void completionOnBranchStatementLabel(ASTNode astNode) {
        if (!this.requestor.isIgnored(4)) {
            CompletionOnBranchStatementLabel label = (CompletionOnBranchStatementLabel)astNode;
            this.completionToken = label.label;
            this.findLabels(this.completionToken, label.possibleLabels);
        }
    }

    private void completionOnClassLiteralAccess(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        if (!this.requestor.isIgnored(2)) {
            CompletionOnClassLiteralAccess access = (CompletionOnClassLiteralAccess)astNode;
            this.setSourceAndTokenRange(access.classStart, access.sourceEnd);
            this.completionToken = access.completionIdentifier;
            this.findClassField(this.completionToken, (TypeBinding)qualifiedBinding, scope, null, null, null, false);
        }
    }

    private void completionOnExplicitConstructorCall(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        if (!this.requestor.isIgnored(6)) {
            this.setSourceAndTokenRange(astNode.sourceStart, astNode.sourceEnd, false);
            CompletionOnExplicitConstructorCall constructorCall = (CompletionOnExplicitConstructorCall)astNode;
            TypeBinding[] argTypes = this.computeTypes(constructorCall.arguments);
            this.findConstructors((ReferenceBinding)qualifiedBinding, argTypes, scope, constructorCall, false, null, null, null, false);
        }
    }

    private void completionOnFieldName(ASTNode astNode, Scope scope) {
        if (!this.requestor.isIgnored(10)) {
            CompletionOnFieldName field = (CompletionOnFieldName)astNode;
            FieldBinding[] fields = scope.enclosingSourceType().fields();
            char[][] excludeNames = new char[fields.length][];
            int i = 0;
            while (i < fields.length) {
                excludeNames[i] = fields[i].name;
                ++i;
            }
            this.completionToken = field.realName;
            int kind = (field.modifiers & 8) == 0 ? 2 : ((field.modifiers & 0x10) == 0 ? 1 : 3);
            this.findVariableNames(field.realName, field.type, excludeNames, null, kind);
        }
    }

    private void completionOnFieldType(ASTNode astNode, Scope scope) {
        SourceTypeBinding enclosingType;
        CompletionOnFieldType field = (CompletionOnFieldType)astNode;
        CompletionOnSingleTypeReference type = (CompletionOnSingleTypeReference)field.type;
        this.completionToken = type.token;
        this.setSourceAndTokenRange(type.sourceStart, type.sourceEnd);
        this.findTypesAndPackages(this.completionToken, scope, true, true, new ObjectVector());
        if (!this.requestor.isIgnored(3)) {
            this.findKeywordsForMember(this.completionToken, field.modifiers);
        }
        if (!field.isLocalVariable && field.modifiers == 0 && !(enclosingType = scope.enclosingSourceType()).isAnnotationType()) {
            if (!this.requestor.isIgnored(7)) {
                this.findMethodDeclarations(this.completionToken, enclosingType, scope, new ObjectVector(), null, null, null, false);
            }
            if (!this.requestor.isIgnored(11)) {
                this.proposeNewMethod(this.completionToken, enclosingType);
            }
        }
    }

    private void completionOnJavadocAllocationExpression(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        CompletionOnJavadocAllocationExpression allocExpression = (CompletionOnJavadocAllocationExpression)astNode;
        this.javadocTagPosition = allocExpression.tagSourceStart;
        int rangeStart = astNode.sourceStart;
        if (allocExpression.type.isThis()) {
            if (allocExpression.completeInText()) {
                rangeStart = allocExpression.separatorPosition;
            }
        } else if (allocExpression.completeInText()) {
            rangeStart = allocExpression.type.sourceStart;
        }
        this.setSourceAndTokenRange(rangeStart, astNode.sourceEnd, false);
        TypeBinding[] argTypes = this.computeTypes(allocExpression.arguments);
        ReferenceBinding ref = (ReferenceBinding)qualifiedBinding;
        if (!this.requestor.isIgnored(6) && ref.isClass()) {
            this.findConstructors(ref, argTypes, scope, allocExpression, false, null, null, null, false);
        }
    }

    private void completionOnJavadocFieldReference(ASTNode astNode, Scope scope) {
        this.insideQualifiedReference = true;
        CompletionOnJavadocFieldReference fieldRef = (CompletionOnJavadocFieldReference)astNode;
        this.completionToken = fieldRef.token;
        long completionPosition = fieldRef.nameSourcePosition;
        this.javadocTagPosition = fieldRef.tagSourceStart;
        if (fieldRef.actualReceiverType != null && fieldRef.actualReceiverType.isValidBinding()) {
            ReferenceBinding receiverType = (ReferenceBinding)fieldRef.actualReceiverType;
            int rangeStart = (int)(completionPosition >>> 32);
            if (fieldRef.receiver.isThis()) {
                if (fieldRef.completeInText()) {
                    rangeStart = fieldRef.separatorPosition;
                }
            } else if (fieldRef.completeInText()) {
                rangeStart = fieldRef.receiver.sourceStart;
            }
            this.setSourceAndTokenRange(rangeStart, (int)completionPosition);
            if (!this.requestor.isIgnored(2) || !this.requestor.isIgnored(14)) {
                this.findFields(this.completionToken, receiverType, scope, new ObjectVector(), new ObjectVector(), false, fieldRef, scope, false, true, null, null, null, false, null, -1, -1);
            }
            if (!this.requestor.isIgnored(6) || !this.requestor.isIgnored(15)) {
                this.findMethods(this.completionToken, null, null, receiverType, scope, new ObjectVector(), false, false, fieldRef, scope, false, false, true, null, null, null, false, null, -1, -1);
                if (fieldRef.actualReceiverType instanceof ReferenceBinding) {
                    ReferenceBinding refBinding = (ReferenceBinding)fieldRef.actualReceiverType;
                    if (this.completionToken == null || CharOperation.prefixEquals(this.completionToken, refBinding.sourceName) || this.options.camelCaseMatch && CharOperation.camelCaseMatch(this.completionToken, refBinding.sourceName)) {
                        this.findConstructors(refBinding, null, scope, fieldRef, false, null, null, null, false);
                    }
                }
            }
        }
    }

    private void completionOnJavadocMessageSend(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        CompletionOnJavadocMessageSend messageSend = (CompletionOnJavadocMessageSend)astNode;
        TypeBinding[] argTypes = null;
        this.completionToken = messageSend.selector;
        this.javadocTagPosition = messageSend.tagSourceStart;
        int rangeStart = astNode.sourceStart;
        if (messageSend.receiver.isThis()) {
            if (messageSend.completeInText()) {
                rangeStart = messageSend.separatorPosition;
            }
        } else if (messageSend.completeInText()) {
            rangeStart = messageSend.receiver.sourceStart;
        }
        this.setSourceAndTokenRange(rangeStart, astNode.sourceEnd, false);
        if (qualifiedBinding == null) {
            if (!this.requestor.isIgnored(6)) {
                this.findImplicitMessageSends(this.completionToken, argTypes, scope, messageSend, scope, new ObjectVector());
            }
        } else if (!this.requestor.isIgnored(6)) {
            this.findMethods(this.completionToken, null, argTypes, (ReferenceBinding)((ReferenceBinding)qualifiedBinding).capture(scope, messageSend.receiver.sourceEnd), scope, new ObjectVector(), false, false, messageSend, scope, false, messageSend.receiver instanceof SuperReference, true, null, null, null, false, null, -1, -1);
        }
    }

    private void completionOnJavadocParamNameReference(ASTNode astNode) {
        if (!this.requestor.isIgnored(18)) {
            CompletionOnJavadocParamNameReference paramRef = (CompletionOnJavadocParamNameReference)astNode;
            this.setSourceAndTokenRange(paramRef.tagSourceStart, paramRef.tagSourceEnd);
            this.findJavadocParamNames(paramRef.token, paramRef.missingParams, false);
            this.findJavadocParamNames(paramRef.token, paramRef.missingTypeParams, true);
        }
    }

    private void completionOnJavadocQualifiedTypeReference(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        this.insideQualifiedReference = true;
        CompletionOnJavadocQualifiedTypeReference typeRef = (CompletionOnJavadocQualifiedTypeReference)astNode;
        this.completionToken = typeRef.completionIdentifier;
        long completionPosition = typeRef.sourcePositions[typeRef.tokens.length];
        this.javadocTagPosition = typeRef.tagSourceStart;
        if (qualifiedBinding instanceof ReferenceBinding && !(qualifiedBinding instanceof TypeVariableBinding)) {
            if (!this.requestor.isIgnored(9) || (this.assistNodeInJavadoc & 4) != 0 && !this.requestor.isIgnored(16)) {
                int rangeStart = typeRef.completeInText() ? typeRef.sourceStart : (int)(completionPosition >>> 32);
                this.setSourceAndTokenRange(rangeStart, (int)completionPosition);
                this.findMemberTypes(this.completionToken, (ReferenceBinding)qualifiedBinding, scope, scope.enclosingSourceType(), false, false, new ObjectVector(), null, null, null, false);
            }
        } else if (qualifiedBinding instanceof PackageBinding) {
            this.setSourceRange(astNode.sourceStart, (int)completionPosition);
            int rangeStart = typeRef.completeInText() ? typeRef.sourceStart : (int)(completionPosition >>> 32);
            this.setTokenRange(rangeStart, (int)completionPosition);
            this.findTypesAndSubpackages(this.completionToken, (PackageBinding)qualifiedBinding, scope);
        }
    }

    private void completionOnJavadocSingleTypeReference(ASTNode astNode, Scope scope) {
        CompletionOnJavadocSingleTypeReference typeRef = (CompletionOnJavadocSingleTypeReference)astNode;
        this.completionToken = typeRef.token;
        this.javadocTagPosition = typeRef.tagSourceStart;
        this.setSourceAndTokenRange(typeRef.sourceStart, typeRef.sourceEnd);
        this.findTypesAndPackages(this.completionToken, scope, (this.assistNodeInJavadoc & 8) != 0, false, new ObjectVector());
    }

    private void completionOnJavadocTag(ASTNode astNode) {
        CompletionOnJavadocTag javadocTag = (CompletionOnJavadocTag)astNode;
        this.setSourceAndTokenRange(javadocTag.tagSourceStart, javadocTag.sourceEnd);
        this.findJavadocBlockTags(javadocTag);
        this.findJavadocInlineTags(javadocTag);
    }

    private void completionOnJavadocTypeParamReference(ASTNode astNode) {
        if (!this.requestor.isIgnored(18)) {
            CompletionOnJavadocTypeParamReference paramRef = (CompletionOnJavadocTypeParamReference)astNode;
            this.setSourceAndTokenRange(paramRef.tagSourceStart, paramRef.tagSourceEnd);
            this.findJavadocParamNames(paramRef.token, paramRef.missingParams, true);
        }
    }

    private void completionOnKeyword(ASTNode astNode) {
        if (!this.requestor.isIgnored(3)) {
            CompletionOnKeyword keyword = (CompletionOnKeyword)((Object)astNode);
            this.findKeywords(keyword.getToken(), keyword.getPossibleKeywords(), keyword.canCompleteEmptyToken(), false);
        }
    }

    private void completionOnLocalOrArgumentName(ASTNode astNode, Scope scope) {
        if (!this.requestor.isIgnored(10)) {
            int kind;
            LocalDeclaration variable = (LocalDeclaration)astNode;
            if (variable instanceof CompletionOnLocalName) {
                this.completionToken = ((CompletionOnLocalName)variable).realName;
                kind = 5;
            } else {
                CompletionOnArgumentName arg = (CompletionOnArgumentName)variable;
                this.completionToken = arg.realName;
                kind = arg.isCatchArgument ? 5 : 4;
            }
            char[][] alreadyDefinedName = this.computeAlreadyDefinedName((BlockScope)scope, variable);
            char[][] forbiddenNames = this.findVariableFromUnresolvedReference(variable, (BlockScope)scope, alreadyDefinedName);
            LocalVariableBinding[] locals = ((BlockScope)scope).locals;
            char[][] discouragedNames = new char[locals.length][];
            int localCount = 0;
            int i = 0;
            while (i < locals.length) {
                if (locals[i] != null) {
                    discouragedNames[localCount++] = locals[i].name;
                }
                ++i;
            }
            char[][] cArrayArray = discouragedNames;
            discouragedNames = new char[localCount][];
            System.arraycopy(cArrayArray, 0, discouragedNames, 0, localCount);
            this.findVariableNames(this.completionToken, variable.type, discouragedNames, forbiddenNames, kind);
        }
    }

    private void completionOnMarkerAnnotationName(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        CompletionOnMarkerAnnotationName annot = (CompletionOnMarkerAnnotationName)astNode;
        CompletionOnAnnotationOfType fakeType = (CompletionOnAnnotationOfType)scope.parent.referenceContext();
        if (!(fakeType.annotations[0] != annot || scope.parent.parent != null && scope.parent.parent instanceof MethodScope)) {
            this.targetedElement = this.computeTargetedElement(fakeType);
        }
        this.assistNodeIsAnnotation = true;
        if (annot.type instanceof CompletionOnSingleTypeReference) {
            CompletionOnSingleTypeReference type = (CompletionOnSingleTypeReference)annot.type;
            this.completionToken = type.token;
            this.setSourceAndTokenRange(type.sourceStart, type.sourceEnd);
            if (scope.parent.parent != null && !(scope.parent.parent instanceof MethodScope) && !fakeType.isParameter && this.completionToken.length <= Keywords.INTERFACE.length && CharOperation.prefixEquals(this.completionToken, Keywords.INTERFACE, false)) {
                int relevance = this.computeBaseRelevance();
                relevance += this.computeRelevanceForResolution();
                relevance += this.computeRelevanceForInterestingProposal();
                relevance += this.computeRelevanceForCaseMatching(this.completionToken, Keywords.INTERFACE);
                relevance += this.computeRelevanceForRestrictions(0);
                relevance += 20;
                this.noProposal = false;
                if (!this.requestor.isIgnored(3)) {
                    InternalCompletionProposal proposal = this.createProposal(3, this.actualCompletionPosition);
                    ((CompletionProposal)proposal).setName(Keywords.INTERFACE);
                    ((CompletionProposal)proposal).setCompletion(Keywords.INTERFACE);
                    ((CompletionProposal)proposal).setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    ((CompletionProposal)proposal).setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    ((CompletionProposal)proposal).setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
            }
            this.findTypesAndPackages(this.completionToken, scope, false, false, new ObjectVector());
        } else if (annot.type instanceof CompletionOnQualifiedTypeReference) {
            this.insideQualifiedReference = true;
            CompletionOnQualifiedTypeReference type = (CompletionOnQualifiedTypeReference)annot.type;
            this.completionToken = type.completionIdentifier;
            long completionPosition = type.sourcePositions[type.tokens.length];
            if (qualifiedBinding instanceof PackageBinding) {
                this.setSourceRange(astNode.sourceStart, (int)completionPosition);
                this.setTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
                this.findTypesAndSubpackages(this.completionToken, (PackageBinding)qualifiedBinding, scope);
            } else {
                this.setSourceAndTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
                this.findMemberTypes(this.completionToken, (ReferenceBinding)qualifiedBinding, scope, scope.enclosingSourceType(), false, false, new ObjectVector(), null, null, null, false);
            }
        }
    }

    private void completionOnMemberAccess(ASTNode astNode, ASTNode enclosingNode, Binding qualifiedBinding, Scope scope, boolean insideTypeAnnotation) {
        this.insideQualifiedReference = true;
        CompletionOnMemberAccess access = (CompletionOnMemberAccess)astNode;
        long completionPosition = access.nameSourcePosition;
        this.setSourceAndTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
        this.completionToken = access.token;
        if (qualifiedBinding.problemId() == 1) {
            if (this.assistNodeInJavadoc == 0 && (this.requestor.isAllowingRequiredProposals(2, 9) || this.requestor.isAllowingRequiredProposals(6, 9))) {
                ProblemMethodBinding problemMethodBinding = (ProblemMethodBinding)qualifiedBinding;
                this.findFieldsAndMethodsFromMissingReturnType(problemMethodBinding.selector, problemMethodBinding.parameters, scope, access, insideTypeAnnotation);
            }
        } else if (!access.isInsideAnnotation) {
            if (!this.requestor.isIgnored(3)) {
                this.findKeywords(this.completionToken, new char[][]{Keywords.NEW}, false, false);
            }
            ObjectVector fieldsFound = new ObjectVector();
            ObjectVector methodsFound = new ObjectVector();
            boolean superCall = access.receiver instanceof SuperReference;
            this.findFieldsAndMethods(this.completionToken, ((TypeBinding)qualifiedBinding).capture(scope, access.receiver.sourceEnd), scope, fieldsFound, methodsFound, access, scope, false, superCall, null, null, null, false, null, -1, -1);
            if (!superCall) {
                this.checkCancel();
                this.findFieldsAndMethodsFromCastedReceiver(enclosingNode, qualifiedBinding, scope, fieldsFound, methodsFound, access, scope, access.receiver);
            }
        }
    }

    private void completionOnMemberValueName(ASTNode astNode, ASTNode astNodeParent, Scope scope, boolean insideTypeAnnotation) {
        CompletionOnMemberValueName memberValuePair = (CompletionOnMemberValueName)astNode;
        Annotation annotation = (Annotation)astNodeParent;
        this.completionToken = memberValuePair.name;
        ReferenceBinding annotationType = (ReferenceBinding)annotation.resolvedType;
        if (annotationType != null && annotationType.isAnnotationType()) {
            if (!this.requestor.isIgnored(13)) {
                this.findAnnotationAttributes(this.completionToken, annotation.memberValuePairs(), annotationType);
            }
            if (this.assistNodeCanBeSingleMemberAnnotation) {
                if (this.expectedTypesPtr > -1 && this.expectedTypes[0].isAnnotationType()) {
                    this.findTypesAndPackages(this.completionToken, scope, false, false, new ObjectVector());
                } else {
                    if (this.expectedTypesPtr > -1) {
                        this.assistNodeIsEnum = true;
                        int i = 0;
                        while (i <= this.expectedTypesPtr) {
                            if (!this.expectedTypes[i].isEnum()) {
                                this.assistNodeIsEnum = false;
                                break;
                            }
                            ++i;
                        }
                    }
                    if (scope instanceof BlockScope && !this.requestor.isIgnored(5)) {
                        char[][] alreadyDefinedName = this.computeAlreadyDefinedName((BlockScope)scope, FakeInvocationSite);
                        this.findUnresolvedReference(memberValuePair.sourceStart, memberValuePair.sourceEnd, (BlockScope)scope, alreadyDefinedName);
                    }
                    this.findVariablesAndMethods(this.completionToken, scope, FakeInvocationSite, scope, insideTypeAnnotation, true);
                    this.findTypesAndPackages(this.completionToken, scope, false, false, new ObjectVector());
                }
            }
        }
    }

    private void completionOnMessageSend(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        this.setSourceAndTokenRange(astNode.sourceStart, astNode.sourceEnd, false);
        CompletionOnMessageSend messageSend = (CompletionOnMessageSend)astNode;
        TypeBinding[] argTypes = this.computeTypes(messageSend.arguments);
        this.completionToken = messageSend.selector;
        if (qualifiedBinding == null) {
            if (!this.requestor.isIgnored(6)) {
                ObjectVector methodsFound = new ObjectVector();
                this.findImplicitMessageSends(this.completionToken, argTypes, scope, messageSend, scope, methodsFound);
                this.checkCancel();
                this.findLocalMethodsFromStaticImports(this.completionToken, scope, messageSend, scope, true, methodsFound, true);
            }
        } else if (!this.requestor.isIgnored(6)) {
            this.findMethods(this.completionToken, null, argTypes, (ReferenceBinding)((ReferenceBinding)qualifiedBinding).capture(scope, messageSend.receiver.sourceEnd), scope, new ObjectVector(), false, true, messageSend, scope, false, messageSend.receiver instanceof SuperReference, false, null, null, null, false, null, -1, -1);
        }
    }

    private void completionOnMessageSendName(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        if (!this.requestor.isIgnored(6)) {
            TypeBinding[] typeArgTypes;
            CompletionOnMessageSendName messageSend = (CompletionOnMessageSendName)astNode;
            this.insideQualifiedReference = true;
            this.completionToken = messageSend.selector;
            boolean onlyStatic = false;
            if (messageSend.receiver instanceof NameReference) {
                onlyStatic = ((NameReference)messageSend.receiver).isTypeReference();
            } else if (!(messageSend.receiver instanceof MessageSend || messageSend.receiver instanceof FieldReference || messageSend.receiver.isThis())) {
                onlyStatic = true;
            }
            TypeBinding receiverType = (TypeBinding)qualifiedBinding;
            if (receiverType != null && receiverType instanceof ReferenceBinding && (typeArgTypes = this.computeTypesIfCorrect(messageSend.typeArguments)) != null) {
                this.findMethods(this.completionToken, typeArgTypes, null, (ReferenceBinding)receiverType.capture(scope, messageSend.receiver.sourceEnd), scope, new ObjectVector(), onlyStatic, false, messageSend, scope, false, false, false, null, null, null, false, null, -1, -1);
            }
        }
    }

    private void completionOnMethodName(ASTNode astNode, Scope scope) {
        if (!this.requestor.isIgnored(10)) {
            CompletionOnMethodName method = (CompletionOnMethodName)astNode;
            this.setSourceAndTokenRange(method.sourceStart, method.selectorEnd);
            FieldBinding[] fields = scope.enclosingSourceType().fields();
            char[][] excludeNames = new char[fields.length][];
            int i = 0;
            while (i < fields.length) {
                excludeNames[i] = fields[i].name;
                ++i;
            }
            this.completionToken = method.selector;
            int kind = (method.modifiers & 8) == 0 ? 2 : ((method.modifiers & 0x10) == 0 ? 1 : 3);
            this.findVariableNames(this.completionToken, method.returnType, excludeNames, null, kind);
        }
    }

    private void completionOnMethodReturnType(ASTNode astNode, Scope scope) {
        SourceTypeBinding enclosingType;
        CompletionOnMethodReturnType method = (CompletionOnMethodReturnType)astNode;
        CompletionOnSingleTypeReference type = (CompletionOnSingleTypeReference)method.returnType;
        this.completionToken = type.token;
        this.setSourceAndTokenRange(type.sourceStart, type.sourceEnd);
        this.findTypesAndPackages(this.completionToken, scope.parent, true, true, new ObjectVector());
        if (!this.requestor.isIgnored(3)) {
            this.findKeywordsForMember(this.completionToken, method.modifiers);
        }
        if (method.modifiers == 0 && !(enclosingType = scope.enclosingSourceType()).isAnnotationType()) {
            if (!this.requestor.isIgnored(7)) {
                this.findMethodDeclarations(this.completionToken, scope.enclosingSourceType(), scope, new ObjectVector(), null, null, null, false);
            }
            if (!this.requestor.isIgnored(11)) {
                this.proposeNewMethod(this.completionToken, scope.enclosingSourceType());
            }
        }
    }

    private void completionOnParameterizedQualifiedTypeReference(ASTNode astNode, ASTNode astNodeParent, Binding qualifiedBinding, Scope scope) {
        if (!this.requestor.isIgnored(9)) {
            CompletionOnParameterizedQualifiedTypeReference ref = (CompletionOnParameterizedQualifiedTypeReference)astNode;
            this.insideQualifiedReference = true;
            this.assistNodeIsClass = ref.isClass();
            this.assistNodeIsException = ref.isException();
            this.assistNodeIsInterface = ref.isInterface();
            this.assistNodeIsSuperType = ref.isSuperType();
            this.assistNodeIsExtendedType = this.assistNodeIsExtendedType(astNode, astNodeParent);
            this.assistNodeIsInterfaceExcludingAnnotation = this.assistNodeIsInterfaceExcludingAnnotation(astNode, astNodeParent);
            this.completionToken = ref.completionIdentifier;
            long completionPosition = ref.sourcePositions[ref.tokens.length];
            this.setSourceAndTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
            if (qualifiedBinding.problemId() == 1 || (((ReferenceBinding)qualifiedBinding).tagBits & 0x80L) != 0L) {
                if (this.assistNodeInJavadoc == 0 && this.requestor.isAllowingRequiredProposals(9, 9) && ref.tokens.length == 1) {
                    this.findMemberTypesFromMissingType(ref, ref.sourcePositions[0], scope);
                }
            } else {
                ObjectVector typesFound = new ObjectVector();
                if (this.assistNodeIsException && astNodeParent instanceof TryStatement) {
                    this.findExceptionFromTryStatement(this.completionToken, (ReferenceBinding)qualifiedBinding, scope.enclosingSourceType(), (BlockScope)scope, typesFound);
                }
                this.checkCancel();
                this.findMemberTypes(this.completionToken, (ReferenceBinding)qualifiedBinding, scope, scope.enclosingSourceType(), false, false, typesFound, null, null, null, false);
            }
        }
    }

    private boolean assistNodeIsExtendedType(ASTNode astNode, ASTNode astNodeParent) {
        if (astNodeParent == null) {
            return false;
        }
        if (astNodeParent instanceof TypeDeclaration) {
            TypeDeclaration typeDeclaration = (TypeDeclaration)astNodeParent;
            return typeDeclaration.superclass == astNode;
        }
        if (astNodeParent instanceof TypeParameter) {
            TypeParameter typeParameter = (TypeParameter)astNodeParent;
            return typeParameter.type == astNode;
        }
        if (astNodeParent instanceof Wildcard) {
            Wildcard wildcard = (Wildcard)astNodeParent;
            return wildcard.bound == astNode && wildcard.kind == 1;
        }
        return false;
    }

    private boolean assistNodeIsInterfaceExcludingAnnotation(ASTNode astNode, ASTNode astNodeParent) {
        if (astNodeParent == null) {
            return false;
        }
        if (astNodeParent instanceof TypeDeclaration) {
            TypeDeclaration typeDeclaration = (TypeDeclaration)astNodeParent;
            TypeReference[] superInterfaces = typeDeclaration.superInterfaces;
            int length = superInterfaces == null ? 0 : superInterfaces.length;
            int i = 0;
            while (i < length) {
                if (superInterfaces[i] == astNode) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    private boolean assistNodeIsInsideCase(ASTNode astNode, ASTNode astNodeParent) {
        if (astNodeParent instanceof SwitchStatement) {
            CaseStatement[] cases = ((SwitchStatement)astNodeParent).cases;
            int i = 0;
            int caseCount = ((SwitchStatement)astNodeParent).caseCount;
            while (i < caseCount) {
                CompletionNodeDetector detector = new CompletionNodeDetector(astNode, cases[i]);
                if (detector.containsCompletionNode()) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    private void completionOnQualifiedAllocationExpression(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        this.setSourceAndTokenRange(astNode.sourceStart, astNode.sourceEnd, false);
        CompletionOnQualifiedAllocationExpression allocExpression = (CompletionOnQualifiedAllocationExpression)astNode;
        TypeBinding[] argTypes = this.computeTypes(allocExpression.arguments);
        ReferenceBinding ref = (ReferenceBinding)qualifiedBinding;
        if (ref.problemId() == 1) {
            this.findConstructorsFromMissingType(allocExpression.type, argTypes, scope, allocExpression);
        } else {
            if (!this.requestor.isIgnored(6) && ref.isClass() && !ref.isAbstract()) {
                this.findConstructors(ref, argTypes, scope, allocExpression, false, null, null, null, false);
            }
            this.checkCancel();
            if (!(this.requestor.isIgnored(1) || ref.isFinal() || ref.isEnum())) {
                this.findAnonymousType(ref, argTypes, scope, allocExpression, null, null, null, false);
            }
        }
    }

    private void completionOnQualifiedNameReference(ASTNode astNode, ASTNode enclosingNode, Binding qualifiedBinding, Scope scope, boolean insideTypeAnnotation) {
        this.insideQualifiedReference = true;
        CompletionOnQualifiedNameReference ref = (CompletionOnQualifiedNameReference)astNode;
        this.completionToken = ref.completionIdentifier;
        long completionPosition = ref.sourcePositions[ref.sourcePositions.length - 1];
        if (qualifiedBinding.problemId() == 1) {
            boolean foundSomeFields;
            this.setSourceAndTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
            if (this.assistNodeInJavadoc == 0 && (this.requestor.isAllowingRequiredProposals(2, 9) || this.requestor.isAllowingRequiredProposals(6, 9) || this.requestor.isAllowingRequiredProposals(9, 9)) && ref.tokens.length == 1 && !(foundSomeFields = this.findFieldsAndMethodsFromMissingFieldType(ref.tokens[0], scope, ref, insideTypeAnnotation))) {
                this.checkCancel();
                this.findMembersFromMissingType(ref.tokens[0], ref.sourcePositions[0], null, scope, ref, ref.isInsideAnnotationAttribute);
            }
        } else if (qualifiedBinding instanceof VariableBinding) {
            this.setSourceAndTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
            TypeBinding receiverType = ((VariableBinding)qualifiedBinding).type;
            if (receiverType != null && (receiverType.tagBits & 0x80L) == 0L) {
                ObjectVector fieldsFound = new ObjectVector();
                ObjectVector methodsFound = new ObjectVector();
                this.findFieldsAndMethods(this.completionToken, receiverType.capture(scope, ref.sourceEnd), scope, fieldsFound, methodsFound, ref, scope, false, false, null, null, null, false, null, -1, -1);
                this.checkCancel();
                this.findFieldsAndMethodsFromCastedReceiver(enclosingNode, qualifiedBinding, scope, fieldsFound, methodsFound, ref, scope, ref);
            } else if (this.assistNodeInJavadoc == 0 && (this.requestor.isAllowingRequiredProposals(2, 9) || this.requestor.isAllowingRequiredProposals(6, 9))) {
                boolean proposeMethod;
                boolean proposeField = !this.requestor.isIgnored(2);
                boolean bl = proposeMethod = !this.requestor.isIgnored(6);
                if ((proposeField || proposeMethod) && ref.tokens.length == 1) {
                    if (qualifiedBinding instanceof LocalVariableBinding) {
                        LocalVariableBinding localVariableBinding = (LocalVariableBinding)qualifiedBinding;
                        this.findFieldsAndMethodsFromMissingType(localVariableBinding.declaration.type, localVariableBinding.declaringScope, ref, scope);
                    } else {
                        this.findFieldsAndMethodsFromMissingFieldType(ref.tokens[0], scope, ref, insideTypeAnnotation);
                    }
                }
            }
        } else if (qualifiedBinding instanceof ReferenceBinding && !(qualifiedBinding instanceof TypeVariableBinding)) {
            boolean isInsideAnnotationAttribute = ref.isInsideAnnotationAttribute;
            ReferenceBinding receiverType = (ReferenceBinding)qualifiedBinding;
            this.setSourceAndTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
            this.findMembers(this.completionToken, receiverType, scope, ref, isInsideAnnotationAttribute, null, null, null, false);
        } else if (qualifiedBinding instanceof PackageBinding) {
            this.setSourceRange(astNode.sourceStart, (int)completionPosition);
            this.setTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
            this.findTypesAndSubpackages(this.completionToken, (PackageBinding)qualifiedBinding, scope);
        }
    }

    private void completionOnQualifiedTypeReference(ASTNode astNode, ASTNode astNodeParent, Binding qualifiedBinding, Scope scope) {
        this.insideQualifiedReference = true;
        CompletionOnQualifiedTypeReference ref = (CompletionOnQualifiedTypeReference)astNode;
        this.assistNodeIsClass = ref.isClass();
        this.assistNodeIsException = ref.isException();
        this.assistNodeIsInterface = ref.isInterface();
        this.assistNodeIsConstructor = ref.isConstructorType;
        this.assistNodeIsSuperType = ref.isSuperType();
        this.assistNodeIsExtendedType = this.assistNodeIsExtendedType(astNode, astNodeParent);
        this.assistNodeIsInterfaceExcludingAnnotation = this.assistNodeIsInterfaceExcludingAnnotation(astNode, astNodeParent);
        this.completionToken = ref.completionIdentifier;
        long completionPosition = ref.sourcePositions[ref.tokens.length];
        if (qualifiedBinding.problemId() == 1) {
            this.setSourceAndTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
            if (this.assistNodeInJavadoc == 0 && this.requestor.isAllowingRequiredProposals(9, 9) && ref.tokens.length == 1) {
                this.findMemberTypesFromMissingType(ref.tokens[0], ref.sourcePositions[0], scope);
            }
        } else if (qualifiedBinding instanceof ReferenceBinding && !(qualifiedBinding instanceof TypeVariableBinding)) {
            if (!this.requestor.isIgnored(9)) {
                this.setSourceAndTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
                ObjectVector typesFound = new ObjectVector();
                if (this.assistNodeIsException && astNodeParent instanceof TryStatement) {
                    this.findExceptionFromTryStatement(this.completionToken, (ReferenceBinding)qualifiedBinding, scope.enclosingSourceType(), (BlockScope)scope, typesFound);
                }
                this.checkCancel();
                this.findMemberTypes(this.completionToken, (ReferenceBinding)qualifiedBinding, scope, scope.enclosingSourceType(), false, false, typesFound, null, null, null, false);
            }
        } else if (qualifiedBinding instanceof PackageBinding) {
            this.setSourceRange(astNode.sourceStart, (int)completionPosition);
            this.setTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
            this.findTypesAndSubpackages(this.completionToken, (PackageBinding)qualifiedBinding, scope);
        }
    }

    private void completionOnSingleNameReference(ASTNode astNode, ASTNode astNodeParent, Scope scope, boolean insideTypeAnnotation) {
        SwitchStatement switchStatement;
        CompletionOnSingleNameReference singleNameReference = (CompletionOnSingleNameReference)astNode;
        this.completionToken = singleNameReference.token;
        SwitchStatement switchStatement2 = switchStatement = astNodeParent instanceof SwitchStatement ? (SwitchStatement)astNodeParent : null;
        if (switchStatement != null && switchStatement.expression.resolvedType != null && switchStatement.expression.resolvedType.isEnum()) {
            if (!this.requestor.isIgnored(2)) {
                this.assistNodeIsEnum = true;
                this.findEnumConstantsFromSwithStatement(this.completionToken, (SwitchStatement)astNodeParent);
            }
        } else if (this.expectedTypesPtr > -1 && this.expectedTypes[0].isAnnotationType()) {
            this.findTypesAndPackages(this.completionToken, scope, false, false, new ObjectVector());
        } else {
            if (this.expectedTypesPtr > -1) {
                this.assistNodeIsEnum = true;
                int i = 0;
                while (i <= this.expectedTypesPtr) {
                    if (!this.expectedTypes[i].isEnum()) {
                        this.assistNodeIsEnum = false;
                        break;
                    }
                    ++i;
                }
            }
            if (scope instanceof BlockScope && !this.requestor.isIgnored(5)) {
                char[][] alreadyDefinedName = this.computeAlreadyDefinedName((BlockScope)scope, singleNameReference);
                this.findUnresolvedReference(singleNameReference.sourceStart, singleNameReference.sourceEnd, (BlockScope)scope, alreadyDefinedName);
            }
            this.checkCancel();
            this.findVariablesAndMethods(this.completionToken, scope, singleNameReference, scope, insideTypeAnnotation, singleNameReference.isInsideAnnotationAttribute);
            this.checkCancel();
            this.findTypesAndPackages(this.completionToken, scope, true, false, new ObjectVector());
            if (!this.requestor.isIgnored(3)) {
                if (this.completionToken != null && this.completionToken.length != 0) {
                    this.findKeywords(this.completionToken, singleNameReference.possibleKeywords, false, false);
                } else {
                    this.findTrueOrFalseKeywords(singleNameReference.possibleKeywords);
                }
            }
            if (singleNameReference.canBeExplicitConstructor && !this.requestor.isIgnored(6)) {
                if (CharOperation.prefixEquals(this.completionToken, Keywords.THIS, false)) {
                    SourceTypeBinding ref = scope.enclosingSourceType();
                    this.findExplicitConstructors(Keywords.THIS, ref, (MethodScope)scope, singleNameReference);
                } else if (CharOperation.prefixEquals(this.completionToken, Keywords.SUPER, false)) {
                    SourceTypeBinding ref = scope.enclosingSourceType();
                    this.findExplicitConstructors(Keywords.SUPER, ((ReferenceBinding)ref).superclass(), (MethodScope)scope, singleNameReference);
                }
            }
        }
    }

    private void completionOnSingleTypeReference(ASTNode astNode, ASTNode astNodeParent, Binding qualifiedBinding, Scope scope) {
        CompletionOnSingleTypeReference singleRef = (CompletionOnSingleTypeReference)astNode;
        this.completionToken = singleRef.token;
        this.assistNodeIsClass = singleRef.isClass();
        this.assistNodeIsException = singleRef.isException();
        this.assistNodeIsInterface = singleRef.isInterface();
        this.assistNodeIsConstructor = singleRef.isConstructorType;
        this.assistNodeIsSuperType = singleRef.isSuperType();
        this.assistNodeIsExtendedType = this.assistNodeIsExtendedType(astNode, astNodeParent);
        this.assistNodeIsInterfaceExcludingAnnotation = this.assistNodeIsInterfaceExcludingAnnotation(astNode, astNodeParent);
        if (qualifiedBinding == null) {
            if (this.completionToken.length == 0 && (astNodeParent instanceof ParameterizedSingleTypeReference || astNodeParent instanceof ParameterizedQualifiedTypeReference)) {
                this.setSourceAndTokenRange(astNode.sourceStart, astNode.sourceStart - 1, false);
                this.findParameterizedType((TypeReference)astNodeParent, scope);
            } else {
                ObjectVector typesFound = new ObjectVector();
                if (this.assistNodeIsException && astNodeParent instanceof TryStatement) {
                    this.findExceptionFromTryStatement(this.completionToken, null, scope.enclosingSourceType(), (BlockScope)scope, typesFound);
                }
                this.checkCancel();
                this.findTypesAndPackages(this.completionToken, scope, this.assistNodeIsConstructor, false, typesFound);
            }
        } else if (!this.requestor.isIgnored(9)) {
            this.findMemberTypes(this.completionToken, (ReferenceBinding)qualifiedBinding, scope, scope.enclosingSourceType(), false, false, false, false, !this.assistNodeIsConstructor, null, new ObjectVector(), null, null, null, false);
        }
    }

    /*
     * WARNING - void declaration
     * Enabled aggressive block sorting
     */
    private char[][] computeAlreadyDefinedName(BlockScope scope, InvocationSite invocationSite) {
        ArrayList<char[]> result = new ArrayList<char[]>();
        boolean staticsOnly = false;
        BlockScope blockScope = scope;
        block6: while (true) {
            void var5_6;
            switch (var5_6.kind) {
                case 2: {
                    MethodScope methodScope = (MethodScope)var5_6;
                    staticsOnly |= methodScope.isStatic | methodScope.isConstructorCall;
                }
                case 1: {
                    LocalVariableBinding local;
                    BlockScope blockScope2 = (BlockScope)var5_6;
                    int i = 0;
                    int length = blockScope2.locals.length;
                    while (i < length && (local = blockScope2.locals[i]) != null) {
                        if (!local.isSecret()) {
                            result.add(local.name);
                        }
                        ++i;
                    }
                    break;
                }
                case 3: {
                    ClassScope classScope = (ClassScope)var5_6;
                    SourceTypeBinding enclosingType = classScope.referenceContext.binding;
                    this.computeAlreadyDefinedName(enclosingType, classScope, staticsOnly, invocationSite, result);
                    staticsOnly |= enclosingType.isStatic();
                    break;
                }
                case 4: {
                    break block6;
                }
            }
            Scope scope2 = var5_6.parent;
        }
        if (result.size() == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        return (char[][])result.toArray((T[])new char[result.size()][]);
    }

    private void computeAlreadyDefinedName(FieldBinding[] fields, Scope scope, boolean onlyStaticFields, ReferenceBinding receiverType, InvocationSite invocationSite, ArrayList result) {
        int f = fields.length;
        while (--f >= 0) {
            FieldBinding field = fields[f];
            if (field.isSynthetic() || onlyStaticFields && !field.isStatic() || !field.canBeSeenBy(receiverType, invocationSite, scope)) continue;
            result.add(field.name);
        }
    }

    private void computeAlreadyDefinedName(SourceTypeBinding receiverType, ClassScope scope, boolean onlyStaticFields, InvocationSite invocationSite, ArrayList result) {
        ReferenceBinding currentType = receiverType;
        ReferenceBinding[] interfacesToVisit = null;
        int nextPosition = 0;
        do {
            FieldBinding[] fields;
            ReferenceBinding[] itsInterfaces;
            if ((itsInterfaces = ((ReferenceBinding)currentType).superInterfaces()) != Binding.NO_SUPERINTERFACES) {
                if (interfacesToVisit == null) {
                    interfacesToVisit = itsInterfaces;
                    nextPosition = interfacesToVisit.length;
                } else {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block16: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block16;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
            }
            if ((fields = currentType.availableFields()) == null || fields.length <= 0) continue;
            this.computeAlreadyDefinedName(fields, scope, onlyStaticFields, receiverType, invocationSite, result);
        } while ((currentType = ((ReferenceBinding)currentType).superclass()) != null);
        if (interfacesToVisit != null) {
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding[] itsInterfaces;
                ReferenceBinding anInterface = interfacesToVisit[i];
                FieldBinding[] fields = anInterface.availableFields();
                if (fields != null) {
                    this.computeAlreadyDefinedName(fields, scope, onlyStaticFields, receiverType, invocationSite, result);
                }
                if ((itsInterfaces = anInterface.superInterfaces()) != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block17: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block17;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
                ++i;
            }
        }
    }

    int computeBaseRelevance() {
        return 5;
    }

    /*
     * Unable to fully structure code
     */
    private void computeExpectedTypes(ASTNode parent, ASTNode node, Scope scope) {
        block103: {
            this.expectedTypesFilter = 2;
            this.hasJavaLangObjectAsExpectedType = false;
            if (parent instanceof AbstractVariableDeclaration && !(parent instanceof TypeParameter)) {
                variable = (AbstractVariableDeclaration)parent;
                binding = variable.type.resolvedType;
                if (binding != null) {
                    if (!(variable.initialization instanceof ArrayInitializer)) {
                        this.addExpectedType(binding, scope);
                    } else {
                        binding = binding.leafComponentType();
                        this.addExpectedType(binding, scope);
                    }
                }
            } else if (parent instanceof Assignment) {
                binding = ((Assignment)parent).lhs.resolvedType;
                if (binding != null) {
                    this.addExpectedType(binding, scope);
                }
            } else if (parent instanceof ReturnStatement) {
                if (scope.methodScope().referenceContext instanceof AbstractMethodDeclaration) {
                    methodBinding = ((AbstractMethodDeclaration)scope.methodScope().referenceContext).binding;
                    v0 = binding = methodBinding == null ? null : methodBinding.returnType;
                    if (binding != null) {
                        this.addExpectedType(binding, scope);
                    }
                }
            } else if (parent instanceof CastExpression) {
                e = ((CastExpression)parent).type;
                binding = e.resolvedType;
                if (binding != null) {
                    this.addExpectedType(binding, scope);
                    this.expectedTypesFilter = 3;
                }
            } else if (parent instanceof MessageSend) {
                messageSend = (MessageSend)parent;
                if (messageSend.actualReceiverType instanceof ReferenceBinding) {
                    binding = (ReferenceBinding)messageSend.actualReceiverType;
                    isStatic = messageSend.receiver.isTypeReference();
                    while (binding != null) {
                        this.computeExpectedTypesForMessageSend(binding, messageSend.selector, messageSend.arguments, (ReferenceBinding)messageSend.actualReceiverType, scope, messageSend, isStatic);
                        this.computeExpectedTypesForMessageSendForInterface(binding, messageSend.selector, messageSend.arguments, (ReferenceBinding)messageSend.actualReceiverType, scope, messageSend, isStatic);
                        binding = binding.superclass();
                    }
                }
            } else if (parent instanceof AllocationExpression) {
                allocationExpression = (AllocationExpression)parent;
                binding = (ReferenceBinding)allocationExpression.type.resolvedType;
                if (binding != null) {
                    this.computeExpectedTypesForAllocationExpression(binding, allocationExpression.arguments, scope, allocationExpression);
                }
            } else if (parent instanceof OperatorExpression) {
                operator = (parent.bits & 4032) >> 6;
                if (!(parent instanceof ConditionalExpression)) {
                    if (parent instanceof InstanceOfExpression) {
                        e = (InstanceOfExpression)parent;
                        binding = e.expression.resolvedType;
                        if (binding != null) {
                            this.addExpectedType(binding, scope);
                            this.expectedTypesFilter = 3;
                        }
                    } else if (parent instanceof BinaryExpression) {
                        binaryExpression = (BinaryExpression)parent;
                        switch (operator) {
                            case 18: {
                                binding = binaryExpression.left.resolvedType;
                                if (binding == null) break;
                                this.addExpectedType(binding, scope);
                                this.expectedTypesFilter = 3;
                                break;
                            }
                            case 14: {
                                this.addExpectedType(TypeBinding.SHORT, scope);
                                this.addExpectedType(TypeBinding.INT, scope);
                                this.addExpectedType(TypeBinding.LONG, scope);
                                this.addExpectedType(TypeBinding.FLOAT, scope);
                                this.addExpectedType(TypeBinding.DOUBLE, scope);
                                this.addExpectedType(TypeBinding.CHAR, scope);
                                this.addExpectedType(TypeBinding.BYTE, scope);
                                this.addExpectedType(scope.getJavaLangString(), scope);
                                break;
                            }
                            case 0: 
                            case 1: 
                            case 8: {
                                this.addExpectedType(TypeBinding.BOOLEAN, scope);
                                break;
                            }
                            default: {
                                this.addExpectedType(TypeBinding.SHORT, scope);
                                this.addExpectedType(TypeBinding.INT, scope);
                                this.addExpectedType(TypeBinding.LONG, scope);
                                this.addExpectedType(TypeBinding.FLOAT, scope);
                                this.addExpectedType(TypeBinding.DOUBLE, scope);
                                this.addExpectedType(TypeBinding.CHAR, scope);
                                this.addExpectedType(TypeBinding.BYTE, scope);
                            }
                        }
                        if (operator == 4 && binaryExpression.left instanceof SingleNameReference && (b = scope.getBinding(name.token, 7, name = (SingleNameReference)binaryExpression.left, false)) instanceof ReferenceBinding && (typeVariableBindings = ((ReferenceBinding)b).typeVariables()) != null && typeVariableBindings.length > 0) {
                            this.addExpectedType(typeVariableBindings[0].firstBound, scope);
                        }
                    } else if (parent instanceof UnaryExpression) {
                        switch (operator) {
                            case 11: {
                                this.addExpectedType(TypeBinding.BOOLEAN, scope);
                                ** break;
                            }
                            case 12: {
                                this.addExpectedType(TypeBinding.SHORT, scope);
                                this.addExpectedType(TypeBinding.INT, scope);
                                this.addExpectedType(TypeBinding.LONG, scope);
                                this.addExpectedType(TypeBinding.CHAR, scope);
                                this.addExpectedType(TypeBinding.BYTE, scope);
                                ** break;
                            }
                            case 13: 
                            case 14: 
                            case 32: 
                            case 33: {
                                this.addExpectedType(TypeBinding.SHORT, scope);
                                this.addExpectedType(TypeBinding.INT, scope);
                                this.addExpectedType(TypeBinding.LONG, scope);
                                this.addExpectedType(TypeBinding.FLOAT, scope);
                                this.addExpectedType(TypeBinding.DOUBLE, scope);
                                this.addExpectedType(TypeBinding.CHAR, scope);
                                this.addExpectedType(TypeBinding.BYTE, scope);
                            }
                        }
                    }
                }
lbl121:
                // 8 sources

            } else if (parent instanceof ArrayReference) {
                this.addExpectedType(TypeBinding.SHORT, scope);
                this.addExpectedType(TypeBinding.INT, scope);
                this.addExpectedType(TypeBinding.LONG, scope);
            } else if (parent instanceof ParameterizedSingleTypeReference) {
                ref = (ParameterizedSingleTypeReference)parent;
                expected = null;
                if (this.parser.enclosingNode instanceof AbstractVariableDeclaration || this.parser.enclosingNode instanceof ReturnStatement) {
                    if (this.parser.enclosingNode instanceof AbstractVariableDeclaration) {
                        abstractVariableDeclaration = (AbstractVariableDeclaration)this.parser.enclosingNode;
                        expected = abstractVariableDeclaration.initialization != null ? abstractVariableDeclaration.initialization.expectedType() : null;
                    } else {
                        returnStatement = (ReturnStatement)this.parser.enclosingNode;
                        if (returnStatement.expression != null) {
                            expected = returnStatement.expression.expectedType();
                        }
                    }
                    this.addExpectedType(expected, scope);
                } else {
                    typeVariables = ((ReferenceBinding)ref.resolvedType).typeVariables();
                    v1 = length = ref.typeArguments == null ? 0 : ref.typeArguments.length;
                    if (typeVariables != null && typeVariables.length >= length) {
                        index = length - 1;
                        while (index > -1 && ref.typeArguments[index] != node) {
                            --index;
                        }
                        bound = typeVariables[index].firstBound;
                        this.addExpectedType(bound == null ? scope.getJavaLangObject() : bound, scope);
                    }
                }
            } else if (parent instanceof ParameterizedQualifiedTypeReference) {
                ref = (ParameterizedQualifiedTypeReference)parent;
                arguments = ref.typeArguments;
                expected = null;
                if (this.parser.enclosingNode instanceof AbstractVariableDeclaration || this.parser.enclosingNode instanceof ReturnStatement) {
                    if (this.parser.enclosingNode instanceof AbstractVariableDeclaration) {
                        abstractVariableDeclaration = (AbstractVariableDeclaration)this.parser.enclosingNode;
                        expected = abstractVariableDeclaration.initialization != null ? abstractVariableDeclaration.initialization.expectedType() : null;
                    } else {
                        returnStatement = (ReturnStatement)this.parser.enclosingNode;
                        if (returnStatement.expression != null) {
                            expected = returnStatement.expression.expectedType();
                        }
                    }
                    this.addExpectedType(expected, scope);
                } else {
                    typeVariables = ((ReferenceBinding)ref.resolvedType).typeVariables();
                    if (typeVariables != null) {
                        iLength = arguments == null ? 0 : arguments.length;
                        i = 0;
                        while (i < iLength) {
                            jLength = arguments[i] == null ? 0 : arguments[i].length;
                            j = 0;
                            while (j < jLength) {
                                if (arguments[i][j] == node && typeVariables.length > j) {
                                    bound = typeVariables[j].firstBound;
                                    this.addExpectedType(bound == null ? scope.getJavaLangObject() : bound, scope);
                                    break block103;
                                }
                                ++j;
                            }
                            ++i;
                        }
                    }
                }
            } else if (parent instanceof MemberValuePair) {
                memberValuePair = (MemberValuePair)parent;
                if (memberValuePair.binding != null) {
                    this.addExpectedType(memberValuePair.binding.returnType, scope);
                }
            } else if (parent instanceof NormalAnnotation) {
                annotation = (NormalAnnotation)parent;
                memberValuePairs = annotation.memberValuePairs();
                if ((memberValuePairs == null || memberValuePairs.length == 0) && annotation.resolvedType instanceof ReferenceBinding && (methodBindings = ((ReferenceBinding)annotation.resolvedType).availableMethods()) != null && methodBindings.length > 0 && CharOperation.equals(methodBindings[0].selector, CompletionEngine.VALUE)) {
                    canBeSingleMemberAnnotation = true;
                    i = 1;
                    while (i < methodBindings.length) {
                        if ((methodBindings[i].modifiers & 131072) == 0) {
                            canBeSingleMemberAnnotation = false;
                            break;
                        }
                        ++i;
                    }
                    if (canBeSingleMemberAnnotation) {
                        this.assistNodeCanBeSingleMemberAnnotation = canBeSingleMemberAnnotation;
                        this.addExpectedType(methodBindings[0].returnType, scope);
                    }
                }
            } else if (parent instanceof TryStatement) {
                isException = false;
                if (node instanceof CompletionOnSingleTypeReference) {
                    isException = ((CompletionOnSingleTypeReference)node).isException();
                } else if (node instanceof CompletionOnQualifiedTypeReference) {
                    isException = ((CompletionOnQualifiedTypeReference)node).isException();
                } else if (node instanceof CompletionOnParameterizedQualifiedTypeReference) {
                    isException = ((CompletionOnParameterizedQualifiedTypeReference)node).isException();
                }
                if (isException) {
                    thrownExceptionFinder = new ThrownExceptionFinder();
                    thrownExceptionFinder.processThrownExceptions((TryStatement)parent, (BlockScope)scope);
                    bindings = thrownExceptionFinder.getThrownUncaughtExceptions();
                    alreadyCaughtExceptions = thrownExceptionFinder.getAlreadyCaughtExceptions();
                    discouragedExceptions = thrownExceptionFinder.getDiscouragedExceptions();
                    if (bindings != null && bindings.length > 0) {
                        i = 0;
                        while (i < bindings.length) {
                            this.addExpectedType(bindings[i], scope);
                            ++i;
                        }
                        this.expectedTypesFilter = 1;
                    }
                    if (alreadyCaughtExceptions != null && alreadyCaughtExceptions.length > 0) {
                        i = 0;
                        while (i < alreadyCaughtExceptions.length) {
                            this.addForbiddenBindings(alreadyCaughtExceptions[i]);
                            this.knownTypes.put(CharOperation.concat(alreadyCaughtExceptions[i].qualifiedPackageName(), alreadyCaughtExceptions[i].qualifiedSourceName(), '.'), CompletionEngine.KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                            ++i;
                        }
                    }
                    if (discouragedExceptions != null && discouragedExceptions.length > 0) {
                        i = 0;
                        while (i < discouragedExceptions.length) {
                            this.addUninterestingBindings(discouragedExceptions[i]);
                            ++i;
                        }
                    }
                }
            } else if (parent instanceof SwitchStatement) {
                switchStatement = (SwitchStatement)parent;
                this.assistNodeIsInsideCase = this.assistNodeIsInsideCase(node, parent);
                if (switchStatement.expression != null && switchStatement.expression.resolvedType != null) {
                    if (this.assistNodeIsInsideCase && switchStatement.expression.resolvedType.id == 11 && this.compilerOptions.complianceLevel >= 0x330000L) {
                        this.assistNodeIsString = true;
                    }
                    this.addExpectedType(switchStatement.expression.resolvedType, scope);
                }
            } else if (parent instanceof WhileStatement) {
                this.addExpectedType(TypeBinding.BOOLEAN, scope);
            } else if (parent instanceof IfStatement) {
                this.addExpectedType(TypeBinding.BOOLEAN, scope);
            } else if (parent instanceof AssertStatement) {
                assertStatement = (AssertStatement)parent;
                if (assertStatement.assertExpression == node) {
                    this.addExpectedType(TypeBinding.BOOLEAN, scope);
                }
            } else if (parent instanceof ForStatement) {
                this.addExpectedType(TypeBinding.BOOLEAN, scope);
            } else if (parent instanceof Javadoc && scope.kind == 2 && (methodDecl = (methodScope = (MethodScope)scope).referenceMethod()) != null && methodDecl.binding != null && (exceptions = methodDecl.binding.thrownExceptions) != null) {
                i = 0;
                while (i < exceptions.length) {
                    this.addExpectedType(exceptions[i], scope);
                    ++i;
                }
            }
        }
        if (this.expectedTypesPtr + 1 != this.expectedTypes.length) {
            this.expectedTypes = new TypeBinding[this.expectedTypesPtr + 1];
            System.arraycopy(this.expectedTypes, 0, this.expectedTypes, 0, this.expectedTypesPtr + 1);
        }
    }

    private void computeExpectedTypesForAllocationExpression(ReferenceBinding binding, Expression[] arguments, Scope scope, InvocationSite invocationSite) {
        MethodBinding[] methods = binding.availableMethods();
        int i = 0;
        while (i < methods.length) {
            block5: {
                TypeBinding[] parameters;
                MethodBinding method = methods[i];
                if (method.isConstructor() && !method.isSynthetic() && (!this.options.checkVisibility || method.canBeSeenBy(invocationSite, scope)) && (parameters = method.parameters).length >= arguments.length) {
                    int length = arguments.length - 1;
                    int j = 0;
                    while (j < length) {
                        Expression argument = arguments[j];
                        TypeBinding argType = argument.resolvedType;
                        if (argType == null || argType.isCompatibleWith(parameters[j])) {
                            ++j;
                            continue;
                        }
                        break block5;
                    }
                    TypeBinding expectedType = method.parameters[arguments.length - 1];
                    if (expectedType != null) {
                        this.addExpectedType(expectedType, scope);
                    }
                }
            }
            ++i;
        }
    }

    private void computeExpectedTypesForMessageSend(ReferenceBinding binding, char[] selector, Expression[] arguments, ReferenceBinding receiverType, Scope scope, InvocationSite invocationSite, boolean isStatic) {
        MethodBinding[] methods = binding.availableMethods();
        int i = 0;
        while (i < methods.length) {
            block5: {
                TypeBinding[] parameters;
                MethodBinding method = methods[i];
                if (!(method.isSynthetic() || method.isDefaultAbstract() || method.isConstructor() || isStatic && !method.isStatic() || this.options.checkVisibility && !method.canBeSeenBy(receiverType, invocationSite, scope) || !CharOperation.equals(method.selector, selector) || (parameters = method.parameters).length < arguments.length)) {
                    int length = arguments.length - 1;
                    int j = 0;
                    while (j < length) {
                        Expression argument = arguments[j];
                        TypeBinding argType = argument.resolvedType;
                        if (argType == null || argType.isCompatibleWith(parameters[j])) {
                            ++j;
                            continue;
                        }
                        break block5;
                    }
                    TypeBinding expectedType = method.parameters[arguments.length - 1];
                    if (expectedType != null) {
                        this.addExpectedType(expectedType, scope);
                    }
                }
            }
            ++i;
        }
    }

    private void computeExpectedTypesForMessageSendForInterface(ReferenceBinding binding, char[] selector, Expression[] arguments, ReferenceBinding receiverType, Scope scope, InvocationSite invocationSite, boolean isStatic) {
        ReferenceBinding[] itsInterfaces = binding.superInterfaces();
        if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
            ReferenceBinding[] interfacesToVisit = itsInterfaces;
            int nextPosition = interfacesToVisit.length;
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding currentType = interfacesToVisit[i];
                this.computeExpectedTypesForMessageSend(currentType, selector, arguments, receiverType, scope, invocationSite, isStatic);
                itsInterfaces = currentType.superInterfaces();
                if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block7: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block7;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
                ++i;
            }
        }
    }

    private Scope computeForbiddenBindings(ASTNode astNode, ASTNode astNodeParent, Scope scope) {
        if (scope instanceof ClassScope) {
            TypeDeclaration typeDeclaration = ((ClassScope)scope).referenceContext;
            if (typeDeclaration.superclass == astNode) {
                this.addForbiddenBindings(typeDeclaration.binding);
                this.addForbiddenBindingsForMemberTypes(typeDeclaration);
                return scope.parent;
            }
            TypeReference[] superInterfaces = typeDeclaration.superInterfaces;
            int length = superInterfaces == null ? 0 : superInterfaces.length;
            int astNodeIndex = -1;
            int i = 0;
            while (i < length) {
                if (superInterfaces[i] == astNode) {
                    this.addForbiddenBindings(typeDeclaration.binding);
                    this.addForbiddenBindingsForMemberTypes(typeDeclaration);
                    astNodeIndex = i;
                    break;
                }
                ++i;
            }
            if (astNodeIndex >= 0) {
                i = 0;
                while (i < astNodeIndex) {
                    this.addForbiddenBindings(superInterfaces[i].resolvedType);
                    ++i;
                }
                return scope.parent;
            }
        }
        return scope;
    }

    private void addForbiddenBindingsForMemberTypes(TypeDeclaration typeDeclaration) {
        TypeDeclaration[] memberTypes = typeDeclaration.memberTypes;
        int memberTypesLen = memberTypes == null ? 0 : memberTypes.length;
        int i = 0;
        while (i < memberTypesLen) {
            this.addForbiddenBindings(memberTypes[i].binding);
            this.addForbiddenBindingsForMemberTypes(memberTypes[i]);
            ++i;
        }
    }

    private char[] computePrefix(SourceTypeBinding declarationType, SourceTypeBinding invocationType, boolean isStatic) {
        StringBuffer completion = new StringBuffer(10);
        if (isStatic) {
            completion.append(declarationType.sourceName());
        } else if (declarationType == invocationType) {
            completion.append(THIS);
        } else if (!declarationType.isNestedType()) {
            completion.append(declarationType.sourceName());
            completion.append('.');
            completion.append(THIS);
        } else if (!declarationType.isAnonymousType()) {
            completion.append(declarationType.sourceName());
            completion.append('.');
            completion.append(THIS);
        }
        return completion.toString().toCharArray();
    }

    private int computeRelevanceForAnnotation() {
        if (this.assistNodeIsAnnotation) {
            return 20;
        }
        return 0;
    }

    private int computeRelevanceForAnnotationTarget(TypeBinding typeBinding) {
        long target;
        if (this.assistNodeIsAnnotation && (this.targetedElement & 0xFF800000000L) != 0L && ((target = typeBinding.getAnnotationTagBits() & 0xFF800000000L) == 0L || (target & this.targetedElement) != 0L)) {
            return 5;
        }
        return 0;
    }

    int computeRelevanceForCaseMatching(char[] token, char[] proposalName) {
        if (this.options.camelCaseMatch) {
            if (CharOperation.equals(token, proposalName, true)) {
                return 14;
            }
            if (CharOperation.prefixEquals(token, proposalName, true)) {
                return 10;
            }
            if (CharOperation.camelCaseMatch(token, proposalName)) {
                return 5;
            }
            if (CharOperation.equals(token, proposalName, false)) {
                return 4;
            }
        } else {
            if (CharOperation.prefixEquals(token, proposalName, true)) {
                if (CharOperation.equals(token, proposalName, true)) {
                    return 14;
                }
                return 10;
            }
            if (CharOperation.equals(token, proposalName, false)) {
                return 4;
            }
        }
        return 0;
    }

    private int computeRelevanceForClass() {
        if (this.assistNodeIsClass) {
            return 20;
        }
        return 0;
    }

    private int computeRelevanceForEnum() {
        if (this.assistNodeIsEnum) {
            return 20;
        }
        return 0;
    }

    private int computeRelevanceForEnumConstant(TypeBinding proposalType) {
        if (this.assistNodeIsEnum && proposalType != null && this.expectedTypes != null) {
            int i = 0;
            while (i <= this.expectedTypesPtr) {
                if (proposalType.isEnum() && proposalType == this.expectedTypes[i]) {
                    return 25;
                }
                ++i;
            }
        }
        return 0;
    }

    private int computeRelevanceForException() {
        if (this.assistNodeIsException) {
            return 20;
        }
        return 0;
    }

    private int computeRelevanceForException(char[] proposalName) {
        if ((this.assistNodeIsException || (this.assistNodeInJavadoc & 2) != 0) && (CharOperation.match(EXCEPTION_PATTERN, proposalName, false) || CharOperation.match(ERROR_PATTERN, proposalName, false))) {
            return 20;
        }
        return 0;
    }

    private int computeRelevanceForExpectingType(char[] packageName, char[] typeName) {
        if (this.expectedTypes != null) {
            int i = 0;
            while (i <= this.expectedTypesPtr) {
                if (CharOperation.equals(this.expectedTypes[i].qualifiedPackageName(), packageName) && CharOperation.equals(this.expectedTypes[i].qualifiedSourceName(), typeName)) {
                    return 30;
                }
                ++i;
            }
            if (this.hasJavaLangObjectAsExpectedType) {
                return 20;
            }
        }
        return 0;
    }

    private int computeRelevanceForExpectingType(TypeBinding proposalType) {
        if (this.expectedTypes != null && proposalType != null) {
            int relevance = 0;
            if (proposalType == TypeBinding.VOID && this.expectedTypesPtr >= 0) {
                return -5;
            }
            int i = 0;
            while (i <= this.expectedTypesPtr) {
                if ((this.expectedTypesFilter & 2) != 0 && proposalType.isCompatibleWith(this.expectedTypes[i])) {
                    if (CharOperation.equals(this.expectedTypes[i].qualifiedPackageName(), proposalType.qualifiedPackageName()) && CharOperation.equals(this.expectedTypes[i].qualifiedSourceName(), proposalType.qualifiedSourceName())) {
                        return 30;
                    }
                    relevance = 20;
                }
                if ((this.expectedTypesFilter & 1) != 0 && this.expectedTypes[i].isCompatibleWith(proposalType)) {
                    if (CharOperation.equals(this.expectedTypes[i].qualifiedPackageName(), proposalType.qualifiedPackageName()) && CharOperation.equals(this.expectedTypes[i].qualifiedSourceName(), proposalType.qualifiedSourceName())) {
                        return 30;
                    }
                    relevance = 20;
                }
                if (this.unitScope != null && this.unitScope.isBoxingCompatibleWith(proposalType, this.expectedTypes[i])) {
                    relevance = 20;
                }
                ++i;
            }
            return relevance;
        }
        return 0;
    }

    private int computeRelevanceForInheritance(ReferenceBinding receiverType, ReferenceBinding declaringClass) {
        if (receiverType == declaringClass) {
            return 2;
        }
        return 0;
    }

    int computeRelevanceForInterestingProposal() {
        return this.computeRelevanceForInterestingProposal(null);
    }

    private int computeRelevanceForInterestingProposal(Binding binding) {
        if (this.uninterestingBindings != null) {
            int i = 0;
            while (i <= this.uninterestingBindingsPtr) {
                if (this.uninterestingBindings[i] == binding) {
                    return 0;
                }
                if ((this.uninterestingBindingsFilter & 2) != 0 && binding instanceof TypeBinding && this.uninterestingBindings[i] instanceof TypeBinding && ((TypeBinding)binding).isCompatibleWith((TypeBinding)this.uninterestingBindings[i])) {
                    return 0;
                }
                if ((this.uninterestingBindingsFilter & 1) != 0 && binding instanceof TypeBinding && this.uninterestingBindings[i] instanceof TypeBinding && ((TypeBinding)this.uninterestingBindings[i]).isCompatibleWith((TypeBinding)binding)) {
                    return 0;
                }
                ++i;
            }
        }
        return 5;
    }

    private int computeRelevanceForInterestingProposal(char[] givenPkgName, char[] fullTypeName) {
        int i = 0;
        while (i <= this.uninterestingBindingsPtr) {
            char[] currTypeName;
            TypeBinding typeBinding;
            char[] currPkgName;
            if (this.uninterestingBindings[i] instanceof TypeBinding && CharOperation.equals(givenPkgName, currPkgName = (typeBinding = (TypeBinding)this.uninterestingBindings[i]).qualifiedPackageName()) && CharOperation.equals(fullTypeName, currTypeName = typeBinding.qualifiedSourceName())) {
                return 0;
            }
            ++i;
        }
        return 5;
    }

    private int computeRelevanceForInterface() {
        if (this.assistNodeIsInterface) {
            return 20;
        }
        return 0;
    }

    private int computeRelevanceForMissingElements(boolean hasProblems) {
        if (!hasProblems) {
            return 1;
        }
        return 0;
    }

    int computeRelevanceForQualification(boolean prefixRequired) {
        if (!prefixRequired && !this.insideQualifiedReference) {
            return 3;
        }
        if (prefixRequired && this.insideQualifiedReference) {
            return 2;
        }
        return 0;
    }

    int computeRelevanceForResolution() {
        return this.computeRelevanceForResolution(true);
    }

    int computeRelevanceForResolution(boolean isResolved) {
        if (isResolved) {
            return 1;
        }
        return 0;
    }

    int computeRelevanceForRestrictions(int accessRuleKind) {
        if (accessRuleKind == 0) {
            return 3;
        }
        return 0;
    }

    private int computeRelevanceForStatic(boolean onlyStatic, boolean isStatic) {
        if (this.insideQualifiedReference && !onlyStatic && !isStatic) {
            return 11;
        }
        return 0;
    }

    private int computeRelevanceForFinal(boolean onlyFinal, boolean isFinal) {
        if (onlyFinal && isFinal) {
            return 3;
        }
        return 0;
    }

    private long computeTargetedElement(CompletionOnAnnotationOfType fakeNode) {
        ASTNode annotatedElement = fakeNode.potentialAnnotatedNode;
        if (annotatedElement instanceof TypeDeclaration) {
            TypeDeclaration annotatedTypeDeclaration = (TypeDeclaration)annotatedElement;
            if (TypeDeclaration.kind(annotatedTypeDeclaration.modifiers) == 4) {
                return 0x41000000000L;
            }
            return 0x1000000000L;
        }
        if (annotatedElement instanceof FieldDeclaration) {
            if (fakeNode.isParameter) {
                return 0x8000000000L;
            }
            return 0x2000000000L;
        }
        if (annotatedElement instanceof MethodDeclaration) {
            return 0x4000000000L;
        }
        if (annotatedElement instanceof Argument) {
            return 0x8000000000L;
        }
        if (annotatedElement instanceof ConstructorDeclaration) {
            return 0x10000000000L;
        }
        if (annotatedElement instanceof LocalDeclaration) {
            return 0x20000000000L;
        }
        if (annotatedElement instanceof ImportReference) {
            return 0x80000000000L;
        }
        return 0L;
    }

    private TypeBinding[] computeTypes(Expression[] arguments) {
        if (arguments == null) {
            return null;
        }
        int argsLength = arguments.length;
        TypeBinding[] argTypes = new TypeBinding[argsLength];
        int a = argsLength;
        while (--a >= 0) {
            argTypes[a] = arguments[a].resolvedType;
        }
        return argTypes;
    }

    private TypeBinding[] computeTypesIfCorrect(Expression[] arguments) {
        if (arguments == null) {
            return null;
        }
        int argsLength = arguments.length;
        TypeBinding[] argTypes = new TypeBinding[argsLength];
        int a = argsLength;
        while (--a >= 0) {
            TypeBinding typeBinding = arguments[a].resolvedType;
            if (typeBinding == null || !typeBinding.isValidBinding()) {
                return null;
            }
            argTypes[a] = typeBinding;
        }
        return argTypes;
    }

    private void computeUninterestingBindings(ASTNode astNode, ASTNode parent, Scope scope) {
        this.uninterestingBindingsFilter = 0;
        if (parent instanceof LocalDeclaration) {
            this.addUninterestingBindings(((LocalDeclaration)parent).binding);
        } else if (parent instanceof FieldDeclaration) {
            this.addUninterestingBindings(((FieldDeclaration)parent).binding);
        } else if (parent instanceof TryStatement) {
            boolean isException = false;
            if (astNode instanceof CompletionOnSingleTypeReference) {
                isException = ((CompletionOnSingleTypeReference)astNode).isException();
            } else if (astNode instanceof CompletionOnQualifiedTypeReference) {
                isException = ((CompletionOnQualifiedTypeReference)astNode).isException();
            } else if (astNode instanceof CompletionOnParameterizedQualifiedTypeReference) {
                isException = ((CompletionOnParameterizedQualifiedTypeReference)astNode).isException();
            }
            if (isException) {
                this.uninterestingBindingsFilter |= 2;
                Argument[] args = ((TryStatement)parent).catchArguments;
                int i = 0;
                while (i < args.length) {
                    CompletionNodeDetector detector;
                    if (args[i].type instanceof UnionTypeReference && (detector = new CompletionNodeDetector(astNode, args[i])).containsCompletionNode()) {
                        this.uninterestingBindingsFilter |= 1;
                        break;
                    }
                    ++i;
                }
            }
        }
    }

    private char[] createImportCharArray(char[] importedElement, boolean isStatic, boolean onDemand) {
        char[] result = IMPORT;
        if (isStatic) {
            result = CharOperation.concat(result, STATIC, ' ');
        }
        result = CharOperation.concat(result, importedElement, ' ');
        if (onDemand) {
            result = CharOperation.concat(result, ON_DEMAND);
        }
        return CharOperation.concat(result, IMPORT_END);
    }

    private void createMethod(MethodBinding method, char[][] parameterPackageNames, char[][] parameterTypeNames, char[][] parameterNames, Scope scope, StringBuffer completion) {
        TypeVariableBinding[] typeVariableBindings;
        int insertedModifiers = method.modifiers & 0xFFFFFAFF;
        if (insertedModifiers != 0) {
            ASTNode.printModifiers(insertedModifiers, completion);
        }
        if ((typeVariableBindings = method.typeVariables) != null && typeVariableBindings.length != 0) {
            completion.append('<');
            int i = 0;
            while (i < typeVariableBindings.length) {
                if (i != 0) {
                    completion.append(',');
                    completion.append(' ');
                }
                this.createTypeVariable(typeVariableBindings[i], scope, completion);
                ++i;
            }
            completion.append('>');
            completion.append(' ');
        }
        this.createType(method.returnType, scope, completion);
        completion.append(' ');
        completion.append(method.selector);
        completion.append('(');
        TypeBinding[] parameterTypes = method.parameters;
        int length = parameterTypes.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                completion.append(',');
                completion.append(' ');
            }
            this.createType(parameterTypes[i], scope, completion);
            completion.append(' ');
            if (parameterNames != null) {
                completion.append(parameterNames[i]);
            } else {
                completion.append('%');
            }
            ++i;
        }
        completion.append(')');
        ReferenceBinding[] exceptions = method.thrownExceptions;
        if (exceptions != null && exceptions.length > 0) {
            completion.append(' ');
            completion.append(THROWS);
            completion.append(' ');
            int i2 = 0;
            while (i2 < exceptions.length) {
                if (i2 != 0) {
                    completion.append(' ');
                    completion.append(',');
                }
                this.createType(exceptions[i2], scope, completion);
                ++i2;
            }
        }
    }

    protected InternalCompletionProposal createProposal(int kind, int completionOffset) {
        InternalCompletionProposal proposal = (InternalCompletionProposal)CompletionProposal.create(kind, completionOffset - this.offset);
        proposal.nameLookup = this.nameEnvironment.nameLookup;
        proposal.completionEngine = this;
        return proposal;
    }

    private CompletionProposal createRequiredTypeProposal(Binding binding, int start, int end, int relevance) {
        InternalCompletionProposal proposal = null;
        if (binding instanceof ReferenceBinding) {
            ReferenceBinding typeBinding = (ReferenceBinding)binding;
            char[] packageName = typeBinding.qualifiedPackageName();
            char[] typeName = typeBinding.qualifiedSourceName();
            char[] fullyQualifiedName = CharOperation.concat(packageName, typeName, '.');
            proposal = this.createProposal(9, this.actualCompletionPosition);
            proposal.nameLookup = this.nameEnvironment.nameLookup;
            proposal.completionEngine = this;
            proposal.setDeclarationSignature(packageName);
            proposal.setSignature(CompletionEngine.getRequiredTypeSignature(typeBinding));
            proposal.setPackageName(packageName);
            proposal.setTypeName(typeName);
            proposal.setCompletion(fullyQualifiedName);
            proposal.setFlags(typeBinding.modifiers);
            proposal.setReplaceRange(start - this.offset, end - this.offset);
            proposal.setTokenRange(start - this.offset, end - this.offset);
            proposal.setRelevance(relevance);
        } else if (binding instanceof PackageBinding) {
            PackageBinding packageBinding = (PackageBinding)binding;
            char[] packageName = CharOperation.concatWith(packageBinding.compoundName, '.');
            proposal = this.createProposal(8, this.actualCompletionPosition);
            proposal.setDeclarationSignature(packageName);
            proposal.setPackageName(packageName);
            proposal.setCompletion(packageName);
            proposal.setReplaceRange(start - this.offset, end - this.offset);
            proposal.setTokenRange(start - this.offset, end - this.offset);
            proposal.setRelevance(relevance);
        }
        return proposal;
    }

    private void createType(TypeBinding type, Scope scope, StringBuffer completion) {
        block0 : switch (type.kind()) {
            case 132: {
                completion.append(type.sourceName());
                break;
            }
            case 516: 
            case 8196: {
                WildcardBinding wildcardBinding = (WildcardBinding)type;
                completion.append('?');
                switch (wildcardBinding.boundKind) {
                    case 1: {
                        completion.append(' ');
                        completion.append(EXTENDS);
                        completion.append(' ');
                        this.createType(wildcardBinding.bound, scope, completion);
                        if (wildcardBinding.otherBounds == null) break block0;
                        int length = wildcardBinding.otherBounds.length;
                        int i = 0;
                        while (i < length) {
                            completion.append(' ');
                            completion.append('&');
                            completion.append(' ');
                            this.createType(wildcardBinding.otherBounds[i], scope, completion);
                            ++i;
                        }
                        break block0;
                    }
                    case 2: {
                        completion.append(' ');
                        completion.append(SUPER);
                        completion.append(' ');
                        this.createType(wildcardBinding.bound, scope, completion);
                    }
                }
                break;
            }
            case 68: {
                this.createType(type.leafComponentType(), scope, completion);
                int dim = type.dimensions();
                int i = 0;
                while (i < dim) {
                    completion.append('[');
                    completion.append(']');
                    ++i;
                }
                break;
            }
            case 260: {
                ParameterizedTypeBinding parameterizedType = (ParameterizedTypeBinding)type;
                if (type.isMemberType()) {
                    this.createType(parameterizedType.enclosingType(), scope, completion);
                    completion.append('.');
                    completion.append(parameterizedType.sourceName);
                } else {
                    completion.append(CharOperation.concatWith(parameterizedType.genericType().compoundName, '.'));
                }
                if (parameterizedType.arguments == null) break;
                completion.append('<');
                int i = 0;
                int length = parameterizedType.arguments.length;
                while (i < length) {
                    if (i != 0) {
                        completion.append(',');
                    }
                    this.createType(parameterizedType.arguments[i], scope, completion);
                    ++i;
                }
                completion.append('>');
                break;
            }
            default: {
                char[] packageName = type.qualifiedPackageName();
                char[] typeName = type.qualifiedSourceName();
                if (this.mustQualifyType((ReferenceBinding)type, packageName, scope)) {
                    completion.append(CharOperation.concat(packageName, typeName, '.'));
                    break;
                }
                completion.append(type.sourceName());
            }
        }
    }

    private void createTypeParameterProposal(TypeParameter typeParameter, int relevance) {
        char[] completionName = typeParameter.name;
        if (!this.requestor.isIgnored(9)) {
            InternalCompletionProposal proposal = (InternalCompletionProposal)CompletionProposal.create(9, this.actualCompletionPosition - this.offset);
            proposal.nameLookup = this.nameEnvironment.nameLookup;
            proposal.completionEngine = this;
            proposal.setSignature(CompletionEngine.getSignature(typeParameter.binding));
            proposal.setTypeName(completionName);
            proposal.setCompletion(completionName);
            proposal.setFlags(typeParameter.modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            this.requestor.accept(proposal);
            if (DEBUG) {
                this.printDebug(proposal);
            }
        }
        if ((this.assistNodeInJavadoc & 4) != 0 && !this.requestor.isIgnored(16)) {
            char[] javadocCompletion = this.inlineTagCompletion(completionName, JavadocTagConstants.TAG_LINK);
            InternalCompletionProposal proposal = (InternalCompletionProposal)CompletionProposal.create(16, this.actualCompletionPosition - this.offset);
            proposal.nameLookup = this.nameEnvironment.nameLookup;
            proposal.completionEngine = this;
            proposal.setSignature(CompletionEngine.getSignature(typeParameter.binding));
            proposal.setTypeName(javadocCompletion);
            proposal.setCompletion(javadocCompletion);
            proposal.setFlags(typeParameter.modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance + 31);
            this.requestor.accept(proposal);
            if (DEBUG) {
                this.printDebug(proposal);
            }
        }
    }

    private void createTypeProposal(char[] packageName, char[] typeName, int modifiers, int accessibility, char[] completionName, int relevance) {
        if (!this.requestor.isIgnored(9) && (this.assistNodeInJavadoc & 0x10) == 0) {
            InternalCompletionProposal proposal = (InternalCompletionProposal)CompletionProposal.create(9, this.actualCompletionPosition - this.offset);
            proposal.nameLookup = this.nameEnvironment.nameLookup;
            proposal.completionEngine = this;
            proposal.setDeclarationSignature(packageName);
            proposal.setSignature(CompletionEngine.createNonGenericTypeSignature(packageName, typeName));
            proposal.setPackageName(packageName);
            proposal.setTypeName(typeName);
            proposal.setCompletion(completionName);
            proposal.setFlags(modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            proposal.setAccessibility(accessibility);
            this.requestor.accept(proposal);
            if (DEBUG) {
                this.printDebug(proposal);
            }
        }
        if ((this.assistNodeInJavadoc & 4) != 0 && !this.requestor.isIgnored(16)) {
            char[] javadocCompletion = this.inlineTagCompletion(completionName, JavadocTagConstants.TAG_LINK);
            InternalCompletionProposal proposal = (InternalCompletionProposal)CompletionProposal.create(16, this.actualCompletionPosition - this.offset);
            proposal.nameLookup = this.nameEnvironment.nameLookup;
            proposal.completionEngine = this;
            proposal.setDeclarationSignature(packageName);
            proposal.setSignature(CompletionEngine.createNonGenericTypeSignature(packageName, typeName));
            proposal.setPackageName(packageName);
            proposal.setTypeName(typeName);
            proposal.setCompletion(javadocCompletion);
            proposal.setFlags(modifiers);
            int start = (this.assistNodeInJavadoc & 0x20) != 0 ? this.javadocTagPosition : this.startPosition;
            proposal.setReplaceRange(start - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance + 31);
            proposal.setAccessibility(accessibility);
            this.requestor.accept(proposal);
            if (DEBUG) {
                this.printDebug(proposal);
            }
        }
    }

    private void createTypeProposal(ReferenceBinding refBinding, char[] typeName, int accessibility, char[] completionName, int relevance, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        if (!this.isIgnored(9, missingElements != null) && (this.assistNodeInJavadoc & 0x10) == 0) {
            InternalCompletionProposal proposal = (InternalCompletionProposal)CompletionProposal.create(9, this.actualCompletionPosition - this.offset);
            proposal.nameLookup = this.nameEnvironment.nameLookup;
            proposal.completionEngine = this;
            proposal.setDeclarationSignature(refBinding.qualifiedPackageName());
            proposal.setSignature(this.getCompletedTypeSignature(refBinding));
            proposal.setPackageName(refBinding.qualifiedPackageName());
            proposal.setTypeName(typeName);
            if (missingElements != null) {
                CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                int i = 0;
                while (i < missingElements.length) {
                    subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                    ++i;
                }
                proposal.setRequiredProposals(subProposals);
            }
            proposal.setCompletion(completionName);
            proposal.setFlags(refBinding.modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            this.requestor.accept(proposal);
            if (DEBUG) {
                this.printDebug(proposal);
            }
        }
        if ((this.assistNodeInJavadoc & 4) != 0 && !this.requestor.isIgnored(16)) {
            char[] javadocCompletion = this.inlineTagCompletion(completionName, JavadocTagConstants.TAG_LINK);
            InternalCompletionProposal proposal = (InternalCompletionProposal)CompletionProposal.create(16, this.actualCompletionPosition - this.offset);
            proposal.nameLookup = this.nameEnvironment.nameLookup;
            proposal.completionEngine = this;
            proposal.setDeclarationSignature(refBinding.qualifiedPackageName());
            proposal.setSignature(this.getCompletedTypeSignature(refBinding));
            proposal.setPackageName(refBinding.qualifiedPackageName());
            proposal.setTypeName(typeName);
            proposal.setCompletion(javadocCompletion);
            proposal.setFlags(refBinding.modifiers);
            int start = (this.assistNodeInJavadoc & 0x20) != 0 ? this.javadocTagPosition : this.startPosition;
            proposal.setReplaceRange(start - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance + 31);
            this.requestor.accept(proposal);
            if (DEBUG) {
                this.printDebug(proposal);
            }
        }
    }

    private void createTypeVariable(TypeVariableBinding typeVariable, Scope scope, StringBuffer completion) {
        completion.append(typeVariable.sourceName);
        if (typeVariable.superclass != null && typeVariable.firstBound == typeVariable.superclass) {
            completion.append(' ');
            completion.append(EXTENDS);
            completion.append(' ');
            this.createType(typeVariable.superclass, scope, completion);
        }
        if (typeVariable.superInterfaces != null && typeVariable.superInterfaces != Binding.NO_SUPERINTERFACES) {
            if (typeVariable.firstBound != typeVariable.superclass) {
                completion.append(' ');
                completion.append(EXTENDS);
                completion.append(' ');
            }
            int i = 0;
            int length = typeVariable.superInterfaces.length;
            while (i < length) {
                if (i > 0 || typeVariable.firstBound == typeVariable.superclass) {
                    completion.append(' ');
                    completion.append(EXTENDS);
                    completion.append(' ');
                }
                this.createType(typeVariable.superInterfaces[i], scope, completion);
                ++i;
            }
        }
    }

    private void createVargsType(TypeBinding type, Scope scope, StringBuffer completion) {
        if (type.isArrayType()) {
            this.createType(type.leafComponentType(), scope, completion);
            int dim = type.dimensions() - 1;
            int i = 0;
            while (i < dim) {
                completion.append('[');
                completion.append(']');
                ++i;
            }
            completion.append(VARARGS);
        } else {
            this.createType(type, scope, completion);
        }
    }

    private void findAnnotationAttributes(char[] token, MemberValuePair[] attributesFound, ReferenceBinding annotation) {
        MethodBinding[] methods = annotation.availableMethods();
        int i = 0;
        while (i < methods.length) {
            block6: {
                MethodBinding method = methods[i];
                if (CharOperation.prefixEquals(token, method.selector, false) || this.options.camelCaseMatch && CharOperation.camelCaseMatch(token, method.selector)) {
                    int length = attributesFound == null ? 0 : attributesFound.length;
                    int j = 0;
                    while (j < length) {
                        if (!CharOperation.equals(method.selector, attributesFound[j].name, false)) {
                            ++j;
                            continue;
                        }
                        break block6;
                    }
                    int relevance = this.computeBaseRelevance();
                    relevance += this.computeRelevanceForResolution();
                    relevance += this.computeRelevanceForInterestingProposal(method);
                    relevance += this.computeRelevanceForCaseMatching(token, method.selector);
                    relevance += this.computeRelevanceForQualification(false);
                    relevance += this.computeRelevanceForRestrictions(0);
                    this.noProposal = false;
                    if (!this.requestor.isIgnored(13)) {
                        InternalCompletionProposal proposal = this.createProposal(13, this.actualCompletionPosition);
                        ((CompletionProposal)proposal).setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
                        ((CompletionProposal)proposal).setSignature(CompletionEngine.getSignature(method.returnType));
                        ((CompletionProposal)proposal).setName(method.selector);
                        ((CompletionProposal)proposal).setCompletion(method.selector);
                        ((CompletionProposal)proposal).setFlags(method.modifiers);
                        ((CompletionProposal)proposal).setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                        ((CompletionProposal)proposal).setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                        ((CompletionProposal)proposal).setRelevance(relevance);
                        this.requestor.accept(proposal);
                        if (DEBUG) {
                            this.printDebug(proposal);
                        }
                    }
                }
            }
            ++i;
        }
    }

    void findAnonymousType(ReferenceBinding currentType, TypeBinding[] argTypes, Scope scope, InvocationSite invocationSite, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        int relevance = this.computeBaseRelevance();
        relevance += this.computeRelevanceForResolution();
        relevance += this.computeRelevanceForInterestingProposal(currentType);
        relevance += this.computeRelevanceForRestrictions(0);
        if (missingElements != null) {
            relevance += this.computeRelevanceForMissingElements(missingElementsHaveProblems);
        }
        this.findAnonymousType(currentType, argTypes, scope, invocationSite, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, true, false, relevance);
    }

    private void findAnonymousType(ReferenceBinding currentType, TypeBinding[] argTypes, Scope scope, InvocationSite invocationSite, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems, boolean exactMatch, boolean isQualified, int relevance) {
        if (currentType.isInterface()) {
            char[] completion = CharOperation.NO_CHAR;
            char[] typeCompletion = null;
            if (!exactMatch) {
                typeCompletion = isQualified ? CharOperation.concat(currentType.qualifiedPackageName(), currentType.qualifiedSourceName(), '.') : currentType.sourceName();
                completion = this.source != null && this.source.length > this.endPosition && this.source[this.endPosition] == '(' ? CharOperation.NO_CHAR : new char[]{'(', ')'};
            }
            this.noProposal = false;
            if (!exactMatch) {
                if (!this.isIgnored(27, 9)) {
                    char[] packageName = currentType.isLocalType() ? null : currentType.qualifiedPackageName();
                    char[] typeName = currentType.qualifiedSourceName();
                    InternalCompletionProposal proposal = this.createProposal(27, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.getSignature(currentType));
                    proposal.setDeclarationKey(currentType.computeUniqueKey());
                    proposal.setSignature(CompletionEngine.createMethodSignature(CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR, CharOperation.NO_CHAR));
                    proposal.setDeclarationPackageName(packageName);
                    proposal.setDeclarationTypeName(typeName);
                    proposal.setName(currentType.sourceName());
                    InternalCompletionProposal typeProposal = this.createProposal(9, this.actualCompletionPosition);
                    typeProposal.nameLookup = this.nameEnvironment.nameLookup;
                    typeProposal.completionEngine = this;
                    typeProposal.setDeclarationSignature(packageName);
                    typeProposal.setSignature(CompletionEngine.getRequiredTypeSignature(currentType));
                    typeProposal.setPackageName(packageName);
                    typeProposal.setTypeName(typeName);
                    typeProposal.setCompletion(typeCompletion);
                    typeProposal.setFlags(currentType.modifiers);
                    typeProposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    typeProposal.setTokenRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    typeProposal.setRelevance(relevance);
                    proposal.setRequiredProposals(new CompletionProposal[]{typeProposal});
                    proposal.setCompletion(completion);
                    proposal.setFlags(1);
                    proposal.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
            } else if (!this.isIgnored(1, missingElements != null)) {
                InternalCompletionProposal proposal = this.createProposal(1, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.getSignature(currentType));
                proposal.setDeclarationKey(currentType.computeUniqueKey());
                proposal.setSignature(CompletionEngine.createMethodSignature(CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR, CharOperation.NO_CHAR));
                proposal.setDeclarationPackageName(currentType.qualifiedPackageName());
                proposal.setDeclarationTypeName(currentType.qualifiedSourceName());
                if (missingElements != null) {
                    CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                    int i = 0;
                    while (i < missingElements.length) {
                        subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                        ++i;
                    }
                    proposal.setRequiredProposals(subProposals);
                }
                proposal.setCompletion(completion);
                proposal.setFlags(1);
                proposal.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenEnd - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                this.requestor.accept(proposal);
                if (DEBUG) {
                    this.printDebug(proposal);
                }
            }
        } else {
            this.findConstructors(currentType, argTypes, scope, invocationSite, true, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, exactMatch, isQualified, relevance);
        }
    }

    private void findClassField(char[] token, TypeBinding receiverType, Scope scope, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        if (token == null) {
            return;
        }
        if (token.length <= classField.length && CharOperation.prefixEquals(token, classField, false)) {
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForCaseMatching(token, classField);
            relevance += this.computeRelevanceForExpectingType(scope.getJavaLangClass());
            relevance += this.computeRelevanceForRestrictions(0);
            relevance += 2;
            if (missingElements != null) {
                relevance += this.computeRelevanceForMissingElements(missingElementsHaveProblems);
            }
            this.noProposal = false;
            if (!this.isIgnored(2, missingElements != null)) {
                InternalCompletionProposal proposal = this.createProposal(2, this.actualCompletionPosition);
                char[] signature = CompletionEngine.createNonGenericTypeSignature(CharOperation.concatWith(JAVA_LANG, '.'), CLASS);
                if (this.compilerOptions.sourceLevel > 0x300000L) {
                    char[] typeArgument = CompletionEngine.getTypeSignature(receiverType);
                    int oldLength = signature.length;
                    int argumentLength = typeArgument.length;
                    int newLength = oldLength + argumentLength + 2;
                    char[] cArray = signature;
                    signature = new char[newLength];
                    System.arraycopy(cArray, 0, signature, 0, oldLength - 1);
                    signature[oldLength - 1] = 60;
                    System.arraycopy(typeArgument, 0, signature, oldLength, argumentLength);
                    signature[newLength - 2] = 62;
                    signature[newLength - 1] = 59;
                }
                proposal.setSignature(signature);
                proposal.setPackageName(CharOperation.concatWith(JAVA_LANG, '.'));
                proposal.setTypeName(CLASS);
                proposal.setName(classField);
                if (missingElements != null) {
                    CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                    int i = 0;
                    while (i < missingElements.length) {
                        subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                        ++i;
                    }
                    proposal.setRequiredProposals(subProposals);
                }
                proposal.setCompletion(classField);
                proposal.setFlags(9);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                this.requestor.accept(proposal);
                if (DEBUG) {
                    this.printDebug(proposal);
                }
            }
        }
    }

    void findConstructors(ReferenceBinding currentType, TypeBinding[] argTypes, Scope scope, InvocationSite invocationSite, boolean forAnonymousType, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        int relevance = this.computeBaseRelevance();
        relevance += this.computeRelevanceForResolution();
        relevance += this.computeRelevanceForInterestingProposal();
        relevance += this.computeRelevanceForRestrictions(0);
        if (missingElements != null) {
            relevance += this.computeRelevanceForMissingElements(missingElementsHaveProblems);
        }
        this.findConstructors(currentType, argTypes, scope, invocationSite, forAnonymousType, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, true, false, relevance);
    }

    private void findConstructorsFromMissingType(TypeReference typeRef, final TypeBinding[] argTypes, final Scope scope, final InvocationSite invocationSite) {
        MissingTypesGuesser missingTypesConverter = new MissingTypesGuesser(this);
        MissingTypesGuesser.GuessedTypeRequestor substitutionRequestor = new MissingTypesGuesser.GuessedTypeRequestor(){

            public void accept(TypeBinding guessedType, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean hasProblems) {
                if (guessedType instanceof ReferenceBinding) {
                    ReferenceBinding ref = (ReferenceBinding)guessedType;
                    if (!CompletionEngine.this.isIgnored(6, missingElements != null) && ref.isClass() && !ref.isAbstract()) {
                        CompletionEngine.this.findConstructors(ref, argTypes, scope, invocationSite, false, missingElements, missingElementsStarts, missingElementsEnds, hasProblems);
                    }
                    CompletionEngine.this.checkCancel();
                    if (!(CompletionEngine.this.isIgnored(1, missingElements != null) || ref.isFinal() || ref.isEnum())) {
                        CompletionEngine.this.findAnonymousType(ref, argTypes, scope, invocationSite, missingElements, missingElementsStarts, missingElementsEnds, hasProblems);
                    }
                }
            }
        };
        missingTypesConverter.guess(typeRef, scope, substitutionRequestor);
    }

    private void findConstructors(ReferenceBinding currentType, TypeBinding[] argTypes, Scope scope, InvocationSite invocationSite, boolean forAnonymousType, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems, boolean exactMatch, boolean isQualified, int relevance) {
        MethodBinding[] methods = null;
        if (currentType instanceof ParameterizedTypeBinding && invocationSite instanceof CompletionOnQualifiedAllocationExpression) {
            CompletionOnQualifiedAllocationExpression alloc = (CompletionOnQualifiedAllocationExpression)invocationSite;
            if ((alloc.bits & 0x80000) != 0) {
                ParameterizedTypeBinding binding = (ParameterizedTypeBinding)currentType;
                ReferenceBinding originalGenericType = binding.genericType();
                if (originalGenericType != null) {
                    methods = originalGenericType.methods();
                }
            } else {
                methods = currentType.availableMethods();
            }
        } else {
            methods = currentType.availableMethods();
        }
        if (methods != null) {
            int minArgLength = argTypes == null ? 0 : argTypes.length;
            int f = methods.length;
            block0: while (--f >= 0) {
                MethodBinding original;
                InternalCompletionProposal proposal;
                char[] typeName;
                char[] packageName;
                char[] typeCompletion;
                TypeBinding[] parameters;
                int paramLength;
                MethodBinding constructor = methods[f];
                if (!constructor.isConstructor() || constructor.isSynthetic() || this.options.checkDeprecation && constructor.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(constructor.declaringClass) || this.options.checkVisibility && !constructor.canBeSeenBy(invocationSite, scope) && (!forAnonymousType || !constructor.isProtected()) || minArgLength > (paramLength = (parameters = constructor.parameters).length)) continue;
                int a = minArgLength;
                while (--a >= 0) {
                    if (argTypes[a] != null && !argTypes[a].isCompatibleWith(constructor.parameters[a])) continue block0;
                }
                char[][] parameterPackageNames = new char[paramLength][];
                char[][] parameterTypeNames = new char[paramLength][];
                int i = 0;
                while (i < paramLength) {
                    TypeBinding type = parameters[i];
                    parameterPackageNames[i] = type.qualifiedPackageName();
                    parameterTypeNames[i] = type.qualifiedSourceName();
                    ++i;
                }
                char[][] parameterNames = this.findMethodParameterNames(constructor, parameterTypeNames);
                char[] completion = CharOperation.NO_CHAR;
                if (forAnonymousType) {
                    typeCompletion = null;
                    if (!exactMatch) {
                        typeCompletion = isQualified ? CharOperation.concat(currentType.qualifiedPackageName(), currentType.qualifiedSourceName(), '.') : currentType.sourceName();
                        completion = this.source != null && this.source.length > this.endPosition && this.source[this.endPosition] == '(' ? CharOperation.NO_CHAR : new char[]{'(', ')'};
                    }
                    this.noProposal = false;
                    if (!exactMatch) {
                        if (this.isIgnored(27, 9)) continue;
                        packageName = currentType.isLocalType() ? null : currentType.qualifiedPackageName();
                        typeName = currentType.qualifiedSourceName();
                        InternalCompletionProposal proposal2 = this.createProposal(27, this.actualCompletionPosition);
                        proposal2.setDeclarationSignature(CompletionEngine.getSignature(currentType));
                        proposal2.setDeclarationKey(currentType.computeUniqueKey());
                        proposal2.setSignature(CompletionEngine.getSignature(constructor));
                        MethodBinding original2 = constructor.original();
                        if (original2 != constructor) {
                            proposal2.setOriginalSignature(CompletionEngine.getSignature(original2));
                        }
                        proposal2.setKey(constructor.computeUniqueKey());
                        proposal2.setDeclarationPackageName(packageName);
                        proposal2.setDeclarationTypeName(typeName);
                        proposal2.setParameterPackageNames(parameterPackageNames);
                        proposal2.setParameterTypeNames(parameterTypeNames);
                        proposal2.setName(currentType.sourceName());
                        InternalCompletionProposal typeProposal = this.createProposal(9, this.actualCompletionPosition);
                        typeProposal.nameLookup = this.nameEnvironment.nameLookup;
                        typeProposal.completionEngine = this;
                        typeProposal.setDeclarationSignature(packageName);
                        typeProposal.setSignature(CompletionEngine.getRequiredTypeSignature(currentType));
                        typeProposal.setPackageName(packageName);
                        typeProposal.setTypeName(typeName);
                        typeProposal.setCompletion(typeCompletion);
                        typeProposal.setFlags(currentType.modifiers);
                        typeProposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                        typeProposal.setTokenRange(this.startPosition - this.offset, this.endPosition - this.offset);
                        typeProposal.setRelevance(relevance);
                        proposal2.setRequiredProposals(new CompletionProposal[]{typeProposal});
                        proposal2.setCompletion(completion);
                        proposal2.setFlags(constructor.modifiers);
                        proposal2.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                        proposal2.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                        proposal2.setRelevance(relevance);
                        if (parameterNames != null) {
                            proposal2.setParameterNames(parameterNames);
                        }
                        this.requestor.accept(proposal2);
                        if (!DEBUG) continue;
                        this.printDebug(proposal2);
                        continue;
                    }
                    if (this.isIgnored(1, missingElements != null)) continue;
                    proposal = this.createProposal(1, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.getSignature(currentType));
                    proposal.setDeclarationKey(currentType.computeUniqueKey());
                    proposal.setSignature(CompletionEngine.getSignature(constructor));
                    original = constructor.original();
                    if (original != constructor) {
                        proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                    }
                    proposal.setKey(constructor.computeUniqueKey());
                    proposal.setDeclarationPackageName(currentType.qualifiedPackageName());
                    proposal.setDeclarationTypeName(currentType.qualifiedSourceName());
                    proposal.setParameterPackageNames(parameterPackageNames);
                    proposal.setParameterTypeNames(parameterTypeNames);
                    if (missingElements != null) {
                        CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                        int i2 = 0;
                        while (i2 < missingElements.length) {
                            subProposals[i2] = this.createRequiredTypeProposal(missingElements[i2], missingElementsStarts[i2], missingElementsEnds[i2], relevance);
                            ++i2;
                        }
                        proposal.setRequiredProposals(subProposals);
                    }
                    proposal.setCompletion(completion);
                    proposal.setFlags(constructor.modifiers);
                    proposal.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenEnd - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    if (parameterNames != null) {
                        proposal.setParameterNames(parameterNames);
                    }
                    this.requestor.accept(proposal);
                    if (!DEBUG) continue;
                    this.printDebug(proposal);
                    continue;
                }
                typeCompletion = null;
                if (this.assistNodeInJavadoc > 0) {
                    Expression receiver = null;
                    char[] selector = null;
                    if (invocationSite instanceof CompletionOnJavadocAllocationExpression) {
                        CompletionOnJavadocAllocationExpression alloc = (CompletionOnJavadocAllocationExpression)invocationSite;
                        receiver = alloc.type;
                    } else if (invocationSite instanceof CompletionOnJavadocFieldReference) {
                        CompletionOnJavadocFieldReference fieldRef = (CompletionOnJavadocFieldReference)invocationSite;
                        receiver = fieldRef.receiver;
                    }
                    if (receiver != null) {
                        StringBuffer javadocCompletion = new StringBuffer();
                        if (receiver.isThis()) {
                            selector = ((JavadocImplicitTypeReference)receiver).token;
                            if ((this.assistNodeInJavadoc & 4) != 0) {
                                javadocCompletion.append('#');
                            }
                        } else if (receiver instanceof JavadocSingleTypeReference) {
                            JavadocSingleTypeReference typeRef = (JavadocSingleTypeReference)receiver;
                            selector = typeRef.token;
                            if ((this.assistNodeInJavadoc & 4) != 0) {
                                javadocCompletion.append(typeRef.token);
                                javadocCompletion.append('#');
                            }
                        } else if (receiver instanceof JavadocQualifiedTypeReference) {
                            JavadocQualifiedTypeReference typeRef = (JavadocQualifiedTypeReference)receiver;
                            selector = typeRef.tokens[typeRef.tokens.length - 1];
                            if ((this.assistNodeInJavadoc & 4) != 0) {
                                javadocCompletion.append(CharOperation.concatWith(typeRef.tokens, '.'));
                                javadocCompletion.append('#');
                            }
                        }
                        javadocCompletion.append(selector);
                        javadocCompletion.append('(');
                        if (constructor.parameters != null) {
                            boolean isVarargs = constructor.isVarargs();
                            int p = 0;
                            int ln = constructor.parameters.length;
                            while (p < ln) {
                                if (p > 0) {
                                    javadocCompletion.append(", ");
                                }
                                TypeBinding argTypeBinding = constructor.parameters[p];
                                if (isVarargs && p == ln - 1) {
                                    this.createVargsType(argTypeBinding.erasure(), scope, javadocCompletion);
                                } else {
                                    this.createType(argTypeBinding.erasure(), scope, javadocCompletion);
                                }
                                ++p;
                            }
                        }
                        javadocCompletion.append(')');
                        completion = javadocCompletion.toString().toCharArray();
                    }
                } else if (!exactMatch) {
                    typeCompletion = isQualified ? CharOperation.concat(currentType.qualifiedPackageName(), currentType.qualifiedSourceName(), '.') : currentType.sourceName();
                    completion = this.source != null && this.source.length > this.endPosition && this.source[this.endPosition] == '(' ? CharOperation.NO_CHAR : new char[]{'(', ')'};
                }
                this.noProposal = false;
                if (!exactMatch) {
                    if (this.isIgnored(26, 9)) continue;
                    packageName = currentType.isLocalType() ? null : currentType.qualifiedPackageName();
                    typeName = currentType.qualifiedSourceName();
                    InternalCompletionProposal proposal3 = this.createProposal(26, this.actualCompletionPosition);
                    proposal3.setDeclarationSignature(CompletionEngine.getSignature(currentType));
                    proposal3.setSignature(CompletionEngine.getSignature(constructor));
                    MethodBinding original3 = constructor.original();
                    if (original3 != constructor) {
                        proposal3.setOriginalSignature(CompletionEngine.getSignature(original3));
                    }
                    proposal3.setDeclarationPackageName(packageName);
                    proposal3.setDeclarationTypeName(typeName);
                    proposal3.setParameterPackageNames(parameterPackageNames);
                    proposal3.setParameterTypeNames(parameterTypeNames);
                    proposal3.setName(currentType.sourceName());
                    InternalCompletionProposal typeProposal = this.createProposal(9, this.actualCompletionPosition);
                    typeProposal.nameLookup = this.nameEnvironment.nameLookup;
                    typeProposal.completionEngine = this;
                    typeProposal.setDeclarationSignature(packageName);
                    typeProposal.setSignature(CompletionEngine.getRequiredTypeSignature(currentType));
                    typeProposal.setPackageName(packageName);
                    typeProposal.setTypeName(typeName);
                    typeProposal.setCompletion(typeCompletion);
                    typeProposal.setFlags(currentType.modifiers);
                    typeProposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    typeProposal.setTokenRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    typeProposal.setRelevance(relevance);
                    proposal3.setRequiredProposals(new CompletionProposal[]{typeProposal});
                    proposal3.setIsContructor(true);
                    proposal3.setCompletion(completion);
                    proposal3.setFlags(constructor.modifiers);
                    proposal3.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                    proposal3.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal3.setRelevance(relevance);
                    if (parameterNames != null) {
                        proposal3.setParameterNames(parameterNames);
                    }
                    this.requestor.accept(proposal3);
                    if (!DEBUG) continue;
                    this.printDebug(proposal3);
                    continue;
                }
                if (!this.isIgnored(6, missingElements != null) && (this.assistNodeInJavadoc & 0x10) == 0) {
                    proposal = this.createProposal(6, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.getSignature(currentType));
                    proposal.setSignature(CompletionEngine.getSignature(constructor));
                    original = constructor.original();
                    if (original != constructor) {
                        proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                    }
                    proposal.setDeclarationPackageName(currentType.qualifiedPackageName());
                    proposal.setDeclarationTypeName(currentType.qualifiedSourceName());
                    proposal.setParameterPackageNames(parameterPackageNames);
                    proposal.setParameterTypeNames(parameterTypeNames);
                    proposal.setName(currentType.sourceName());
                    if (missingElements != null) {
                        CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                        int i3 = 0;
                        while (i3 < missingElements.length) {
                            subProposals[i3] = this.createRequiredTypeProposal(missingElements[i3], missingElementsStarts[i3], missingElementsEnds[i3], relevance);
                            ++i3;
                        }
                        proposal.setRequiredProposals(subProposals);
                    }
                    proposal.setIsContructor(true);
                    proposal.setCompletion(completion);
                    proposal.setFlags(constructor.modifiers);
                    int start = this.assistNodeInJavadoc > 0 ? this.startPosition : this.endPosition;
                    proposal.setReplaceRange(start - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    if (parameterNames != null) {
                        proposal.setParameterNames(parameterNames);
                    }
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
                if ((this.assistNodeInJavadoc & 4) == 0 || this.requestor.isIgnored(15)) continue;
                char[] javadocCompletion = this.inlineTagCompletion(completion, JavadocTagConstants.TAG_LINK);
                InternalCompletionProposal proposal4 = this.createProposal(15, this.actualCompletionPosition);
                proposal4.setDeclarationSignature(CompletionEngine.getSignature(currentType));
                proposal4.setSignature(CompletionEngine.getSignature(constructor));
                MethodBinding original4 = constructor.original();
                if (original4 != constructor) {
                    proposal4.setOriginalSignature(CompletionEngine.getSignature(original4));
                }
                proposal4.setDeclarationPackageName(currentType.qualifiedPackageName());
                proposal4.setDeclarationTypeName(currentType.qualifiedSourceName());
                proposal4.setParameterPackageNames(parameterPackageNames);
                proposal4.setParameterTypeNames(parameterTypeNames);
                proposal4.setName(currentType.sourceName());
                proposal4.setIsContructor(true);
                proposal4.setCompletion(javadocCompletion);
                proposal4.setFlags(constructor.modifiers);
                int start = (this.assistNodeInJavadoc & 0x20) != 0 ? this.javadocTagPosition : this.startPosition;
                proposal4.setReplaceRange(start - this.offset, this.endPosition - this.offset);
                proposal4.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal4.setRelevance(relevance + 31);
                if (parameterNames != null) {
                    proposal4.setParameterNames(parameterNames);
                }
                this.requestor.accept(proposal4);
                if (!DEBUG) continue;
                this.printDebug(proposal4);
            }
        }
    }

    private char[] getResolvedSignature(char[][] parameterTypes, char[] fullyQualifiedTypeName, int parameterCount, Scope scope) {
        block16: {
            char[][] cn = CharOperation.splitOn('.', fullyQualifiedTypeName);
            TypeReference ref = cn.length == 1 ? new SingleTypeReference(cn[0], 0L) : new QualifiedTypeReference(cn, new long[cn.length]);
            Binding guessedType = null;
            INameEnvironment oldNameEnvironment = this.lookupEnvironment.nameEnvironment;
            this.lookupEnvironment.nameEnvironment = this.getNoCacheNameEnvironment();
            try {
                switch (scope.kind) {
                    case 1: 
                    case 2: {
                        guessedType = ref.resolveType((BlockScope)scope);
                        break;
                    }
                    case 3: {
                        guessedType = ref.resolveType((ClassScope)scope);
                    }
                }
                if (guessedType == null || !guessedType.isValidBinding() || !((guessedType = ((TypeBinding)guessedType).erasure()) instanceof SourceTypeBinding)) break block16;
                SourceTypeBinding refBinding = (SourceTypeBinding)guessedType;
                if (refBinding.scope == null || refBinding.scope.referenceContext == null) {
                    return null;
                }
                TypeDeclaration typeDeclaration = refBinding.scope.referenceContext;
                AbstractMethodDeclaration[] methods = typeDeclaration.methods;
                int i = 0;
                while (i < methods.length) {
                    block17: {
                        AbstractMethodDeclaration method = methods[i];
                        if (method.isConstructor()) {
                            int argumentsLength;
                            Argument[] arguments = method.arguments;
                            int n = argumentsLength = arguments == null ? 0 : arguments.length;
                            if (parameterCount == argumentsLength) {
                                int j = 0;
                                while (j < argumentsLength) {
                                    char[] argumentTypeName = CompletionEngine.getTypeName(arguments[j].type);
                                    if (CharOperation.equals(argumentTypeName, parameterTypes[j])) {
                                        ++j;
                                        continue;
                                    }
                                    break block17;
                                }
                                refBinding.resolveTypesFor(method.binding);
                                if (method.binding != null) {
                                    char[] cArray = CompletionEngine.getSignature(method.binding);
                                    return cArray;
                                }
                            }
                        }
                    }
                    ++i;
                }
            }
            finally {
                this.lookupEnvironment.nameEnvironment = oldNameEnvironment;
            }
        }
        return null;
    }

    private void findConstructorsOrAnonymousTypes(ReferenceBinding currentType, Scope scope, InvocationSite invocationSite, boolean isQualified, int relevance) {
        if (!this.isIgnored(26, 9) && currentType.isClass() && !currentType.isAbstract()) {
            this.findConstructors(currentType, null, scope, invocationSite, false, null, null, null, false, false, isQualified, relevance);
        }
        if (!this.isIgnored(27, 9) && !currentType.isFinal() && (currentType.isInterface() || currentType.isClass() && currentType.isAbstract())) {
            this.findAnonymousType(currentType, null, scope, invocationSite, null, null, null, false, false, isQualified, relevance);
        }
    }

    private char[][] findEnclosingTypeNames(Scope scope) {
        char[][] excludedNames = new char[10][];
        int excludedNameCount = 0;
        Scope currentScope = scope;
        while (currentScope != null) {
            switch (currentScope.kind) {
                case 3: {
                    ClassScope classScope = (ClassScope)currentScope;
                    TypeDeclaration typeDeclaration = classScope.referenceContext;
                    if (excludedNameCount == excludedNames.length) {
                        char[][] cArrayArray = excludedNames;
                        excludedNames = new char[excludedNameCount * 2][];
                        System.arraycopy(cArrayArray, 0, excludedNames, 0, excludedNameCount);
                    }
                    excludedNames[excludedNameCount++] = typeDeclaration.name;
                    TypeParameter[] classTypeParameters = typeDeclaration.typeParameters;
                    if (classTypeParameters == null) break;
                    int i = 0;
                    while (i < classTypeParameters.length) {
                        TypeParameter typeParameter = classTypeParameters[i];
                        if (excludedNameCount == excludedNames.length) {
                            char[][] cArrayArray = excludedNames;
                            excludedNames = new char[excludedNameCount * 2][];
                            System.arraycopy(cArrayArray, 0, excludedNames, 0, excludedNameCount);
                        }
                        excludedNames[excludedNameCount++] = typeParameter.name;
                        ++i;
                    }
                    break;
                }
                case 2: {
                    TypeParameter[] methodTypeParameters;
                    MethodScope methodScope = (MethodScope)currentScope;
                    if (!(methodScope.referenceContext instanceof AbstractMethodDeclaration) || (methodTypeParameters = ((AbstractMethodDeclaration)methodScope.referenceContext).typeParameters()) == null) break;
                    int i = 0;
                    while (i < methodTypeParameters.length) {
                        TypeParameter typeParameter = methodTypeParameters[i];
                        if (excludedNameCount == excludedNames.length) {
                            char[][] cArrayArray = excludedNames;
                            excludedNames = new char[excludedNameCount * 2][];
                            System.arraycopy(cArrayArray, 0, excludedNames, 0, excludedNameCount);
                        }
                        excludedNames[excludedNameCount++] = typeParameter.name;
                        ++i;
                    }
                    break;
                }
            }
            currentScope = currentScope.parent;
        }
        if (excludedNameCount == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] cArrayArray = excludedNames;
        excludedNames = new char[excludedNameCount][];
        System.arraycopy(cArrayArray, 0, excludedNames, 0, excludedNameCount);
        return excludedNames;
    }

    private void findEnumConstants(char[] enumConstantName, ReferenceBinding enumType, Scope invocationScope, ObjectVector fieldsFound, char[][] alreadyUsedConstants, int alreadyUsedConstantCount, boolean needQualification) {
        FieldBinding[] fields = enumType.fields();
        int enumConstantLength = enumConstantName.length;
        int f = fields.length;
        block0: while (--f >= 0) {
            int importStart;
            FieldBinding field = fields[f];
            if (field.isSynthetic() || (field.modifiers & 0x4000) == 0 || enumConstantLength > field.name.length || !CharOperation.prefixEquals(enumConstantName, field.name, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(enumConstantName, field.name))) continue;
            char[] fieldName = field.name;
            int i = 0;
            while (i < alreadyUsedConstantCount) {
                if (CharOperation.equals(alreadyUsedConstants[i], fieldName)) continue block0;
                ++i;
            }
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal(field);
            relevance += this.computeRelevanceForCaseMatching(enumConstantName, field.name);
            relevance += this.computeRelevanceForExpectingType(field.type);
            relevance += this.computeRelevanceForEnumConstant(field.type);
            relevance += this.computeRelevanceForQualification(needQualification);
            relevance += this.computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (!needQualification) {
                char[] completion = fieldName;
                if (this.requestor.isIgnored(2)) continue;
                InternalCompletionProposal proposal = this.createProposal(2, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
                proposal.setSignature(CompletionEngine.getSignature(field.type));
                proposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
                proposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
                proposal.setPackageName(field.type.qualifiedPackageName());
                proposal.setTypeName(field.type.qualifiedSourceName());
                proposal.setName(field.name);
                proposal.setCompletion(completion);
                proposal.setFlags(field.modifiers);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                this.requestor.accept(proposal);
                if (!DEBUG) continue;
                this.printDebug(proposal);
                continue;
            }
            TypeBinding visibleType = invocationScope.getType(field.type.sourceName());
            boolean needImport = visibleType == null || !visibleType.isValidBinding();
            char[] completion = CharOperation.concat(field.type.sourceName(), field.name, '.');
            if (!needImport) {
                if (this.requestor.isIgnored(2)) continue;
                InternalCompletionProposal proposal = this.createProposal(2, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
                proposal.setSignature(CompletionEngine.getSignature(field.type));
                proposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
                proposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
                proposal.setPackageName(field.type.qualifiedPackageName());
                proposal.setTypeName(field.type.qualifiedSourceName());
                proposal.setName(field.name);
                proposal.setCompletion(completion);
                proposal.setFlags(field.modifiers);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                this.requestor.accept(proposal);
                if (!DEBUG) continue;
                this.printDebug(proposal);
                continue;
            }
            if (this.isIgnored(2, 23)) continue;
            CompilationUnitDeclaration cu = this.unitScope.referenceContext;
            int importEnd = importStart = cu.types[0].declarationSourceStart;
            ReferenceBinding fieldType = (ReferenceBinding)field.type;
            InternalCompletionProposal proposal = this.createProposal(2, this.actualCompletionPosition);
            proposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
            proposal.setSignature(CompletionEngine.getSignature(field.type));
            proposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
            proposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
            proposal.setPackageName(field.type.qualifiedPackageName());
            proposal.setTypeName(field.type.qualifiedSourceName());
            proposal.setName(field.name);
            proposal.setCompletion(completion);
            proposal.setFlags(field.modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            char[] typeImportCompletion = this.createImportCharArray(CharOperation.concatWith(fieldType.compoundName, '.'), false, false);
            InternalCompletionProposal typeImportProposal = this.createProposal(23, this.actualCompletionPosition);
            typeImportProposal.nameLookup = this.nameEnvironment.nameLookup;
            typeImportProposal.completionEngine = this;
            char[] packageName = fieldType.qualifiedPackageName();
            typeImportProposal.setDeclarationSignature(packageName);
            typeImportProposal.setSignature(CompletionEngine.getSignature(fieldType));
            typeImportProposal.setPackageName(packageName);
            typeImportProposal.setTypeName(fieldType.qualifiedSourceName());
            typeImportProposal.setCompletion(typeImportCompletion);
            typeImportProposal.setFlags(fieldType.modifiers);
            typeImportProposal.setAdditionalFlags(0);
            typeImportProposal.setReplaceRange(importStart - this.offset, importEnd - this.offset);
            typeImportProposal.setTokenRange(importStart - this.offset, importEnd - this.offset);
            typeImportProposal.setRelevance(relevance);
            proposal.setRequiredProposals(new CompletionProposal[]{typeImportProposal});
            this.requestor.accept(proposal);
            if (!DEBUG) continue;
            this.printDebug(proposal);
        }
    }

    private void findEnumConstantsFromExpectedTypes(char[] token, Scope invocationScope, ObjectVector fieldsFound) {
        int length = this.expectedTypesPtr + 1;
        int i = 0;
        while (i < length) {
            if (this.expectedTypes[i].isEnum()) {
                this.findEnumConstants(token, (ReferenceBinding)this.expectedTypes[i], invocationScope, fieldsFound, CharOperation.NO_CHAR_CHAR, 0, true);
            }
            ++i;
        }
    }

    private void findEnumConstantsFromSwithStatement(char[] enumConstantName, SwitchStatement switchStatement) {
        TypeBinding expressionType = switchStatement.expression.resolvedType;
        if (expressionType != null && expressionType.isEnum()) {
            ReferenceBinding enumType = (ReferenceBinding)expressionType;
            CaseStatement[] cases = switchStatement.cases;
            char[][] alreadyUsedConstants = new char[switchStatement.caseCount][];
            int alreadyUsedConstantCount = 0;
            int i = 0;
            while (i < switchStatement.caseCount) {
                Expression caseExpression = cases[i].constantExpression;
                if (caseExpression instanceof SingleNameReference && caseExpression.resolvedType != null && caseExpression.resolvedType.isEnum()) {
                    alreadyUsedConstants[alreadyUsedConstantCount++] = ((SingleNameReference)cases[i].constantExpression).token;
                }
                ++i;
            }
            this.findEnumConstants(enumConstantName, enumType, null, new ObjectVector(), alreadyUsedConstants, alreadyUsedConstantCount, false);
        }
    }

    /*
     * WARNING - void declaration
     * Enabled aggressive block sorting
     */
    private void findExceptionFromTryStatement(char[] typeName, ReferenceBinding exceptionType, ReferenceBinding receiverType, SourceTypeBinding invocationType, BlockScope scope, ObjectVector typesFound, boolean searchSuperClasses) {
        ReferenceBinding javaLangThrowable;
        if (searchSuperClasses && exceptionType != (javaLangThrowable = scope.getJavaLangThrowable())) {
            ReferenceBinding superClass = exceptionType.superclass();
            while (superClass != null && superClass != javaLangThrowable) {
                this.findExceptionFromTryStatement(typeName, superClass, receiverType, invocationType, scope, typesFound, false);
                superClass = superClass.superclass();
            }
        }
        if (typeName.length > exceptionType.sourceName.length) {
            return;
        }
        if (!(CharOperation.prefixEquals(typeName, exceptionType.sourceName, false) || this.options.camelCaseMatch && CharOperation.camelCaseMatch(typeName, exceptionType.sourceName))) {
            return;
        }
        if (this.options.checkDeprecation && exceptionType.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(exceptionType)) {
            return;
        }
        if (this.options.checkVisibility && (invocationType != null ? (receiverType != null ? !exceptionType.canBeSeenBy(receiverType, invocationType) : !exceptionType.canBeSeenBy(exceptionType, invocationType)) : !exceptionType.canBeSeenBy(this.unitScope.fPackage))) {
            return;
        }
        if (this.isForbidden(exceptionType)) {
            return;
        }
        int j = typesFound.size;
        while (--j >= 0) {
            ReferenceBinding otherType = (ReferenceBinding)typesFound.elementAt(j);
            if (exceptionType == otherType) {
                return;
            }
            if (!CharOperation.equals(exceptionType.sourceName, otherType.sourceName, true)) continue;
            if (exceptionType.enclosingType().isSuperclassOf(otherType.enclosingType())) {
                return;
            }
            if (otherType.enclosingType().isInterface() && exceptionType.enclosingType().implementsInterface(otherType.enclosingType(), true)) {
                return;
            }
            if (!exceptionType.enclosingType().isInterface() || !otherType.enclosingType().implementsInterface(exceptionType.enclosingType(), true)) continue;
            return;
        }
        typesFound.add(exceptionType);
        char[] completionName = exceptionType.sourceName();
        boolean isQualified = false;
        if (!this.insideQualifiedReference) {
            void var14_19;
            isQualified = true;
            char[] memberPackageName = exceptionType.qualifiedPackageName();
            char[] memberTypeName = exceptionType.sourceName();
            char[] memberEnclosingTypeNames = null;
            ReferenceBinding enclosingType = exceptionType.enclosingType();
            if (enclosingType != null) {
                memberEnclosingTypeNames = exceptionType.enclosingType().qualifiedSourceName();
            }
            BlockScope blockScope = scope;
            block7: while (var14_19 != null) {
                switch (var14_19.kind) {
                    case 1: 
                    case 2: {
                        BlockScope blockScope2 = (BlockScope)var14_19;
                        int j2 = 0;
                        int length = blockScope2.subscopeCount;
                        while (j2 < length) {
                            SourceTypeBinding localType;
                            if (blockScope2.subscopes[j2] instanceof ClassScope && (localType = ((ClassScope)blockScope2.subscopes[j2]).referenceContext.binding) == exceptionType) {
                                isQualified = false;
                                break block7;
                            }
                            ++j2;
                        }
                        break;
                    }
                    case 3: {
                        SourceTypeBinding type = ((ClassScope)var14_19).referenceContext.binding;
                        ReferenceBinding[] memberTypes = type.memberTypes();
                        if (memberTypes == null) break;
                        int j3 = 0;
                        while (j3 < memberTypes.length) {
                            if (memberTypes[j3] == exceptionType) {
                                isQualified = false;
                                break block7;
                            }
                            ++j3;
                        }
                        break;
                    }
                    case 4: {
                        SourceTypeBinding[] types = ((CompilationUnitScope)var14_19).topLevelTypes;
                        if (types == null) break block7;
                        int j4 = 0;
                        while (j4 < types.length) {
                            if (types[j4] == exceptionType) {
                                isQualified = false;
                                break block7;
                            }
                            ++j4;
                        }
                        break block7;
                    }
                }
                Scope scope2 = var14_19.parent;
            }
            if (isQualified && this.mustQualifyType(memberPackageName, memberTypeName, memberEnclosingTypeNames, exceptionType.modifiers)) {
                if ((memberPackageName == null || memberPackageName.length == 0) && this.unitScope != null && this.unitScope.fPackage.compoundName != CharOperation.NO_CHAR_CHAR) {
                    return;
                }
            } else {
                isQualified = false;
            }
            if (isQualified) {
                completionName = CharOperation.concat(memberPackageName, CharOperation.concat(memberEnclosingTypeNames, memberTypeName, '.'), '.');
            }
        }
        int relevance = this.computeBaseRelevance();
        relevance += this.computeRelevanceForResolution();
        relevance += this.computeRelevanceForInterestingProposal(exceptionType);
        relevance += this.computeRelevanceForCaseMatching(typeName, exceptionType.sourceName);
        relevance += this.computeRelevanceForExpectingType(exceptionType);
        relevance += this.computeRelevanceForRestrictions(0);
        if (!this.insideQualifiedReference) {
            relevance += this.computeRelevanceForQualification(isQualified);
        }
        relevance += this.computeRelevanceForClass();
        relevance += this.computeRelevanceForException();
        this.noProposal = false;
        if (!this.requestor.isIgnored(9)) {
            this.createTypeProposal(exceptionType, exceptionType.qualifiedSourceName(), 0, completionName, relevance, null, null, null, false);
        }
    }

    private void findExceptionFromTryStatement(char[] typeName, ReferenceBinding receiverType, SourceTypeBinding invocationType, BlockScope scope, ObjectVector typesFound) {
        int i = 0;
        while (i <= this.expectedTypesPtr) {
            ReferenceBinding exceptionType = (ReferenceBinding)this.expectedTypes[i];
            this.findExceptionFromTryStatement(typeName, exceptionType, receiverType, invocationType, scope, typesFound, true);
            ++i;
        }
    }

    private void findExplicitConstructors(char[] name, ReferenceBinding currentType, MethodScope scope, InvocationSite invocationSite) {
        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration)scope.referenceContext;
        MethodBinding enclosingConstructor = constructorDeclaration.binding;
        MethodBinding[] methods = currentType.availableMethods();
        if (methods != null) {
            int f = methods.length;
            while (--f >= 0) {
                MethodBinding constructor = methods[f];
                if (constructor == enclosingConstructor || !constructor.isConstructor() || constructor.isSynthetic() || this.options.checkDeprecation && constructor.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(constructor.declaringClass) || this.options.checkVisibility && !constructor.canBeSeenBy(invocationSite, scope)) continue;
                TypeBinding[] parameters = constructor.parameters;
                int paramLength = parameters.length;
                char[][] parameterPackageNames = new char[paramLength][];
                char[][] parameterTypeNames = new char[paramLength][];
                int i = 0;
                while (i < paramLength) {
                    TypeBinding type = parameters[i];
                    parameterPackageNames[i] = type.qualifiedPackageName();
                    parameterTypeNames[i] = type.qualifiedSourceName();
                    ++i;
                }
                char[][] parameterNames = this.findMethodParameterNames(constructor, parameterTypeNames);
                char[] completion = CharOperation.NO_CHAR;
                completion = this.source != null && this.source.length > this.endPosition && this.source[this.endPosition] == '(' ? name : CharOperation.concat(name, new char[]{'(', ')'});
                int relevance = this.computeBaseRelevance();
                relevance += this.computeRelevanceForResolution();
                relevance += this.computeRelevanceForInterestingProposal();
                relevance += this.computeRelevanceForCaseMatching(this.completionToken, name);
                relevance += this.computeRelevanceForRestrictions(0);
                this.noProposal = false;
                if (this.requestor.isIgnored(6)) continue;
                InternalCompletionProposal proposal = this.createProposal(6, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.getSignature(currentType));
                proposal.setSignature(CompletionEngine.getSignature(constructor));
                MethodBinding original = constructor.original();
                if (original != constructor) {
                    proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                }
                proposal.setDeclarationPackageName(currentType.qualifiedPackageName());
                proposal.setDeclarationTypeName(currentType.qualifiedSourceName());
                proposal.setParameterPackageNames(parameterPackageNames);
                proposal.setParameterTypeNames(parameterTypeNames);
                proposal.setName(name);
                proposal.setIsContructor(true);
                proposal.setCompletion(completion);
                proposal.setFlags(constructor.modifiers);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                if (parameterNames != null) {
                    proposal.setParameterNames(parameterNames);
                }
                this.requestor.accept(proposal);
                if (!DEBUG) continue;
                this.printDebug(proposal);
            }
        }
    }

    private void findFields(char[] fieldName, FieldBinding[] fields, Scope scope, ObjectVector fieldsFound, ObjectVector localsFound, boolean onlyStaticFields, ReferenceBinding receiverType, InvocationSite invocationSite, Scope invocationScope, boolean implicitCall, boolean canBePrefixed, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems, char[] castedReceiver, int receiverStart, int receiverEnd) {
        ObjectVector newFieldsFound = new ObjectVector();
        int fieldBeingCompletedId = -1;
        boolean isFieldBeingCompletedStatic = false;
        int f = fields.length;
        while (--f >= 0) {
            FieldBinding field = fields[f];
            FieldDeclaration fieldDeclaration = field.sourceField();
            ASTNode astNode = this.parser.assistNode;
            if (fieldDeclaration == null || fieldDeclaration.initialization == null || astNode == null) continue;
            if (fieldDeclaration.initialization.sourceEnd > 0) {
                if (fieldDeclaration.initialization.sourceStart > astNode.sourceStart || astNode.sourceEnd > fieldDeclaration.initialization.sourceEnd) continue;
                fieldBeingCompletedId = field.id;
                isFieldBeingCompletedStatic = field.isStatic();
                break;
            }
            CompletionNodeDetector detector = new CompletionNodeDetector(astNode, fieldDeclaration.initialization);
            if (!detector.containsCompletionNode()) continue;
            fieldBeingCompletedId = field.id;
            isFieldBeingCompletedStatic = field.isStatic();
            break;
        }
        int fieldLength = fieldName.length;
        int f2 = fields.length;
        block1: while (--f2 >= 0) {
            int i;
            CompletionProposal[] subProposals;
            InternalCompletionProposal proposal;
            FieldBinding field = fields[f2];
            if (fieldBeingCompletedId >= 0 && field.id >= fieldBeingCompletedId && (!field.isStatic() || isFieldBeingCompletedStatic) || field.isSynthetic() || onlyStaticFields && !field.isStatic() || fieldLength > field.name.length || !CharOperation.prefixEquals(fieldName, field.name, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(fieldName, field.name)) || this.options.checkDeprecation && field.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(field.declaringClass) || this.options.checkVisibility && !field.canBeSeenBy(receiverType, invocationSite, scope) || this.assistNodeIsInsideCase && (!field.isFinal() || !field.isStatic() || (this.assistNodeIsString ? field.type == null || field.type.id != 11 : !(field.type instanceof BaseTypeBinding)))) continue;
            boolean prefixRequired = false;
            int i2 = fieldsFound.size;
            while (--i2 >= 0) {
                Object[] other = (Object[])fieldsFound.elementAt(i2);
                FieldBinding otherField = (FieldBinding)other[0];
                ReferenceBinding otherReceiverType = (ReferenceBinding)other[1];
                if (field == otherField && receiverType == otherReceiverType) continue block1;
                if (!CharOperation.equals(field.name, otherField.name, true)) continue;
                if (field.declaringClass.isSuperclassOf(otherField.declaringClass) || otherField.declaringClass.isInterface() && (field.declaringClass == scope.getJavaLangObject() || field.declaringClass.implementsInterface(otherField.declaringClass, true)) || field.declaringClass.isInterface() && otherField.declaringClass.implementsInterface(field.declaringClass, true) || !canBePrefixed) continue block1;
                prefixRequired = true;
            }
            int l = localsFound.size;
            while (--l >= 0) {
                LocalVariableBinding local = (LocalVariableBinding)localsFound.elementAt(l);
                if (!CharOperation.equals(field.name, local.name, true)) continue;
                SourceTypeBinding declarationType = scope.enclosingSourceType();
                if (declarationType.isAnonymousType() && declarationType != invocationScope.enclosingSourceType() || !canBePrefixed) continue block1;
                prefixRequired = true;
                break;
            }
            newFieldsFound.add(new Object[]{field, receiverType});
            char[] completion = field.name;
            if (prefixRequired || this.options.forceImplicitQualification) {
                char[] prefix = this.computePrefix(scope.enclosingSourceType(), invocationScope.enclosingSourceType(), field.isStatic());
                completion = CharOperation.concat(prefix, completion, '.');
            }
            if (castedReceiver != null) {
                completion = CharOperation.concat(castedReceiver, completion);
            }
            if (this.assistNodeInJavadoc > 0 && invocationSite instanceof CompletionOnJavadocFieldReference) {
                CompletionOnJavadocFieldReference fieldRef = (CompletionOnJavadocFieldReference)invocationSite;
                if (fieldRef.receiver.isThis()) {
                    if (fieldRef.completeInText()) {
                        completion = CharOperation.concat(new char[]{'#'}, field.name);
                    }
                } else if (fieldRef.completeInText()) {
                    TypeReference typeRef;
                    if (fieldRef.receiver instanceof JavadocSingleTypeReference) {
                        typeRef = (JavadocSingleTypeReference)fieldRef.receiver;
                        completion = CharOperation.concat(typeRef.token, field.name, '#');
                    } else if (fieldRef.receiver instanceof JavadocQualifiedTypeReference) {
                        typeRef = (JavadocQualifiedTypeReference)fieldRef.receiver;
                        completion = CharOperation.concat(CharOperation.concatWith(((JavadocQualifiedTypeReference)typeRef).tokens, '.'), field.name, '#');
                    }
                }
            }
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal(field);
            relevance += this.computeRelevanceForCaseMatching(fieldName, field.name);
            relevance += this.computeRelevanceForExpectingType(field.type);
            relevance += this.computeRelevanceForEnumConstant(field.type);
            relevance += this.computeRelevanceForStatic(onlyStaticFields, field.isStatic());
            relevance += this.computeRelevanceForFinal(this.assistNodeIsInsideCase, field.isFinal());
            relevance += this.computeRelevanceForQualification(prefixRequired);
            relevance += this.computeRelevanceForRestrictions(0);
            if (onlyStaticFields && this.insideQualifiedReference) {
                relevance += this.computeRelevanceForInheritance(receiverType, field.declaringClass);
            }
            if (missingElements != null) {
                relevance += this.computeRelevanceForMissingElements(missingElementsHaveProblems);
            }
            this.noProposal = false;
            if (castedReceiver == null) {
                if (!this.isIgnored(2, missingElements != null) && (this.assistNodeInJavadoc & 0x10) == 0) {
                    proposal = this.createProposal(2, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
                    proposal.setSignature(CompletionEngine.getSignature(field.type));
                    proposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
                    proposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
                    proposal.setPackageName(field.type.qualifiedPackageName());
                    proposal.setTypeName(field.type.qualifiedSourceName());
                    proposal.setName(field.name);
                    if (missingElements != null) {
                        subProposals = new CompletionProposal[missingElements.length];
                        i = 0;
                        while (i < missingElements.length) {
                            subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                            ++i;
                        }
                        proposal.setRequiredProposals(subProposals);
                    }
                    proposal.setCompletion(completion);
                    proposal.setFlags(field.modifiers);
                    proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
                if ((this.assistNodeInJavadoc & 4) == 0 || this.requestor.isIgnored(14)) continue;
                char[] javadocCompletion = this.inlineTagCompletion(completion, JavadocTagConstants.TAG_LINK);
                InternalCompletionProposal proposal2 = this.createProposal(14, this.actualCompletionPosition);
                proposal2.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
                proposal2.setSignature(CompletionEngine.getSignature(field.type));
                proposal2.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
                proposal2.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
                proposal2.setPackageName(field.type.qualifiedPackageName());
                proposal2.setTypeName(field.type.qualifiedSourceName());
                proposal2.setName(field.name);
                proposal2.setCompletion(javadocCompletion);
                proposal2.setFlags(field.modifiers);
                int start = (this.assistNodeInJavadoc & 0x20) != 0 ? this.javadocTagPosition : this.startPosition;
                proposal2.setReplaceRange(start - this.offset, this.endPosition - this.offset);
                proposal2.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal2.setRelevance(relevance + 31);
                this.requestor.accept(proposal2);
                if (DEBUG) {
                    this.printDebug(proposal2);
                }
                if (!field.isStatic() || this.requestor.isIgnored(17)) continue;
                javadocCompletion = this.inlineTagCompletion(completion, JavadocTagConstants.TAG_VALUE);
                InternalCompletionProposal valueProposal = this.createProposal(17, this.actualCompletionPosition);
                valueProposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
                valueProposal.setSignature(CompletionEngine.getSignature(field.type));
                valueProposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
                valueProposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
                valueProposal.setPackageName(field.type.qualifiedPackageName());
                valueProposal.setTypeName(field.type.qualifiedSourceName());
                valueProposal.setName(field.name);
                valueProposal.setCompletion(javadocCompletion);
                valueProposal.setFlags(field.modifiers);
                valueProposal.setReplaceRange(start - this.offset, this.endPosition - this.offset);
                valueProposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                valueProposal.setRelevance(relevance + 31);
                this.requestor.accept(valueProposal);
                if (!DEBUG) continue;
                this.printDebug(valueProposal);
                continue;
            }
            if (this.isIgnored(25, missingElements != null)) continue;
            proposal = this.createProposal(25, this.actualCompletionPosition);
            proposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
            proposal.setSignature(CompletionEngine.getSignature(field.type));
            proposal.setReceiverSignature(CompletionEngine.getSignature(receiverType));
            proposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
            proposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
            proposal.setPackageName(field.type.qualifiedPackageName());
            proposal.setTypeName(field.type.qualifiedSourceName());
            proposal.setName(field.name);
            if (missingElements != null) {
                subProposals = new CompletionProposal[missingElements.length];
                i = 0;
                while (i < missingElements.length) {
                    subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                    ++i;
                }
                proposal.setRequiredProposals(subProposals);
            }
            proposal.setCompletion(completion);
            proposal.setFlags(field.modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setReceiverRange(receiverStart - this.offset, receiverEnd - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            this.requestor.accept(proposal);
            if (!DEBUG) continue;
            this.printDebug(proposal);
        }
        fieldsFound.addAll(newFieldsFound);
    }

    private void findFields(char[] fieldName, ReferenceBinding receiverType, Scope scope, ObjectVector fieldsFound, ObjectVector localsFound, boolean onlyStaticFields, InvocationSite invocationSite, Scope invocationScope, boolean implicitCall, boolean canBePrefixed, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems, char[] castedReceiver, int receiverStart, int receiverEnd) {
        boolean notInJavadoc;
        boolean bl = notInJavadoc = this.assistNodeInJavadoc == 0;
        if (fieldName == null && notInJavadoc) {
            return;
        }
        ReferenceBinding currentType = receiverType;
        ReferenceBinding[] interfacesToVisit = null;
        int nextPosition = 0;
        do {
            FieldBinding[] fields;
            ReferenceBinding[] itsInterfaces = currentType.superInterfaces();
            if (notInJavadoc && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                if (interfacesToVisit == null) {
                    interfacesToVisit = itsInterfaces;
                    nextPosition = interfacesToVisit.length;
                } else {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block18: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block18;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
            }
            if ((fields = currentType.availableFields()) != null && fields.length > 0) {
                this.findFields(fieldName, fields, scope, fieldsFound, localsFound, onlyStaticFields, receiverType, invocationSite, invocationScope, implicitCall, canBePrefixed, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, castedReceiver, receiverStart, receiverEnd);
            }
            currentType = currentType.superclass();
        } while (notInJavadoc && currentType != null);
        if (notInJavadoc && interfacesToVisit != null) {
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding[] itsInterfaces;
                ReferenceBinding anInterface = interfacesToVisit[i];
                FieldBinding[] fields = anInterface.availableFields();
                if (fields != null) {
                    this.findFields(fieldName, fields, scope, fieldsFound, localsFound, onlyStaticFields, receiverType, invocationSite, invocationScope, implicitCall, canBePrefixed, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, castedReceiver, receiverStart, receiverEnd);
                }
                if ((itsInterfaces = anInterface.superInterfaces()) != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block19: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block19;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
                ++i;
            }
        }
    }

    protected void findFieldsAndMethods(char[] token, TypeBinding receiverType, Scope scope, ObjectVector fieldsFound, ObjectVector methodsFound, InvocationSite invocationSite, Scope invocationScope, boolean implicitCall, boolean superCall, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems, char[] castedReceiver, int receiverStart, int receiverEnd) {
        boolean proposeMethod;
        boolean proposeField;
        if (token == null) {
            return;
        }
        if (receiverType.isBaseType()) {
            return;
        }
        boolean bl = castedReceiver == null ? !this.isIgnored(2, missingElements != null) : (proposeField = !this.isIgnored(25, missingElements != null));
        boolean bl2 = castedReceiver == null ? !this.isIgnored(6, missingElements != null) : (proposeMethod = !this.isIgnored(24, missingElements != null));
        if (receiverType.isArrayType()) {
            if (proposeField && token.length <= lengthField.length && CharOperation.prefixEquals(token, lengthField, false)) {
                int relevance = this.computeBaseRelevance();
                relevance += this.computeRelevanceForResolution();
                relevance += this.computeRelevanceForInterestingProposal();
                relevance += this.computeRelevanceForCaseMatching(token, lengthField);
                relevance += this.computeRelevanceForExpectingType(TypeBinding.INT);
                relevance += this.computeRelevanceForRestrictions(0);
                if (missingElements != null) {
                    relevance += this.computeRelevanceForMissingElements(missingElementsHaveProblems);
                }
                this.noProposal = false;
                if (castedReceiver == null) {
                    if (!this.isIgnored(2, missingElements != null)) {
                        InternalCompletionProposal proposal = this.createProposal(2, this.actualCompletionPosition);
                        proposal.setDeclarationSignature(CompletionEngine.getSignature(receiverType));
                        proposal.setSignature(INT_SIGNATURE);
                        proposal.setTypeName(INT);
                        proposal.setName(lengthField);
                        if (missingElements != null) {
                            CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                            int i = 0;
                            while (i < missingElements.length) {
                                subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                                ++i;
                            }
                            proposal.setRequiredProposals(subProposals);
                        }
                        proposal.setCompletion(lengthField);
                        proposal.setFlags(1);
                        proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                        proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                        proposal.setRelevance(relevance);
                        this.requestor.accept(proposal);
                        if (DEBUG) {
                            this.printDebug(proposal);
                        }
                    }
                } else {
                    char[] completion = CharOperation.concat(castedReceiver, lengthField);
                    if (!this.isIgnored(25, missingElements != null)) {
                        InternalCompletionProposal proposal = this.createProposal(25, this.actualCompletionPosition);
                        proposal.setDeclarationSignature(CompletionEngine.getSignature(receiverType));
                        proposal.setSignature(INT_SIGNATURE);
                        proposal.setReceiverSignature(CompletionEngine.getSignature(receiverType));
                        proposal.setTypeName(INT);
                        proposal.setName(lengthField);
                        if (missingElements != null) {
                            CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                            int i = 0;
                            while (i < missingElements.length) {
                                subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                                ++i;
                            }
                            proposal.setRequiredProposals(subProposals);
                        }
                        proposal.setCompletion(completion);
                        proposal.setFlags(1);
                        proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                        proposal.setReceiverRange(receiverStart - this.offset, receiverEnd - this.offset);
                        proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                        proposal.setRelevance(relevance);
                        this.requestor.accept(proposal);
                        if (DEBUG) {
                            this.printDebug(proposal);
                        }
                    }
                }
            }
            if (proposeMethod && token.length <= cloneMethod.length && CharOperation.prefixEquals(token, cloneMethod, false)) {
                ReferenceBinding objectRef = scope.getJavaLangObject();
                int relevance = this.computeBaseRelevance();
                relevance += this.computeRelevanceForResolution();
                relevance += this.computeRelevanceForInterestingProposal();
                relevance += this.computeRelevanceForCaseMatching(token, cloneMethod);
                relevance += this.computeRelevanceForExpectingType(objectRef);
                relevance += this.computeRelevanceForStatic(false, false);
                relevance += this.computeRelevanceForQualification(false);
                relevance += this.computeRelevanceForRestrictions(0);
                if (missingElements != null) {
                    relevance += this.computeRelevanceForMissingElements(missingElementsHaveProblems);
                }
                char[] completion = this.source != null && this.source.length > this.endPosition && this.source[this.endPosition] == '(' ? cloneMethod : CharOperation.concat(cloneMethod, new char[]{'(', ')'});
                if (castedReceiver != null) {
                    completion = CharOperation.concat(castedReceiver, completion);
                }
                this.noProposal = false;
                if (castedReceiver == null) {
                    if (!this.isIgnored(6, missingElements != null)) {
                        InternalCompletionProposal proposal = this.createProposal(6, this.actualCompletionPosition);
                        proposal.setDeclarationSignature(CompletionEngine.getSignature(receiverType));
                        proposal.setSignature(this.compilerOptions.sourceLevel > 0x300000L && receiverType.isArrayType() ? CompletionEngine.createMethodSignature(CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR_CHAR, CompletionEngine.getSignature(receiverType)) : CompletionEngine.createMethodSignature(CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR_CHAR, CharOperation.concatWith(JAVA_LANG, '.'), OBJECT));
                        proposal.setPackageName(CharOperation.concatWith(JAVA_LANG, '.'));
                        proposal.setTypeName(OBJECT);
                        proposal.setName(cloneMethod);
                        if (missingElements != null) {
                            CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                            int i = 0;
                            while (i < missingElements.length) {
                                subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                                ++i;
                            }
                            proposal.setRequiredProposals(subProposals);
                        }
                        proposal.setCompletion(completion);
                        proposal.setFlags(1);
                        proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                        proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                        proposal.setRelevance(relevance);
                        this.requestor.accept(proposal);
                        if (DEBUG) {
                            this.printDebug(proposal);
                        }
                    }
                    methodsFound.add(new Object[]{objectRef.getMethods(cloneMethod)[0], objectRef});
                } else if (!this.isIgnored(24, missingElements != null)) {
                    InternalCompletionProposal proposal = this.createProposal(24, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.getSignature(receiverType));
                    proposal.setSignature(this.compilerOptions.sourceLevel > 0x300000L && receiverType.isArrayType() ? CompletionEngine.createMethodSignature(CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR_CHAR, CompletionEngine.getSignature(receiverType)) : CompletionEngine.createMethodSignature(CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR_CHAR, CharOperation.concatWith(JAVA_LANG, '.'), OBJECT));
                    proposal.setReceiverSignature(CompletionEngine.getSignature(receiverType));
                    proposal.setPackageName(CharOperation.concatWith(JAVA_LANG, '.'));
                    proposal.setTypeName(OBJECT);
                    proposal.setName(cloneMethod);
                    if (missingElements != null) {
                        CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                        int i = 0;
                        while (i < missingElements.length) {
                            subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                            ++i;
                        }
                        proposal.setRequiredProposals(subProposals);
                    }
                    proposal.setCompletion(completion);
                    proposal.setFlags(1);
                    proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    proposal.setReceiverRange(receiverStart - this.offset, receiverEnd - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
            }
            receiverType = scope.getJavaLangObject();
        }
        this.checkCancel();
        if (proposeField) {
            this.findFields(token, (ReferenceBinding)receiverType, scope, fieldsFound, new ObjectVector(), false, invocationSite, invocationScope, implicitCall, false, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, castedReceiver, receiverStart, receiverEnd);
        }
        if (proposeMethod) {
            this.findMethods(token, null, null, (ReferenceBinding)receiverType, scope, methodsFound, false, false, invocationSite, invocationScope, implicitCall, superCall, false, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, castedReceiver, receiverStart, receiverEnd);
        }
    }

    protected void findFieldsAndMethodsFromAnotherReceiver(char[] token, TypeReference receiverType, Scope scope, ObjectVector fieldsFound, ObjectVector methodsFound, InvocationSite invocationSite, Scope invocationScope, boolean implicitCall, boolean superCall, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems, char[][] receiverName, int receiverStart, int receiverEnd) {
        if (receiverType.resolvedType == null) {
            return;
        }
        TypeBinding receiverTypeBinding = receiverType.resolvedType;
        char[] castedReceiver = null;
        char[] castedTypeChars = CharOperation.concatWith(receiverType.getTypeName(), '.');
        if (this.source != null) {
            int memberRefStart = this.startPosition;
            char[] receiverChars = CharOperation.subarray(this.source, receiverStart, receiverEnd);
            char[] dotChars = CharOperation.subarray(this.source, receiverEnd, memberRefStart);
            castedReceiver = CharOperation.concat(CharOperation.concat('(', CharOperation.concat(CharOperation.concat('(', castedTypeChars, ')'), receiverChars), ')'), dotChars);
        } else {
            castedReceiver = CharOperation.concat(CharOperation.concat('(', CharOperation.concat(CharOperation.concat('(', castedTypeChars, ')'), CharOperation.concatWith(receiverName, '.')), ')'), DOT);
        }
        if (castedReceiver == null) {
            return;
        }
        int oldStartPosition = this.startPosition;
        this.startPosition = receiverStart;
        this.findFieldsAndMethods(token, receiverTypeBinding, scope, fieldsFound, methodsFound, invocationSite, invocationScope, implicitCall, superCall, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, castedReceiver, receiverStart, receiverEnd);
        this.startPosition = oldStartPosition;
    }

    private void findFieldsAndMethodsFromCastedReceiver(ASTNode enclosingNode, Binding qualifiedBinding, Scope scope, ObjectVector fieldsFound, ObjectVector methodsFound, InvocationSite invocationSite, Scope invocationScope, Expression receiver) {
        if (enclosingNode == null || !(enclosingNode instanceof IfStatement)) {
            return;
        }
        IfStatement ifStatement = (IfStatement)enclosingNode;
        while (true) {
            if (!(ifStatement.condition instanceof InstanceOfExpression)) {
                return;
            }
            InstanceOfExpression instanceOfExpression = (InstanceOfExpression)ifStatement.condition;
            TypeReference instanceOfType = instanceOfExpression.type;
            if (instanceOfType.resolvedType == null) {
                return;
            }
            boolean findFromAnotherReceiver = false;
            Object receiverName = null;
            int receiverStart = -1;
            int receiverEnd = -1;
            if (receiver instanceof QualifiedNameReference) {
                QualifiedNameReference qualifiedNameReference = (QualifiedNameReference)receiver;
                receiverName = qualifiedNameReference.tokens;
                if (((char[][])receiverName).length != 1) {
                    return;
                }
                receiverStart = (int)(qualifiedNameReference.sourcePositions[0] >>> 32);
                receiverEnd = (int)qualifiedNameReference.sourcePositions[qualifiedNameReference.tokens.length - 1] + 1;
                if (instanceOfExpression.expression instanceof SingleNameReference && ((SingleNameReference)instanceOfExpression.expression).binding == qualifiedBinding && (qualifiedBinding instanceof LocalVariableBinding || qualifiedBinding instanceof FieldBinding)) {
                    findFromAnotherReceiver = true;
                }
                if (instanceOfExpression.expression instanceof FieldReference) {
                    FieldReference fieldReference = (FieldReference)instanceOfExpression.expression;
                    if (fieldReference.receiver instanceof ThisReference && qualifiedBinding instanceof FieldBinding && fieldReference.binding == qualifiedBinding) {
                        findFromAnotherReceiver = true;
                    }
                }
            } else if (receiver instanceof FieldReference) {
                FieldReference fieldReference1 = (FieldReference)receiver;
                receiverStart = fieldReference1.sourceStart;
                receiverEnd = fieldReference1.sourceEnd + 1;
                if (fieldReference1.receiver instanceof ThisReference) {
                    receiverName = new char[][]{THIS, fieldReference1.token};
                    if (instanceOfExpression.expression instanceof SingleNameReference && ((SingleNameReference)instanceOfExpression.expression).binding == fieldReference1.binding) {
                        findFromAnotherReceiver = true;
                    }
                    if (instanceOfExpression.expression instanceof FieldReference) {
                        FieldReference fieldReference2 = (FieldReference)instanceOfExpression.expression;
                        if (fieldReference2.receiver instanceof ThisReference && fieldReference2.binding == fieldReference1.binding) {
                            findFromAnotherReceiver = true;
                        }
                    }
                }
            }
            if (findFromAnotherReceiver) {
                TypeBinding receiverTypeBinding = instanceOfType.resolvedType;
                char[] castedReceiver = null;
                char[] castedTypeChars = CharOperation.concatWith(instanceOfType.getTypeName(), '.');
                if (this.source != null) {
                    int memberRefStart = this.startPosition;
                    char[] receiverChars = CharOperation.subarray(this.source, receiverStart, receiverEnd);
                    char[] dotChars = CharOperation.subarray(this.source, receiverEnd, memberRefStart);
                    castedReceiver = CharOperation.concat(CharOperation.concat('(', CharOperation.concat(CharOperation.concat('(', castedTypeChars, ')'), receiverChars), ')'), dotChars);
                } else {
                    castedReceiver = CharOperation.concat(CharOperation.concat('(', CharOperation.concat(CharOperation.concat('(', castedTypeChars, ')'), CharOperation.concatWith(receiverName, '.')), ')'), DOT);
                }
                if (castedReceiver == null) {
                    return;
                }
                int oldStartPosition = this.startPosition;
                this.startPosition = receiverStart;
                this.findFieldsAndMethods(this.completionToken, receiverTypeBinding, scope, fieldsFound, methodsFound, invocationSite, invocationScope, false, false, null, null, null, false, castedReceiver, receiverStart, receiverEnd);
                this.startPosition = oldStartPosition;
            }
            if (!(ifStatement.thenStatement instanceof IfStatement)) break;
            ifStatement = (IfStatement)ifStatement.thenStatement;
        }
    }

    private void findFieldsAndMethodsFromFavorites(char[] token, Scope scope, InvocationSite invocationSite, Scope invocationScope, ObjectVector localsFound, ObjectVector fieldsFound, ObjectVector methodsFound) {
        ObjectVector methodsFoundFromFavorites = new ObjectVector();
        ImportBinding[] favoriteBindings = this.getFavoriteReferenceBindings(invocationScope);
        if (favoriteBindings != null && favoriteBindings.length > 0) {
            int i = 0;
            while (i < favoriteBindings.length) {
                ImportBinding favoriteBinding = favoriteBindings[i];
                switch (favoriteBinding.resolvedImport.kind()) {
                    case 1: {
                        FieldBinding fieldBinding = (FieldBinding)favoriteBinding.resolvedImport;
                        this.findFieldsFromFavorites(token, new FieldBinding[]{fieldBinding}, scope, fieldsFound, localsFound, fieldBinding.declaringClass, invocationSite, invocationScope);
                        break;
                    }
                    case 8: {
                        MethodBinding methodBinding = (MethodBinding)favoriteBinding.resolvedImport;
                        MethodBinding[] methods = methodBinding.declaringClass.availableMethods();
                        long range = ReferenceBinding.binarySearch(methodBinding.selector, methods);
                        if (range >= 0L) {
                            int start = (int)range;
                            int end = (int)(range >> 32);
                            int length = end - start + 1;
                            MethodBinding[] methodBindingArray = methods;
                            methods = new MethodBinding[length];
                            System.arraycopy(methodBindingArray, start, methods, 0, length);
                        } else {
                            methods = Binding.NO_METHODS;
                        }
                        this.findLocalMethodsFromFavorites(token, methods, scope, methodsFound, methodsFoundFromFavorites, methodBinding.declaringClass, invocationSite, invocationScope);
                        break;
                    }
                    case 4: {
                        ReferenceBinding referenceBinding = (ReferenceBinding)favoriteBinding.resolvedImport;
                        if (!favoriteBinding.onDemand) break;
                        this.findFieldsFromFavorites(token, referenceBinding.availableFields(), scope, fieldsFound, localsFound, referenceBinding, invocationSite, invocationScope);
                        this.findLocalMethodsFromFavorites(token, referenceBinding.availableMethods(), scope, methodsFound, methodsFoundFromFavorites, referenceBinding, invocationSite, invocationScope);
                    }
                }
                ++i;
            }
        }
        methodsFound.addAll(methodsFoundFromFavorites);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean findFieldsAndMethodsFromMissingFieldType(char[] token, Scope scope, InvocationSite invocationSite, boolean insideTypeAnnotation) {
        boolean foundSomeFields = false;
        Scope currentScope = scope;
        while (true) {
            switch (currentScope.kind) {
                case 3: {
                    ClassScope classScope = (ClassScope)currentScope;
                    if (!insideTypeAnnotation) {
                        FieldDeclaration[] fields = classScope.referenceContext.fields;
                        int fieldsCount = fields == null ? 0 : fields.length;
                        int i = 0;
                        while (i < fieldsCount) {
                            FieldDeclaration fieldDeclaration = fields[i];
                            if (CharOperation.equals(fieldDeclaration.name, token)) {
                                FieldBinding fieldBinding = fieldDeclaration.binding;
                                if (fieldBinding != null && fieldBinding.type != null) {
                                    if ((fieldBinding.type.tagBits & 0x80L) == 0L) return foundSomeFields;
                                }
                                foundSomeFields = true;
                                this.findFieldsAndMethodsFromMissingType(fieldDeclaration.type, currentScope, invocationSite, scope);
                                return foundSomeFields;
                            }
                            ++i;
                        }
                    }
                    insideTypeAnnotation = false;
                    break;
                }
                case 4: {
                    return foundSomeFields;
                }
            }
            currentScope = currentScope.parent;
        }
    }

    /*
     * Unable to fully structure code
     */
    private void findFieldsAndMethodsFromMissingReturnType(char[] token, TypeBinding[] arguments, Scope scope, InvocationSite invocationSite, boolean insideTypeAnnotation) {
        currentScope = scope;
        block4: while (true) {
            switch (currentScope.kind) {
                case 3: {
                    classScope = (ClassScope)currentScope;
                    if (!insideTypeAnnotation) {
                        methods = classScope.referenceContext.methods;
                        methodsCount = methods == null ? 0 : methods.length;
                        i = 0;
                        while (i < methodsCount) {
                            methodDeclaration = methods[i];
                            if (methodDeclaration instanceof MethodDeclaration && CharOperation.equals(methodDeclaration.selector, token)) {
                                method = (MethodDeclaration)methodDeclaration;
                                methodBinding = method.binding;
                                if (methodBinding == null || methodBinding.returnType == null || (methodBinding.returnType.tagBits & 128L) != 0L) {
                                    parameters = method.arguments;
                                    parametersLength = parameters == null ? 0 : parameters.length;
                                    v0 = argumentsLength = arguments == null ? 0 : arguments.length;
                                    if (parametersLength == 0) {
                                        if (argumentsLength == 0) {
                                            this.findFieldsAndMethodsFromMissingType(method.returnType, currentScope, invocationSite, scope);
                                            break block4;
                                        }
                                    } else {
                                        if (methodBinding == null) {
                                            parametersBindings = new TypeBinding[parametersLength];
                                            j = 0;
                                            while (j < parametersLength) {
                                                parameterType = parameters[j].type.resolvedType;
                                                if (!parameterType.isValidBinding() && parameterType.closestMatch() != null) {
                                                    parameterType = parameterType.closestMatch();
                                                }
                                                parametersBindings[j] = parameterType;
                                                ++j;
                                            }
                                        } else {
                                            parametersBindings = methodBinding.parameters;
                                        }
                                        if (this.areParametersCompatibleWith(parametersBindings, arguments, parameters[parametersLength - 1].isVarArgs())) {
                                            this.findFieldsAndMethodsFromMissingType(method.returnType, currentScope, invocationSite, scope);
                                            break block4;
                                        }
                                    }
                                }
                            }
                            ++i;
                        }
                    }
                    insideTypeAnnotation = false;
                    ** GOTO lbl45
                }
                case 4: {
                    break block4;
                }
lbl45:
                // 2 sources

                default: {
                    currentScope = currentScope.parent;
                    continue block4;
                }
            }
            break;
        }
    }

    private void findFieldsAndMethodsFromMissingType(TypeReference typeRef, final Scope scope, final InvocationSite invocationSite, final Scope invocationScope) {
        MissingTypesGuesser missingTypesConverter = new MissingTypesGuesser(this);
        MissingTypesGuesser.GuessedTypeRequestor substitutionRequestor = new MissingTypesGuesser.GuessedTypeRequestor(){

            public void accept(TypeBinding guessedType, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean hasProblems) {
                CompletionEngine.this.findFieldsAndMethods(CompletionEngine.this.completionToken, guessedType, scope, new ObjectVector(), new ObjectVector(), invocationSite, invocationScope, false, false, missingElements, missingElementsStarts, missingElementsEnds, hasProblems, null, -1, -1);
            }
        };
        missingTypesConverter.guess(typeRef, scope, substitutionRequestor);
    }

    private void findFieldsAndMethodsFromStaticImports(char[] token, Scope scope, InvocationSite invocationSite, Scope invocationScope, boolean exactMatch, boolean insideAnnotationAttribute, ObjectVector localsFound, ObjectVector fieldsFound, ObjectVector methodsFound, boolean proposeField, boolean proposeMethod) {
        ImportBinding[] importBindings = scope.compilationUnitScope().imports;
        int i = 0;
        while (i < importBindings.length) {
            Binding binding;
            ImportBinding importBinding = importBindings[i];
            if (importBinding.isValidBinding() && importBinding.isStatic() && (binding = importBinding.resolvedImport) != null && binding.isValidBinding()) {
                if (importBinding.onDemand) {
                    if ((binding.kind() & 4) != 0) {
                        if (proposeField) {
                            this.findFields(token, (ReferenceBinding)binding, scope, fieldsFound, localsFound, true, invocationSite, invocationScope, true, false, null, null, null, false, null, -1, -1);
                        }
                        if (proposeMethod && !insideAnnotationAttribute) {
                            this.findMethods(token, null, null, (ReferenceBinding)binding, scope, methodsFound, true, exactMatch, invocationSite, invocationScope, true, false, false, null, null, null, false, null, -1, -1);
                        }
                    }
                } else if ((binding.kind() & 1) != 0) {
                    if (proposeField) {
                        this.findFields(token, new FieldBinding[]{(FieldBinding)binding}, scope, fieldsFound, localsFound, true, ((FieldBinding)binding).declaringClass, invocationSite, invocationScope, true, false, null, null, null, false, null, -1, -1);
                    }
                } else if ((binding.kind() & 8) != 0 && proposeMethod && !insideAnnotationAttribute) {
                    MethodBinding methodBinding = (MethodBinding)binding;
                    if (exactMatch && CharOperation.equals(token, methodBinding.selector) || !exactMatch && CharOperation.prefixEquals(token, methodBinding.selector) || this.options.camelCaseMatch && CharOperation.camelCaseMatch(token, methodBinding.selector)) {
                        this.findLocalMethodsFromStaticImports(token, methodBinding.declaringClass.getMethods(methodBinding.selector), scope, exactMatch, methodsFound, methodBinding.declaringClass, invocationSite);
                    }
                }
            }
            ++i;
        }
    }

    private void findFieldsFromFavorites(char[] fieldName, FieldBinding[] fields, Scope scope, ObjectVector fieldsFound, ObjectVector localsFound, ReferenceBinding receiverType, InvocationSite invocationSite, Scope invocationScope) {
        char[] typeName = CharOperation.concatWith(receiverType.compoundName, '.');
        int fieldLength = fieldName.length;
        int f = fields.length;
        block0: while (--f >= 0) {
            InternalCompletionProposal proposal;
            char[] completion;
            int importStart;
            FieldBinding field = fields[f];
            if (field.isSynthetic() || !field.isStatic() || fieldLength > field.name.length || !CharOperation.prefixEquals(fieldName, field.name, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(fieldName, field.name)) || this.options.checkDeprecation && field.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(field.declaringClass) || this.options.checkVisibility && !field.canBeSeenBy(receiverType, invocationSite, scope)) continue;
            int i = fieldsFound.size;
            while (--i >= 0) {
                Object[] other = (Object[])fieldsFound.elementAt(i);
                FieldBinding otherField = (FieldBinding)other[0];
                if (field == otherField) continue block0;
            }
            fieldsFound.add(new Object[]{field, receiverType});
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal(field);
            relevance += this.computeRelevanceForCaseMatching(fieldName, field.name);
            relevance += this.computeRelevanceForExpectingType(field.type);
            relevance += this.computeRelevanceForEnumConstant(field.type);
            relevance += this.computeRelevanceForStatic(true, true);
            relevance += this.computeRelevanceForRestrictions(0);
            CompilationUnitDeclaration cu = this.unitScope.referenceContext;
            int importEnd = importStart = cu.types[0].declarationSourceStart;
            this.noProposal = false;
            if (this.compilerOptions.complianceLevel < 0x310000L || !this.options.suggestStaticImport) {
                if (this.isIgnored(2, 23)) continue;
                completion = CharOperation.concat(receiverType.sourceName, field.name, '.');
                proposal = this.createProposal(2, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
                proposal.setSignature(CompletionEngine.getSignature(field.type));
                proposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
                proposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
                proposal.setPackageName(field.type.qualifiedPackageName());
                proposal.setTypeName(field.type.qualifiedSourceName());
                proposal.setName(field.name);
                proposal.setCompletion(completion);
                proposal.setFlags(field.modifiers);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                char[] typeImportCompletion = this.createImportCharArray(typeName, false, false);
                InternalCompletionProposal typeImportProposal = this.createProposal(23, this.actualCompletionPosition);
                typeImportProposal.nameLookup = this.nameEnvironment.nameLookup;
                typeImportProposal.completionEngine = this;
                char[] packageName = receiverType.qualifiedPackageName();
                typeImportProposal.setDeclarationSignature(packageName);
                typeImportProposal.setSignature(CompletionEngine.getSignature(receiverType));
                typeImportProposal.setPackageName(packageName);
                typeImportProposal.setTypeName(receiverType.qualifiedSourceName());
                typeImportProposal.setCompletion(typeImportCompletion);
                typeImportProposal.setFlags(receiverType.modifiers);
                typeImportProposal.setAdditionalFlags(0);
                typeImportProposal.setReplaceRange(importStart - this.offset, importEnd - this.offset);
                typeImportProposal.setTokenRange(importStart - this.offset, importEnd - this.offset);
                typeImportProposal.setRelevance(relevance);
                proposal.setRequiredProposals(new CompletionProposal[]{typeImportProposal});
                this.requestor.accept(proposal);
                if (!DEBUG) continue;
                this.printDebug(proposal);
                continue;
            }
            if (this.isIgnored(2, 21)) continue;
            completion = field.name;
            proposal = this.createProposal(2, this.actualCompletionPosition);
            proposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
            proposal.setSignature(CompletionEngine.getSignature(field.type));
            proposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
            proposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
            proposal.setPackageName(field.type.qualifiedPackageName());
            proposal.setTypeName(field.type.qualifiedSourceName());
            proposal.setName(field.name);
            proposal.setCompletion(completion);
            proposal.setFlags(field.modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            char[] fieldImportCompletion = this.createImportCharArray(CharOperation.concat(typeName, field.name, '.'), true, false);
            InternalCompletionProposal fieldImportProposal = this.createProposal(21, this.actualCompletionPosition);
            fieldImportProposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
            fieldImportProposal.setSignature(CompletionEngine.getSignature(field.type));
            fieldImportProposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
            fieldImportProposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
            fieldImportProposal.setPackageName(field.type.qualifiedPackageName());
            fieldImportProposal.setTypeName(field.type.qualifiedSourceName());
            fieldImportProposal.setName(field.name);
            fieldImportProposal.setCompletion(fieldImportCompletion);
            fieldImportProposal.setFlags(field.modifiers);
            fieldImportProposal.setAdditionalFlags(1);
            fieldImportProposal.setReplaceRange(importStart - this.offset, importEnd - this.offset);
            fieldImportProposal.setTokenRange(importStart - this.offset, importEnd - this.offset);
            fieldImportProposal.setRelevance(relevance);
            proposal.setRequiredProposals(new CompletionProposal[]{fieldImportProposal});
            this.requestor.accept(proposal);
            if (!DEBUG) continue;
            this.printDebug(proposal);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void findImplicitMessageSends(char[] token, TypeBinding[] argTypes, Scope scope, InvocationSite invocationSite, Scope invocationScope, ObjectVector methodsFound) {
        if (token == null) {
            return;
        }
        boolean staticsOnly = false;
        while (true) {
            switch (scope.kind) {
                case 2: {
                    MethodScope methodScope = (MethodScope)scope;
                    staticsOnly |= methodScope.isStatic | methodScope.isConstructorCall;
                    break;
                }
                case 3: {
                    ClassScope classScope = (ClassScope)scope;
                    SourceTypeBinding enclosingType = classScope.referenceContext.binding;
                    this.findMethods(token, null, argTypes, enclosingType, classScope, methodsFound, staticsOnly, true, invocationSite, invocationScope, true, false, true, null, null, null, false, null, -1, -1);
                    staticsOnly |= enclosingType.isStatic();
                    break;
                }
                case 4: {
                    return;
                }
            }
            scope = scope.parent;
        }
    }

    private void findImports(CompletionOnImportReference importReference, boolean findMembers) {
        char[][] tokens = importReference.tokens;
        char[] importName = CharOperation.concatWith(tokens, '.');
        if (importName.length == 0) {
            return;
        }
        char[] lastToken = tokens[tokens.length - 1];
        if (lastToken != null && lastToken.length == 0) {
            importName = CharOperation.concat(importName, new char[]{'.'});
        }
        this.resolvingImports = true;
        this.resolvingStaticImports = importReference.isStatic();
        this.completionToken = lastToken;
        this.qualifiedCompletionToken = importName;
        if (!this.requestor.isIgnored(8)) {
            int oldStart = this.startPosition;
            int oldEnd = this.endPosition;
            this.setSourceRange(importReference.sourceStart, importReference.declarationSourceEnd);
            this.nameEnvironment.findPackages(importName, this);
            this.setSourceRange(oldStart, oldEnd - 1, false);
        }
        if (!this.requestor.isIgnored(9)) {
            this.foundTypesCount = 0;
            this.nameEnvironment.findTypes(importName, findMembers, this.options.camelCaseMatch, 0, this, this.monitor);
            this.acceptTypes(null);
        }
    }

    private void findImportsOfMemberTypes(char[] typeName, ReferenceBinding ref, boolean onlyStatic) {
        ReferenceBinding[] memberTypes = ref.memberTypes();
        int typeLength = typeName.length;
        int m = memberTypes.length;
        while (--m >= 0) {
            ReferenceBinding memberType = memberTypes[m];
            if (onlyStatic && !memberType.isStatic() || typeLength > memberType.sourceName.length || !CharOperation.prefixEquals(typeName, memberType.sourceName, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(typeName, memberType.sourceName)) || this.options.checkDeprecation && memberType.isViewedAsDeprecated() || this.options.checkVisibility && !memberType.canBeSeenBy(this.unitScope.fPackage)) continue;
            char[] completionName = CharOperation.concat(memberType.sourceName, SEMICOLON);
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForCaseMatching(typeName, memberType.sourceName);
            relevance += this.computeRelevanceForRestrictions(0);
            if (memberType.isClass()) {
                relevance += this.computeRelevanceForClass();
            } else if (memberType.isEnum()) {
                relevance += this.computeRelevanceForEnum();
            } else if (memberType.isInterface()) {
                relevance += this.computeRelevanceForInterface();
            }
            this.noProposal = false;
            if (this.requestor.isIgnored(9)) continue;
            this.createTypeProposal(memberType, memberType.qualifiedSourceName(), 0, completionName, relevance, null, null, null, false);
        }
    }

    private void findImportsOfStaticFields(char[] fieldName, ReferenceBinding ref) {
        FieldBinding[] fields = ref.availableFields();
        int fieldLength = fieldName.length;
        int m = fields.length;
        while (--m >= 0) {
            FieldBinding field = fields[m];
            if (fieldLength > field.name.length || field.isSynthetic() || !field.isStatic() || !CharOperation.prefixEquals(fieldName, field.name, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(fieldName, field.name)) || this.options.checkDeprecation && field.isViewedAsDeprecated() || this.options.checkVisibility && !field.canBeSeenBy(this.unitScope.fPackage)) continue;
            char[] completionName = CharOperation.concat(field.name, SEMICOLON);
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForCaseMatching(fieldName, field.name);
            relevance += this.computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (this.requestor.isIgnored(2)) continue;
            InternalCompletionProposal proposal = this.createProposal(2, this.actualCompletionPosition);
            proposal.setDeclarationSignature(CompletionEngine.getSignature(field.declaringClass));
            proposal.setSignature(CompletionEngine.getSignature(field.type));
            proposal.setDeclarationPackageName(field.declaringClass.qualifiedPackageName());
            proposal.setDeclarationTypeName(field.declaringClass.qualifiedSourceName());
            proposal.setPackageName(field.type.qualifiedPackageName());
            proposal.setTypeName(field.type.qualifiedSourceName());
            proposal.setName(field.name);
            proposal.setCompletion(completionName);
            proposal.setFlags(field.modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            this.requestor.accept(proposal);
            if (!DEBUG) continue;
            this.printDebug(proposal);
        }
    }

    private void findImportsOfStaticMethods(char[] methodName, ReferenceBinding ref) {
        MethodBinding[] methods = ref.availableMethods();
        int methodLength = methodName.length;
        int m = methods.length;
        while (--m >= 0) {
            MethodBinding method = methods[m];
            if (method.isSynthetic() || method.isDefaultAbstract() || method.isConstructor() || !method.isStatic() || this.options.checkDeprecation && method.isViewedAsDeprecated() || this.options.checkVisibility && !method.canBeSeenBy(this.unitScope.fPackage) || methodLength > method.selector.length || !CharOperation.prefixEquals(methodName, method.selector, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(methodName, method.selector))) continue;
            int length = method.parameters.length;
            char[][] parameterPackageNames = new char[length][];
            char[][] parameterTypeNames = new char[length][];
            int i = 0;
            while (i < length) {
                TypeBinding type = method.original().parameters[i];
                parameterPackageNames[i] = type.qualifiedPackageName();
                parameterTypeNames[i] = type.qualifiedSourceName();
                ++i;
            }
            char[][] parameterNames = this.findMethodParameterNames(method, parameterTypeNames);
            char[] completionName = CharOperation.concat(method.selector, SEMICOLON);
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForCaseMatching(methodName, method.selector);
            relevance += this.computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (this.requestor.isIgnored(12)) continue;
            InternalCompletionProposal proposal = this.createProposal(12, this.actualCompletionPosition);
            proposal.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
            proposal.setSignature(CompletionEngine.getSignature(method));
            proposal.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
            proposal.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
            proposal.setParameterPackageNames(parameterPackageNames);
            proposal.setParameterTypeNames(parameterTypeNames);
            proposal.setPackageName(method.returnType.qualifiedPackageName());
            proposal.setTypeName(method.returnType.qualifiedSourceName());
            proposal.setName(method.selector);
            proposal.setCompletion(completionName);
            proposal.setFlags(method.modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            if (parameterNames != null) {
                proposal.setParameterNames(parameterNames);
            }
            this.requestor.accept(proposal);
            if (!DEBUG) continue;
            this.printDebug(proposal);
        }
    }

    private void findInterfacesMethodDeclarations(char[] selector, ReferenceBinding receiverType, ReferenceBinding[] itsInterfaces, Scope scope, ObjectVector methodsFound, Binding[] missingElements, int[] missingElementssStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        if (selector == null) {
            return;
        }
        if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
            ReferenceBinding[] interfacesToVisit = itsInterfaces;
            int nextPosition = interfacesToVisit.length;
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding currentType = interfacesToVisit[i];
                MethodBinding[] methods = currentType.availableMethods();
                if (methods != null) {
                    this.findLocalMethodDeclarations(selector, methods, scope, methodsFound, false, receiverType);
                }
                if ((itsInterfaces = currentType.superInterfaces()) != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block9: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block9;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
                ++i;
            }
        }
    }

    private void findInterfacesMethods(char[] selector, TypeBinding[] typeArgTypes, TypeBinding[] argTypes, ReferenceBinding receiverType, ReferenceBinding[] itsInterfaces, Scope scope, ObjectVector methodsFound, boolean onlyStaticMethods, boolean exactMatch, InvocationSite invocationSite, Scope invocationScope, boolean implicitCall, boolean superCall, boolean canBePrefixed, Binding[] missingElements, int[] missingElementssStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems, char[] castedReceiver, int receiverStart, int receiverEnd) {
        if (selector == null) {
            return;
        }
        if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
            ReferenceBinding[] interfacesToVisit = itsInterfaces;
            int nextPosition = interfacesToVisit.length;
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding currentType = interfacesToVisit[i];
                MethodBinding[] methods = currentType.availableMethods();
                if (methods != null) {
                    this.findLocalMethods(selector, typeArgTypes, argTypes, methods, scope, methodsFound, onlyStaticMethods, exactMatch, receiverType, invocationSite, invocationScope, implicitCall, superCall, canBePrefixed, missingElements, missingElementssStarts, missingElementsEnds, missingElementsHaveProblems, castedReceiver, receiverStart, receiverEnd);
                }
                if ((itsInterfaces = currentType.superInterfaces()) != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block9: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block9;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
                ++i;
            }
        }
    }

    private void findJavadocBlockTags(CompletionOnJavadocTag javadocTag) {
        char[][] possibleTags = javadocTag.getPossibleBlockTags();
        if (possibleTags == null) {
            return;
        }
        int length = possibleTags.length;
        int i = 0;
        while (i < length) {
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (!this.requestor.isIgnored(19)) {
                char[] possibleTag = possibleTags[i];
                InternalCompletionProposal proposal = this.createProposal(19, this.actualCompletionPosition);
                proposal.setName(possibleTag);
                int tagLength = possibleTag.length;
                char[] completion = new char[1 + tagLength];
                completion[0] = 64;
                System.arraycopy(possibleTag, 0, completion, 1, tagLength);
                proposal.setCompletion(completion);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                this.requestor.accept(proposal);
                if (DEBUG) {
                    this.printDebug(proposal);
                }
            }
            ++i;
        }
    }

    private void findJavadocInlineTags(CompletionOnJavadocTag javadocTag) {
        char[][] possibleTags = javadocTag.getPossibleInlineTags();
        if (possibleTags == null) {
            return;
        }
        int length = possibleTags.length;
        int i = 0;
        while (i < length) {
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (!this.requestor.isIgnored(20)) {
                char[] possibleTag = possibleTags[i];
                InternalCompletionProposal proposal = this.createProposal(20, this.actualCompletionPosition);
                proposal.setName(possibleTag);
                int tagLength = possibleTag.length;
                char[] completion = new char[2 + tagLength + 1];
                completion[0] = 123;
                completion[1] = 64;
                System.arraycopy(possibleTag, 0, completion, 2, tagLength);
                completion[tagLength + 2] = 125;
                proposal.setCompletion(completion);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                this.requestor.accept(proposal);
                if (DEBUG) {
                    this.printDebug(proposal);
                }
            }
            ++i;
        }
    }

    private void findJavadocParamNames(char[] token, char[][] missingParams, boolean isTypeParam) {
        if (missingParams == null) {
            return;
        }
        int relevance = this.computeBaseRelevance();
        relevance += this.computeRelevanceForInterestingProposal();
        relevance += this.computeRelevanceForRestrictions(0);
        if (!isTypeParam) {
            relevance += 5;
        }
        int length = missingParams.length;
        relevance += length;
        int i = 0;
        while (i < length) {
            char[] argName = missingParams[i];
            if (token == null || CharOperation.prefixEquals(token, argName)) {
                this.noProposal = false;
                if (!this.requestor.isIgnored(18)) {
                    InternalCompletionProposal proposal = this.createProposal(18, this.actualCompletionPosition);
                    proposal.setName(argName);
                    char[] completion = isTypeParam ? CharOperation.concat('<', argName, '>') : argName;
                    proposal.setCompletion(completion);
                    proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(--relevance);
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
            }
            ++i;
        }
    }

    private void findKeywords(char[] keyword, char[][] choices, boolean canCompleteEmptyToken, boolean staticFieldsAndMethodOnly) {
        if (choices == null || choices.length == 0) {
            return;
        }
        int length = keyword.length;
        if (canCompleteEmptyToken || length > 0) {
            int i = 0;
            while (i < choices.length) {
                if (length <= choices[i].length && CharOperation.prefixEquals(keyword, choices[i], false)) {
                    int relevance = this.computeBaseRelevance();
                    relevance += this.computeRelevanceForResolution();
                    relevance += this.computeRelevanceForInterestingProposal();
                    relevance += this.computeRelevanceForCaseMatching(keyword, choices[i]);
                    relevance += this.computeRelevanceForRestrictions(0);
                    if (staticFieldsAndMethodOnly && this.insideQualifiedReference) {
                        relevance += 2;
                    }
                    if (CharOperation.equals(choices[i], Keywords.TRUE) || CharOperation.equals(choices[i], Keywords.FALSE)) {
                        relevance += this.computeRelevanceForExpectingType(TypeBinding.BOOLEAN);
                        relevance += this.computeRelevanceForQualification(false);
                    }
                    this.noProposal = false;
                    if (!this.requestor.isIgnored(3)) {
                        InternalCompletionProposal proposal = this.createProposal(3, this.actualCompletionPosition);
                        proposal.setName(choices[i]);
                        proposal.setCompletion(choices[i]);
                        proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                        proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                        proposal.setRelevance(relevance);
                        this.requestor.accept(proposal);
                        if (DEBUG) {
                            this.printDebug(proposal);
                        }
                    }
                }
                ++i;
            }
        }
    }

    private void findKeywordsForMember(char[] token, int modifiers) {
        char[][] keywords = new char[41][];
        int count = 0;
        if ((modifiers & 2) == 0 && (modifiers & 4) == 0 && (modifiers & 1) == 0) {
            keywords[count++] = Keywords.PROTECTED;
            keywords[count++] = Keywords.PUBLIC;
            if ((modifiers & 0x400) == 0) {
                keywords[count++] = Keywords.PRIVATE;
            }
        }
        if ((modifiers & 0x400) == 0) {
            if ((modifiers & 0xFFFFFFF0) == 0) {
                keywords[count++] = Keywords.ABSTRACT;
            }
            if ((modifiers & 0x10) == 0) {
                keywords[count++] = Keywords.FINAL;
            }
            if ((modifiers & 8) == 0) {
                keywords[count++] = Keywords.STATIC;
            }
            boolean canBeField = true;
            boolean canBeMethod = true;
            boolean canBeType = true;
            if ((modifiers & 0x100) != 0 || (modifiers & 0x800) != 0 || (modifiers & 0x20) != 0) {
                canBeField = false;
                canBeType = false;
            }
            if ((modifiers & 0x80) != 0 || (modifiers & 0x40) != 0) {
                canBeMethod = false;
                canBeType = false;
            }
            if (canBeField) {
                if ((modifiers & 0x80) == 0) {
                    keywords[count++] = Keywords.TRANSIENT;
                }
                if ((modifiers & 0x40) == 0) {
                    keywords[count++] = Keywords.VOLATILE;
                }
            }
            if (canBeMethod) {
                if ((modifiers & 0x100) == 0) {
                    keywords[count++] = Keywords.NATIVE;
                }
                if ((modifiers & 0x800) == 0) {
                    keywords[count++] = Keywords.STRICTFP;
                }
                if ((modifiers & 0x20) == 0) {
                    keywords[count++] = Keywords.SYNCHRONIZED;
                }
            }
            if (canBeType) {
                keywords[count++] = Keywords.CLASS;
                keywords[count++] = Keywords.INTERFACE;
                if ((modifiers & 0x10) == 0) {
                    keywords[count++] = Keywords.ENUM;
                }
            }
        } else {
            keywords[count++] = Keywords.CLASS;
            keywords[count++] = Keywords.INTERFACE;
        }
        char[][] cArrayArray = keywords;
        keywords = new char[count][];
        System.arraycopy(cArrayArray, 0, keywords, 0, count);
        this.findKeywords(token, keywords, false, false);
    }

    private void findLabels(char[] label, char[][] choices) {
        if (choices == null || choices.length == 0) {
            return;
        }
        int length = label.length;
        int i = 0;
        while (i < choices.length) {
            if (length <= choices[i].length && CharOperation.prefixEquals(label, choices[i], false)) {
                int relevance = this.computeBaseRelevance();
                relevance += this.computeRelevanceForResolution();
                relevance += this.computeRelevanceForInterestingProposal();
                relevance += this.computeRelevanceForCaseMatching(label, choices[i]);
                relevance += this.computeRelevanceForRestrictions(0);
                this.noProposal = false;
                if (!this.requestor.isIgnored(4)) {
                    InternalCompletionProposal proposal = this.createProposal(4, this.actualCompletionPosition);
                    proposal.setName(choices[i]);
                    proposal.setCompletion(choices[i]);
                    proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
            }
            ++i;
        }
    }

    private void findLocalMethodDeclarations(char[] methodName, MethodBinding[] methods, Scope scope, ObjectVector methodsFound, boolean exactMatch, ReferenceBinding receiverType) {
        ObjectVector newMethodsFound = new ObjectVector();
        int methodLength = methodName.length;
        int f = methods.length;
        block0: while (--f >= 0) {
            char[][] excludedNames;
            char[][] substituedParameterNames;
            MethodBinding method = methods[f];
            if (method.isSynthetic() || method.isDefaultAbstract() || method.isConstructor()) continue;
            if (method.isFinal()) {
                newMethodsFound.add(method);
                continue;
            }
            if (this.options.checkDeprecation && method.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(method.declaringClass) || method.isStatic() || !method.canBeSeenBy(receiverType, FakeInvocationSite, scope) || (exactMatch ? !CharOperation.equals(methodName, method.selector, false) : methodLength > method.selector.length || !CharOperation.prefixEquals(methodName, method.selector, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(methodName, method.selector)))) continue;
            int i = methodsFound.size;
            while (--i >= 0) {
                MethodBinding otherMethod = (MethodBinding)methodsFound.elementAt(i);
                if (method == otherMethod || CharOperation.equals(method.selector, otherMethod.selector, true) && this.lookupEnvironment.methodVerifier().isMethodSubsignature(otherMethod, method)) continue block0;
            }
            newMethodsFound.add(method);
            int length = method.parameters.length;
            char[][] parameterPackageNames = new char[length][];
            char[][] parameterFullTypeNames = new char[length][];
            int i2 = 0;
            while (i2 < length) {
                TypeBinding type = method.parameters[i2];
                parameterPackageNames[i2] = type.qualifiedPackageName();
                parameterFullTypeNames[i2] = type.qualifiedSourceName();
                ++i2;
            }
            char[][] parameterNames = this.findMethodParameterNames(method, parameterFullTypeNames);
            if (method.typeVariables != null && method.typeVariables.length > 0 && (substituedParameterNames = this.substituteMethodTypeParameterNames(method.typeVariables, excludedNames = this.findEnclosingTypeNames(scope))) != null) {
                method = new ParameterizedMethodBinding(method.declaringClass, method, substituedParameterNames, scope.environment());
            }
            StringBuffer completion = new StringBuffer(10);
            if (!exactMatch) {
                this.createMethod(method, parameterPackageNames, parameterFullTypeNames, parameterNames, scope, completion);
            }
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForCaseMatching(methodName, method.selector);
            relevance += 3;
            if (method.isAbstract()) {
                relevance += 20;
            }
            relevance += this.computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (this.requestor.isIgnored(7)) continue;
            InternalCompletionProposal proposal = this.createProposal(7, this.actualCompletionPosition);
            proposal.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
            proposal.setDeclarationKey(method.declaringClass.computeUniqueKey());
            proposal.setSignature(CompletionEngine.getSignature(method));
            MethodBinding original = method.original();
            if (original != method) {
                proposal.setOriginalSignature(CompletionEngine.getSignature(original));
            }
            proposal.setKey(method.computeUniqueKey());
            proposal.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
            proposal.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
            proposal.setParameterPackageNames(parameterPackageNames);
            proposal.setParameterTypeNames(parameterFullTypeNames);
            proposal.setPackageName(method.returnType.qualifiedPackageName());
            proposal.setTypeName(method.returnType.qualifiedSourceName());
            proposal.setCompletion(completion.toString().toCharArray());
            proposal.setName(method.selector);
            proposal.setFlags(method.modifiers);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            if (parameterNames != null) {
                proposal.setParameterNames(parameterNames);
            }
            this.requestor.accept(proposal);
            if (!DEBUG) continue;
            this.printDebug(proposal);
        }
        methodsFound.addAll(newMethodsFound);
    }

    private void findLocalMethods(char[] methodName, TypeBinding[] typeArgTypes, TypeBinding[] argTypes, MethodBinding[] methods, Scope scope, ObjectVector methodsFound, boolean onlyStaticMethods, boolean exactMatch, ReferenceBinding receiverType, InvocationSite invocationSite, Scope invocationScope, boolean implicitCall, boolean superCall, boolean canBePrefixed, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems, char[] castedReceiver, int receiverStart, int receiverEnd) {
        ObjectVector newMethodsFound = new ObjectVector();
        int methodLength = methodName.length;
        int minTypeArgLength = typeArgTypes == null ? 0 : typeArgTypes.length;
        int minArgLength = argTypes == null ? 0 : argTypes.length;
        int f = methods.length;
        block0: while (--f >= 0) {
            int i;
            InternalCompletionProposal proposal;
            Object javadocCompletion;
            MethodBinding method = methods[f];
            if (method.isSynthetic() || method.isDefaultAbstract() || method.isConstructor() || this.options.checkDeprecation && method.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(method.declaringClass) || onlyStaticMethods && !method.isStatic() || this.options.checkVisibility && !method.canBeSeenBy(receiverType, invocationSite, scope)) continue;
            if (superCall && method.isAbstract()) {
                methodsFound.add(new Object[]{method, receiverType});
                continue;
            }
            if (!exactMatch ? methodLength > method.selector.length || !CharOperation.prefixEquals(methodName, method.selector, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(methodName, method.selector)) : !CharOperation.equals(methodName, method.selector, false)) continue;
            if (minTypeArgLength != 0 && minTypeArgLength != method.typeVariables.length) continue;
            if (minTypeArgLength != 0) {
                method = scope.environment().createParameterizedGenericMethod(method, typeArgTypes);
            }
            if (minArgLength > method.parameters.length) continue;
            int a = minArgLength;
            while (--a >= 0) {
                if (argTypes[a] != null && !argTypes[a].isCompatibleWith(method.parameters[a])) continue block0;
            }
            boolean prefixRequired = false;
            int i2 = methodsFound.size;
            while (--i2 >= 0) {
                Object[] other = (Object[])methodsFound.elementAt(i2);
                MethodBinding otherMethod = (MethodBinding)other[0];
                ReferenceBinding otherReceiverType = (ReferenceBinding)other[1];
                if (method == otherMethod && receiverType == otherReceiverType) continue block0;
                if (!CharOperation.equals(method.selector, otherMethod.selector, true)) continue;
                if (receiverType == otherReceiverType) {
                    if (!this.lookupEnvironment.methodVerifier().isMethodSubsignature(otherMethod, method) || superCall && otherMethod.declaringClass.isInterface()) continue;
                    continue block0;
                }
                if (!this.lookupEnvironment.methodVerifier().isMethodSubsignature(otherMethod, method)) continue;
                if (receiverType.isAnonymousType()) continue block0;
                if (superCall) continue;
                if (!canBePrefixed) continue block0;
                prefixRequired = true;
            }
            newMethodsFound.add(new Object[]{method, receiverType});
            ReferenceBinding superTypeWithSameErasure = (ReferenceBinding)receiverType.findSuperTypeOriginatingFrom(method.declaringClass);
            if (method.declaringClass != superTypeWithSameErasure) {
                MethodBinding[] otherMethods = superTypeWithSameErasure.getMethods(method.selector);
                int i3 = 0;
                while (i3 < otherMethods.length) {
                    if (otherMethods[i3].original() == method.original()) {
                        method = otherMethods[i3];
                    }
                    ++i3;
                }
            }
            int length = method.parameters.length;
            char[][] parameterPackageNames = new char[length][];
            char[][] parameterTypeNames = new char[length][];
            int i4 = 0;
            while (i4 < length) {
                TypeBinding type = method.original().parameters[i4];
                parameterPackageNames[i4] = type.qualifiedPackageName();
                parameterTypeNames[i4] = type.qualifiedSourceName();
                ++i4;
            }
            char[][] parameterNames = this.findMethodParameterNames(method, parameterTypeNames);
            char[] completion = CharOperation.NO_CHAR;
            int previousStartPosition = this.startPosition;
            int previousTokenStart = this.tokenStart;
            if (this.assistNodeInJavadoc > 0) {
                Expression receiver = null;
                if (invocationSite instanceof CompletionOnJavadocMessageSend) {
                    CompletionOnJavadocMessageSend msg = (CompletionOnJavadocMessageSend)invocationSite;
                    receiver = msg.receiver;
                } else if (invocationSite instanceof CompletionOnJavadocFieldReference) {
                    CompletionOnJavadocFieldReference fieldRef = (CompletionOnJavadocFieldReference)invocationSite;
                    receiver = fieldRef.receiver;
                }
                if (receiver != null) {
                    javadocCompletion = new StringBuffer();
                    if (receiver.isThis()) {
                        if ((this.assistNodeInJavadoc & 4) != 0) {
                            ((StringBuffer)javadocCompletion).append('#');
                        }
                    } else if ((this.assistNodeInJavadoc & 4) != 0) {
                        if (receiver instanceof JavadocSingleTypeReference) {
                            JavadocSingleTypeReference typeRef = (JavadocSingleTypeReference)receiver;
                            ((StringBuffer)javadocCompletion).append(typeRef.token);
                            ((StringBuffer)javadocCompletion).append('#');
                        } else if (receiver instanceof JavadocQualifiedTypeReference) {
                            JavadocQualifiedTypeReference typeRef = (JavadocQualifiedTypeReference)receiver;
                            completion = CharOperation.concat(CharOperation.concatWith(typeRef.tokens, '.'), method.selector, '#');
                            int t = 0;
                            int nt = typeRef.tokens.length;
                            while (t < nt) {
                                if (t > 0) {
                                    ((StringBuffer)javadocCompletion).append('.');
                                }
                                ((StringBuffer)javadocCompletion).append(typeRef.tokens[t]);
                                ++t;
                            }
                            ((StringBuffer)javadocCompletion).append('#');
                        }
                    }
                    ((StringBuffer)javadocCompletion).append(method.selector);
                    ((StringBuffer)javadocCompletion).append('(');
                    if (method.parameters != null) {
                        boolean isVarargs = method.isVarargs();
                        int p = 0;
                        int ln = method.parameters.length;
                        while (p < ln) {
                            if (p > 0) {
                                ((StringBuffer)javadocCompletion).append(", ");
                            }
                            TypeBinding argTypeBinding = method.parameters[p];
                            if (isVarargs && p == ln - 1) {
                                this.createVargsType(argTypeBinding.erasure(), scope, (StringBuffer)javadocCompletion);
                            } else {
                                this.createType(argTypeBinding.erasure(), scope, (StringBuffer)javadocCompletion);
                            }
                            ++p;
                        }
                    }
                    ((StringBuffer)javadocCompletion).append(')');
                    completion = ((StringBuffer)javadocCompletion).toString().toCharArray();
                }
            } else {
                if (!exactMatch) {
                    completion = this.source != null && this.source.length > this.endPosition && this.source[this.endPosition] == '(' ? method.selector : CharOperation.concat(method.selector, new char[]{'(', ')'});
                    if (castedReceiver != null) {
                        completion = CharOperation.concat(castedReceiver, completion);
                    }
                } else {
                    if (prefixRequired && this.source != null) {
                        completion = CharOperation.subarray(this.source, this.startPosition, this.endPosition);
                    } else {
                        this.startPosition = this.endPosition;
                    }
                    this.tokenStart = this.tokenEnd;
                }
                if (prefixRequired || this.options.forceImplicitQualification) {
                    char[] prefix = this.computePrefix(scope.enclosingSourceType(), invocationScope.enclosingSourceType(), method.isStatic());
                    completion = CharOperation.concat(prefix, completion, '.');
                }
            }
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForCaseMatching(methodName, method.selector);
            relevance += this.computeRelevanceForExpectingType(method.returnType);
            relevance += this.computeRelevanceForEnumConstant(method.returnType);
            relevance += this.computeRelevanceForStatic(onlyStaticMethods, method.isStatic());
            relevance += this.computeRelevanceForQualification(prefixRequired);
            relevance += this.computeRelevanceForRestrictions(0);
            if (onlyStaticMethods && this.insideQualifiedReference) {
                relevance += this.computeRelevanceForInheritance(receiverType, method.declaringClass);
            }
            if (missingElements != null) {
                relevance += this.computeRelevanceForMissingElements(missingElementsHaveProblems);
            }
            this.noProposal = false;
            if (castedReceiver == null) {
                if (!this.isIgnored(6, missingElements != null) && (this.assistNodeInJavadoc & 0x10) == 0) {
                    proposal = this.createProposal(6, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
                    proposal.setSignature(CompletionEngine.getSignature(method));
                    MethodBinding original = method.original();
                    if (original != method) {
                        proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                    }
                    proposal.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
                    proposal.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
                    proposal.setParameterPackageNames(parameterPackageNames);
                    proposal.setParameterTypeNames(parameterTypeNames);
                    proposal.setPackageName(method.returnType.qualifiedPackageName());
                    proposal.setTypeName(method.returnType.qualifiedSourceName());
                    proposal.setName(method.selector);
                    if (missingElements != null) {
                        CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                        i = 0;
                        while (i < missingElements.length) {
                            subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                            ++i;
                        }
                        proposal.setRequiredProposals(subProposals);
                    }
                    proposal.setCompletion(completion);
                    proposal.setFlags(method.modifiers);
                    proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    if (parameterNames != null) {
                        proposal.setParameterNames(parameterNames);
                    }
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
                if ((this.assistNodeInJavadoc & 4) != 0 && !this.requestor.isIgnored(15)) {
                    javadocCompletion = this.inlineTagCompletion(completion, JavadocTagConstants.TAG_LINK);
                    InternalCompletionProposal proposal2 = this.createProposal(15, this.actualCompletionPosition);
                    proposal2.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
                    proposal2.setSignature(CompletionEngine.getSignature(method));
                    MethodBinding original = method.original();
                    if (original != method) {
                        proposal2.setOriginalSignature(CompletionEngine.getSignature(original));
                    }
                    proposal2.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
                    proposal2.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
                    proposal2.setParameterPackageNames(parameterPackageNames);
                    proposal2.setParameterTypeNames(parameterTypeNames);
                    proposal2.setPackageName(method.returnType.qualifiedPackageName());
                    proposal2.setTypeName(method.returnType.qualifiedSourceName());
                    proposal2.setName(method.selector);
                    proposal2.setCompletion((char[])javadocCompletion);
                    proposal2.setFlags(method.modifiers);
                    int start = (this.assistNodeInJavadoc & 0x20) != 0 ? this.javadocTagPosition : this.startPosition;
                    proposal2.setReplaceRange(start - this.offset, this.endPosition - this.offset);
                    proposal2.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal2.setRelevance(relevance + 31);
                    if (parameterNames != null) {
                        proposal2.setParameterNames(parameterNames);
                    }
                    this.requestor.accept(proposal2);
                    if (DEBUG) {
                        this.printDebug(proposal2);
                    }
                }
            } else if (!this.isIgnored(24, missingElements != null)) {
                proposal = this.createProposal(24, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
                proposal.setSignature(CompletionEngine.getSignature(method));
                MethodBinding original = method.original();
                if (original != method) {
                    proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                }
                proposal.setReceiverSignature(CompletionEngine.getSignature(receiverType));
                proposal.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
                proposal.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
                proposal.setParameterPackageNames(parameterPackageNames);
                proposal.setParameterTypeNames(parameterTypeNames);
                proposal.setPackageName(method.returnType.qualifiedPackageName());
                proposal.setTypeName(method.returnType.qualifiedSourceName());
                proposal.setName(method.selector);
                if (missingElements != null) {
                    CompletionProposal[] subProposals = new CompletionProposal[missingElements.length];
                    i = 0;
                    while (i < missingElements.length) {
                        subProposals[i] = this.createRequiredTypeProposal(missingElements[i], missingElementsStarts[i], missingElementsEnds[i], relevance);
                        ++i;
                    }
                    proposal.setRequiredProposals(subProposals);
                }
                proposal.setCompletion(completion);
                proposal.setFlags(method.modifiers);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setReceiverRange(receiverStart - this.offset, receiverEnd - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                if (parameterNames != null) {
                    proposal.setParameterNames(parameterNames);
                }
                this.requestor.accept(proposal);
                if (DEBUG) {
                    this.printDebug(proposal);
                }
            }
            this.startPosition = previousStartPosition;
            this.tokenStart = previousTokenStart;
        }
        methodsFound.addAll(newMethodsFound);
    }

    private void findLocalMethodsFromFavorites(char[] methodName, MethodBinding[] methods, Scope scope, ObjectVector methodsFound, ObjectVector methodsFoundFromFavorites, ReferenceBinding receiverType, InvocationSite invocationSite, Scope invocationScope) {
        char[] typeName = CharOperation.concatWith(receiverType.compoundName, '.');
        int methodLength = methodName.length;
        int f = methods.length;
        block0: while (--f >= 0) {
            MethodBinding original;
            InternalCompletionProposal proposal;
            int importStart;
            MethodBinding otherMethod;
            Object[] other;
            MethodBinding method = methods[f];
            if (method.isSynthetic() || method.isDefaultAbstract() || method.isConstructor() || this.options.checkDeprecation && method.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(method.declaringClass) || !method.isStatic() || this.options.checkVisibility && !method.canBeSeenBy(receiverType, invocationSite, scope) || methodLength > method.selector.length || !CharOperation.prefixEquals(methodName, method.selector, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(methodName, method.selector))) continue;
            int i = methodsFoundFromFavorites.size;
            while (--i >= 0) {
                other = (Object[])methodsFoundFromFavorites.elementAt(i);
                otherMethod = (MethodBinding)other[0];
                if (method == otherMethod || CharOperation.equals(method.selector, otherMethod.selector, true) && otherMethod.declaringClass == method.declaringClass && this.lookupEnvironment.methodVerifier().isMethodSubsignature(otherMethod, method)) continue block0;
            }
            i = methodsFound.size;
            while (--i >= 0) {
                other = (Object[])methodsFound.elementAt(i);
                otherMethod = (MethodBinding)other[0];
                if (method == otherMethod || CharOperation.equals(method.selector, otherMethod.selector, true) && this.lookupEnvironment.methodVerifier().isMethodSubsignature(otherMethod, method)) continue block0;
            }
            boolean proposeStaticImport = this.compilerOptions.complianceLevel >= 0x310000L && this.options.suggestStaticImport;
            boolean isAlreadyImported = false;
            if (!proposeStaticImport) {
                if (!this.importCachesInitialized) {
                    this.initializeImportCaches();
                }
                int j = 0;
                while (j < this.importCacheCount) {
                    char[][] importName = this.importsCache[j];
                    if (CharOperation.equals(receiverType.sourceName, importName[0])) {
                        if (!CharOperation.equals(typeName, importName[1])) continue block0;
                        isAlreadyImported = true;
                    }
                    ++j;
                }
            }
            methodsFoundFromFavorites.add(new Object[]{method, receiverType});
            ReferenceBinding superTypeWithSameErasure = (ReferenceBinding)receiverType.findSuperTypeOriginatingFrom(method.declaringClass);
            if (method.declaringClass != superTypeWithSameErasure) {
                MethodBinding[] otherMethods = superTypeWithSameErasure.getMethods(method.selector);
                int i2 = 0;
                while (i2 < otherMethods.length) {
                    if (otherMethods[i2].original() == method.original()) {
                        method = otherMethods[i2];
                    }
                    ++i2;
                }
            }
            int length = method.parameters.length;
            char[][] parameterPackageNames = new char[length][];
            char[][] parameterTypeNames = new char[length][];
            int i3 = 0;
            while (i3 < length) {
                TypeBinding type = method.original().parameters[i3];
                parameterPackageNames[i3] = type.qualifiedPackageName();
                parameterTypeNames[i3] = type.qualifiedSourceName();
                ++i3;
            }
            char[][] parameterNames = this.findMethodParameterNames(method, parameterTypeNames);
            char[] completion = CharOperation.NO_CHAR;
            int previousStartPosition = this.startPosition;
            int previousTokenStart = this.tokenStart;
            completion = this.source != null && this.source.length > this.endPosition && this.source[this.endPosition] == '(' ? method.selector : CharOperation.concat(method.selector, new char[]{'(', ')'});
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForCaseMatching(methodName, method.selector);
            relevance += this.computeRelevanceForExpectingType(method.returnType);
            relevance += this.computeRelevanceForEnumConstant(method.returnType);
            relevance += this.computeRelevanceForStatic(true, method.isStatic());
            relevance += this.computeRelevanceForQualification(true);
            relevance += this.computeRelevanceForRestrictions(0);
            CompilationUnitDeclaration cu = this.unitScope.referenceContext;
            int importEnd = importStart = cu.types[0].declarationSourceStart;
            this.noProposal = false;
            if (!proposeStaticImport) {
                if (isAlreadyImported) {
                    if (!this.isIgnored(6)) {
                        completion = CharOperation.concat(receiverType.sourceName, completion, '.');
                        proposal = this.createProposal(6, this.actualCompletionPosition);
                        proposal.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
                        proposal.setSignature(CompletionEngine.getSignature(method));
                        original = method.original();
                        if (original != method) {
                            proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                        }
                        proposal.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
                        proposal.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
                        proposal.setParameterPackageNames(parameterPackageNames);
                        proposal.setParameterTypeNames(parameterTypeNames);
                        proposal.setPackageName(method.returnType.qualifiedPackageName());
                        proposal.setTypeName(method.returnType.qualifiedSourceName());
                        proposal.setName(method.selector);
                        proposal.setCompletion(completion);
                        proposal.setFlags(method.modifiers);
                        proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                        proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                        proposal.setRelevance(relevance);
                        if (parameterNames != null) {
                            proposal.setParameterNames(parameterNames);
                        }
                        this.requestor.accept(proposal);
                        if (DEBUG) {
                            this.printDebug(proposal);
                        }
                    }
                } else if (!this.isIgnored(6, 23)) {
                    completion = CharOperation.concat(receiverType.sourceName, completion, '.');
                    proposal = this.createProposal(6, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
                    proposal.setSignature(CompletionEngine.getSignature(method));
                    original = method.original();
                    if (original != method) {
                        proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                    }
                    proposal.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
                    proposal.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
                    proposal.setParameterPackageNames(parameterPackageNames);
                    proposal.setParameterTypeNames(parameterTypeNames);
                    proposal.setPackageName(method.returnType.qualifiedPackageName());
                    proposal.setTypeName(method.returnType.qualifiedSourceName());
                    proposal.setName(method.selector);
                    proposal.setCompletion(completion);
                    proposal.setFlags(method.modifiers);
                    proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    if (parameterNames != null) {
                        proposal.setParameterNames(parameterNames);
                    }
                    char[] typeImportCompletion = this.createImportCharArray(typeName, false, false);
                    InternalCompletionProposal typeImportProposal = this.createProposal(23, this.actualCompletionPosition);
                    typeImportProposal.nameLookup = this.nameEnvironment.nameLookup;
                    typeImportProposal.completionEngine = this;
                    char[] packageName = receiverType.qualifiedPackageName();
                    typeImportProposal.setDeclarationSignature(packageName);
                    typeImportProposal.setSignature(CompletionEngine.getSignature(receiverType));
                    typeImportProposal.setPackageName(packageName);
                    typeImportProposal.setTypeName(receiverType.qualifiedSourceName());
                    typeImportProposal.setCompletion(typeImportCompletion);
                    typeImportProposal.setFlags(receiverType.modifiers);
                    typeImportProposal.setAdditionalFlags(0);
                    typeImportProposal.setReplaceRange(importStart - this.offset, importEnd - this.offset);
                    typeImportProposal.setTokenRange(importStart - this.offset, importEnd - this.offset);
                    typeImportProposal.setRelevance(relevance);
                    proposal.setRequiredProposals(new CompletionProposal[]{typeImportProposal});
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
            } else if (!this.isIgnored(6, 22)) {
                proposal = this.createProposal(6, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
                proposal.setSignature(CompletionEngine.getSignature(method));
                original = method.original();
                if (original != method) {
                    proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                }
                proposal.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
                proposal.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
                proposal.setParameterPackageNames(parameterPackageNames);
                proposal.setParameterTypeNames(parameterTypeNames);
                proposal.setPackageName(method.returnType.qualifiedPackageName());
                proposal.setTypeName(method.returnType.qualifiedSourceName());
                proposal.setName(method.selector);
                proposal.setCompletion(completion);
                proposal.setFlags(method.modifiers);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                if (parameterNames != null) {
                    proposal.setParameterNames(parameterNames);
                }
                char[] methodImportCompletion = this.createImportCharArray(CharOperation.concat(typeName, method.selector, '.'), true, false);
                InternalCompletionProposal methodImportProposal = this.createProposal(22, this.actualCompletionPosition);
                methodImportProposal.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
                methodImportProposal.setSignature(CompletionEngine.getSignature(method));
                if (original != method) {
                    proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                }
                methodImportProposal.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
                methodImportProposal.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
                methodImportProposal.setParameterPackageNames(parameterPackageNames);
                methodImportProposal.setParameterTypeNames(parameterTypeNames);
                methodImportProposal.setPackageName(method.returnType.qualifiedPackageName());
                methodImportProposal.setTypeName(method.returnType.qualifiedSourceName());
                methodImportProposal.setName(method.selector);
                methodImportProposal.setCompletion(methodImportCompletion);
                methodImportProposal.setFlags(method.modifiers);
                methodImportProposal.setAdditionalFlags(1);
                methodImportProposal.setReplaceRange(importStart - this.offset, importEnd - this.offset);
                methodImportProposal.setTokenRange(importStart - this.offset, importEnd - this.offset);
                methodImportProposal.setRelevance(relevance);
                if (parameterNames != null) {
                    methodImportProposal.setParameterNames(parameterNames);
                }
                proposal.setRequiredProposals(new CompletionProposal[]{methodImportProposal});
                this.requestor.accept(proposal);
                if (DEBUG) {
                    this.printDebug(proposal);
                }
            }
            this.startPosition = previousStartPosition;
            this.tokenStart = previousTokenStart;
        }
    }

    private void findLocalMethodsFromStaticImports(char[] methodName, MethodBinding[] methods, Scope scope, boolean exactMatch, ObjectVector methodsFound, ReferenceBinding receiverType, InvocationSite invocationSite) {
        ObjectVector newMethodsFound = new ObjectVector();
        int f = methods.length;
        block0: while (--f >= 0) {
            MethodBinding method = methods[f];
            if (method.isSynthetic() || method.isDefaultAbstract() || method.isConstructor() || !method.isStatic() || this.options.checkDeprecation && method.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(method.declaringClass) || this.options.checkVisibility && !method.canBeSeenBy(receiverType, invocationSite, scope)) continue;
            int i = methodsFound.size;
            while (--i >= 0) {
                Object[] other = (Object[])methodsFound.elementAt(i);
                MethodBinding otherMethod = (MethodBinding)other[0];
                ReferenceBinding otherReceiverType = (ReferenceBinding)other[1];
                if (method == otherMethod && receiverType == otherReceiverType || CharOperation.equals(method.selector, otherMethod.selector, true) && this.lookupEnvironment.methodVerifier().isMethodSubsignature(otherMethod, method)) continue block0;
            }
            newMethodsFound.add(new Object[]{method, receiverType});
            int length = method.parameters.length;
            char[][] parameterPackageNames = new char[length][];
            char[][] parameterTypeNames = new char[length][];
            int i2 = 0;
            while (i2 < length) {
                TypeBinding type = method.original().parameters[i2];
                parameterPackageNames[i2] = type.qualifiedPackageName();
                parameterTypeNames[i2] = type.qualifiedSourceName();
                ++i2;
            }
            char[][] parameterNames = this.findMethodParameterNames(method, parameterTypeNames);
            char[] completion = CharOperation.NO_CHAR;
            int previousStartPosition = this.startPosition;
            int previousTokenStart = this.tokenStart;
            if (!exactMatch) {
                completion = this.source != null && this.source.length > this.endPosition && this.source[this.endPosition] == '(' ? method.selector : CharOperation.concat(method.selector, new char[]{'(', ')'});
            } else {
                this.startPosition = this.endPosition;
                this.tokenStart = this.tokenEnd;
            }
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForCaseMatching(methodName, method.selector);
            relevance += this.computeRelevanceForExpectingType(method.returnType);
            relevance += this.computeRelevanceForEnumConstant(method.returnType);
            relevance += this.computeRelevanceForStatic(true, method.isStatic());
            relevance += this.computeRelevanceForQualification(false);
            relevance += this.computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (!this.requestor.isIgnored(6)) {
                InternalCompletionProposal proposal = this.createProposal(6, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.getSignature(method.declaringClass));
                proposal.setSignature(CompletionEngine.getSignature(method));
                MethodBinding original = method.original();
                if (original != method) {
                    proposal.setOriginalSignature(CompletionEngine.getSignature(original));
                }
                proposal.setDeclarationPackageName(method.declaringClass.qualifiedPackageName());
                proposal.setDeclarationTypeName(method.declaringClass.qualifiedSourceName());
                proposal.setParameterPackageNames(parameterPackageNames);
                proposal.setParameterTypeNames(parameterTypeNames);
                proposal.setPackageName(method.returnType.qualifiedPackageName());
                proposal.setTypeName(method.returnType.qualifiedSourceName());
                proposal.setName(method.selector);
                proposal.setCompletion(completion);
                proposal.setFlags(method.modifiers);
                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                if (parameterNames != null) {
                    proposal.setParameterNames(parameterNames);
                }
                this.requestor.accept(proposal);
                if (DEBUG) {
                    this.printDebug(proposal);
                }
            }
            this.startPosition = previousStartPosition;
            this.tokenStart = previousTokenStart;
        }
        methodsFound.addAll(newMethodsFound);
    }

    private void findLocalMethodsFromStaticImports(char[] token, Scope scope, InvocationSite invocationSite, Scope invocationScope, boolean exactMatch, ObjectVector methodsFound, boolean proposeMethod) {
        this.findFieldsAndMethodsFromStaticImports(token, scope, invocationSite, invocationScope, exactMatch, false, new ObjectVector(), new ObjectVector(), methodsFound, false, proposeMethod);
    }

    protected void findMembers(char[] token, ReferenceBinding receiverType, Scope scope, InvocationSite invocationSite, boolean isInsideAnnotationAttribute, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        if (!this.requestor.isIgnored(9)) {
            this.findMemberTypes(token, receiverType, scope, scope.enclosingSourceType(), false, true, new ObjectVector(), missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems);
        }
        if (!this.requestor.isIgnored(2)) {
            this.findClassField(token, receiverType, scope, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems);
        }
        MethodScope methodScope = null;
        if (!isInsideAnnotationAttribute && !this.requestor.isIgnored(3) && (scope instanceof MethodScope && !((MethodScope)scope).isStatic || (methodScope = scope.enclosingMethodScope()) != null && !methodScope.isStatic)) {
            if (token.length > 0) {
                this.findKeywords(token, new char[][]{Keywords.THIS}, false, true);
            } else {
                int relevance = this.computeBaseRelevance();
                relevance += this.computeRelevanceForResolution();
                relevance += this.computeRelevanceForInterestingProposal();
                relevance += this.computeRelevanceForCaseMatching(this.completionToken, Keywords.THIS);
                relevance += this.computeRelevanceForRestrictions(0);
                relevance += 2;
                this.noProposal = false;
                if (!this.requestor.isIgnored(3)) {
                    InternalCompletionProposal proposal = this.createProposal(3, this.actualCompletionPosition);
                    proposal.setName(Keywords.THIS);
                    proposal.setCompletion(Keywords.THIS);
                    proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
            }
        }
        if (!this.requestor.isIgnored(2)) {
            this.findFields(token, receiverType, scope, new ObjectVector(), new ObjectVector(), true, invocationSite, scope, false, false, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, null, -1, -1);
        }
        if (!isInsideAnnotationAttribute && !this.requestor.isIgnored(6)) {
            this.findMethods(token, null, null, receiverType, scope, new ObjectVector(), true, false, invocationSite, scope, false, false, false, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, null, -1, -1);
        }
    }

    private void findMembersFromMissingType(char[] token, long pos, TypeBinding resolveType, final Scope scope, final InvocationSite invocationSite, final boolean isInsideAnnotationAttribute) {
        MissingTypesGuesser missingTypesConverter = new MissingTypesGuesser(this);
        MissingTypesGuesser.GuessedTypeRequestor substitutionRequestor = new MissingTypesGuesser.GuessedTypeRequestor(){

            public void accept(TypeBinding guessedType, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean hasProblems) {
                if (guessedType instanceof ReferenceBinding) {
                    CompletionEngine.this.findMembers(CompletionEngine.this.completionToken, (ReferenceBinding)guessedType, scope, invocationSite, isInsideAnnotationAttribute, missingElements, missingElementsStarts, missingElementsEnds, hasProblems);
                }
            }
        };
        SingleTypeReference typeRef = new SingleTypeReference(token, pos);
        typeRef.resolvedType = new ProblemReferenceBinding(new char[][]{token}, null, 1);
        missingTypesConverter.guess(typeRef, scope, substitutionRequestor);
    }

    private void findMemberTypes(char[] typeName, ReferenceBinding receiverType, Scope scope, SourceTypeBinding typeInvocation, boolean staticOnly, boolean staticFieldsAndMethodOnly, boolean fromStaticImport, boolean checkQualification, boolean proposeAllMemberTypes, SourceTypeBinding typeToIgnore, ObjectVector typesFound, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        ReferenceBinding currentType = receiverType;
        if (typeName == null) {
            return;
        }
        if (this.insideQualifiedReference || typeName.length == 0) {
            this.findMemberTypes(typeName, currentType.memberTypes(), typesFound, receiverType, typeInvocation, staticOnly, staticFieldsAndMethodOnly, fromStaticImport, checkQualification, scope, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems);
            return;
        }
        ReferenceBinding[] interfacesToVisit = null;
        int nextPosition = 0;
        do {
            ReferenceBinding[] itsInterfaces;
            if ((itsInterfaces = currentType.superInterfaces()) != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                if (interfacesToVisit == null) {
                    interfacesToVisit = itsInterfaces;
                    nextPosition = interfacesToVisit.length;
                } else {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block20: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block20;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
            }
            this.findMemberTypes(typeName, currentType.memberTypes(), typesFound, receiverType, typeInvocation, staticOnly, staticFieldsAndMethodOnly, fromStaticImport, checkQualification, scope, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems);
        } while ((currentType = currentType.superclass()) != null);
        if (proposeAllMemberTypes) {
            ReferenceBinding[] memberTypes = receiverType.memberTypes();
            int i = 0;
            while (i < memberTypes.length) {
                if (memberTypes[i] != typeToIgnore) {
                    this.findSubMemberTypes(typeName, memberTypes[i], scope, typeInvocation, staticOnly, staticFieldsAndMethodOnly, fromStaticImport, typesFound);
                }
                ++i;
            }
        }
        if (interfacesToVisit != null) {
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding anInterface = interfacesToVisit[i];
                this.findMemberTypes(typeName, anInterface.memberTypes(), typesFound, receiverType, typeInvocation, staticOnly, staticFieldsAndMethodOnly, fromStaticImport, checkQualification, scope, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems);
                ReferenceBinding[] itsInterfaces = anInterface.superInterfaces();
                if (itsInterfaces != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block21: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block21;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
                ++i;
            }
        }
    }

    protected void findMemberTypes(char[] typeName, ReferenceBinding receiverType, Scope scope, SourceTypeBinding typeInvocation, boolean staticOnly, boolean staticFieldsAndMethodOnly, ObjectVector typesFound, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        this.findMemberTypes(typeName, receiverType, scope, typeInvocation, staticOnly, staticFieldsAndMethodOnly, false, false, false, null, typesFound, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems);
    }

    private void findMemberTypes(char[] typeName, ReferenceBinding[] memberTypes, ObjectVector typesFound, ReferenceBinding receiverType, SourceTypeBinding invocationType, boolean staticOnly, boolean staticFieldsAndMethodOnly, boolean fromStaticImport, boolean checkQualification, Scope scope, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        int typeLength = typeName.length;
        int m = memberTypes.length;
        block0: while (--m >= 0) {
            char[] memberEnclosingTypeNames;
            char[] memberTypeName;
            char[] memberPackageName;
            ReferenceBinding memberType = memberTypes[m];
            if (staticOnly && !memberType.isStatic() || this.isForbidden(memberType) || typeLength > memberType.sourceName.length || !CharOperation.prefixEquals(typeName, memberType.sourceName, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(typeName, memberType.sourceName)) || this.options.checkDeprecation && memberType.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(memberType) || this.options.checkVisibility && (invocationType != null && !memberType.canBeSeenBy(receiverType, invocationType) || invocationType == null && !memberType.canBeSeenBy(this.unitScope.fPackage)) || this.insideQualifiedReference && receiverType.isParameterizedType() && memberType.isStatic()) continue;
            int i = typesFound.size;
            while (--i >= 0) {
                ReferenceBinding otherType = (ReferenceBinding)typesFound.elementAt(i);
                if (memberType == otherType || CharOperation.equals(memberType.sourceName, otherType.sourceName, true) && (memberType.enclosingType().isSuperclassOf(otherType.enclosingType()) || otherType.enclosingType().isInterface() && memberType.enclosingType().implementsInterface(otherType.enclosingType(), true) || memberType.enclosingType().isInterface() && otherType.enclosingType().implementsInterface(memberType.enclosingType(), true))) continue block0;
            }
            typesFound.add(memberType);
            if (this.assistNodeIsExtendedType && memberType.isFinal() || this.assistNodeIsInterfaceExcludingAnnotation && memberType.isAnnotationType() || !this.insideQualifiedReference && (this.assistNodeIsClass || this.assistNodeIsException ? !memberType.isClass() : (this.assistNodeIsInterface ? !memberType.isInterface() && !memberType.isAnnotationType() : this.assistNodeIsAnnotation && !memberType.isAnnotationType()))) continue;
            char[] completionName = memberType.sourceName();
            boolean isQualified = false;
            if (checkQualification && !fromStaticImport && this.mustQualifyType(memberPackageName = memberType.qualifiedPackageName(), memberTypeName = memberType.sourceName(), memberEnclosingTypeNames = memberType.enclosingType().qualifiedSourceName(), memberType.modifiers)) {
                if ((memberPackageName == null || memberPackageName.length == 0) && this.unitScope != null && this.unitScope.fPackage.compoundName != CharOperation.NO_CHAR_CHAR) break;
                isQualified = true;
                completionName = CharOperation.concat(memberPackageName, CharOperation.concat(memberEnclosingTypeNames, memberTypeName, '.'), '.');
            }
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal(memberType);
            relevance += this.computeRelevanceForCaseMatching(typeName, memberType.sourceName);
            relevance += this.computeRelevanceForExpectingType(memberType);
            relevance += this.computeRelevanceForRestrictions(0);
            if (!this.insideQualifiedReference) {
                relevance += this.computeRelevanceForQualification(isQualified);
            }
            if (staticFieldsAndMethodOnly && this.insideQualifiedReference) {
                relevance += 2;
            }
            if (memberType.isAnnotationType()) {
                relevance += this.computeRelevanceForAnnotation();
                relevance += this.computeRelevanceForAnnotationTarget(memberType);
            } else if (memberType.isClass()) {
                relevance += this.computeRelevanceForClass();
                relevance += this.computeRelevanceForException(memberType.sourceName);
            } else if (memberType.isEnum()) {
                relevance += this.computeRelevanceForEnum();
            } else if (memberType.isInterface()) {
                relevance += this.computeRelevanceForInterface();
            }
            if (missingElements != null) {
                relevance += this.computeRelevanceForMissingElements(missingElementsHaveProblems);
            }
            boolean allowingLongComputationProposals = this.isAllowingLongComputationProposals();
            this.noProposal = false;
            if (!this.assistNodeIsConstructor || !allowingLongComputationProposals || CompletionEngine.hasStaticMemberTypes(memberType, invocationType, this.unitScope) || memberType instanceof SourceTypeBinding && CompletionEngine.hasMemberTypesInEnclosingScope((SourceTypeBinding)memberType, scope) || this.hasArrayTypeAsExpectedSuperTypes()) {
                this.createTypeProposal(memberType, memberType.qualifiedSourceName(), 0, completionName, relevance, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems);
            }
            if (!this.assistNodeIsConstructor || !allowingLongComputationProposals) continue;
            this.findConstructorsOrAnonymousTypes(memberType, scope, FakeInvocationSite, isQualified, relevance);
        }
    }

    private void findMemberTypesFromMissingType(char[] typeName, long pos, final Scope scope) {
        MissingTypesGuesser missingTypesConverter = new MissingTypesGuesser(this);
        MissingTypesGuesser.GuessedTypeRequestor substitutionRequestor = new MissingTypesGuesser.GuessedTypeRequestor(){

            public void accept(TypeBinding guessedType, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean hasProblems) {
                if (guessedType instanceof ReferenceBinding) {
                    CompletionEngine.this.findMemberTypes(CompletionEngine.this.completionToken, (ReferenceBinding)guessedType, scope, scope.enclosingSourceType(), false, false, new ObjectVector(), missingElements, missingElementsStarts, missingElementsEnds, hasProblems);
                }
            }
        };
        SingleTypeReference typeRef = new SingleTypeReference(typeName, pos);
        typeRef.resolvedType = new ProblemReferenceBinding(new char[][]{typeName}, null, 1);
        missingTypesConverter.guess(typeRef, scope, substitutionRequestor);
    }

    private void findMemberTypesFromMissingType(TypeReference typeRef, long pos, final Scope scope) {
        MissingTypesGuesser missingTypesConverter = new MissingTypesGuesser(this);
        MissingTypesGuesser.GuessedTypeRequestor substitutionRequestor = new MissingTypesGuesser.GuessedTypeRequestor(){

            public void accept(TypeBinding guessedType, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean hasProblems) {
                if (guessedType instanceof ReferenceBinding) {
                    CompletionEngine.this.findMemberTypes(CompletionEngine.this.completionToken, (ReferenceBinding)guessedType, scope, scope.enclosingSourceType(), false, false, new ObjectVector(), missingElements, missingElementsStarts, missingElementsEnds, hasProblems);
                }
            }
        };
        missingTypesConverter.guess(typeRef, scope, substitutionRequestor);
    }

    private void findMethodDeclarations(char[] selector, ReferenceBinding receiverType, Scope scope, ObjectVector methodsFound, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems) {
        if (selector == null) {
            return;
        }
        MethodBinding[] receiverTypeMethods = receiverType.availableMethods();
        if (receiverTypeMethods != null) {
            int i = 0;
            while (i < receiverTypeMethods.length) {
                if (!receiverTypeMethods[i].isDefaultAbstract()) {
                    methodsFound.add(receiverTypeMethods[i]);
                }
                ++i;
            }
        }
        ReferenceBinding currentType = receiverType;
        this.findInterfacesMethodDeclarations(selector, receiverType, currentType.superInterfaces(), scope, methodsFound, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems);
        currentType = receiverType.isInterface() ? scope.getJavaLangObject() : receiverType.superclass();
        boolean hasPotentialDefaultAbstractMethods = true;
        while (currentType != null) {
            MethodBinding[] methods = currentType.availableMethods();
            if (methods != null) {
                this.findLocalMethodDeclarations(selector, methods, scope, methodsFound, false, receiverType);
            }
            if (hasPotentialDefaultAbstractMethods && (currentType.isAbstract() || currentType.isTypeVariable() || currentType.isIntersectionType() || currentType.isEnum())) {
                ReferenceBinding[] superInterfaces = currentType.superInterfaces();
                this.findInterfacesMethodDeclarations(selector, receiverType, superInterfaces, scope, methodsFound, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems);
            } else {
                hasPotentialDefaultAbstractMethods = false;
            }
            currentType = currentType.superclass();
        }
    }

    private char[][] findMethodParameterNames(MethodBinding method, char[][] parameterTypeNames) {
        TypeBinding erasure = method.declaringClass.erasure();
        if (!(erasure instanceof ReferenceBinding)) {
            return null;
        }
        Object parameterNames = null;
        int length = parameterTypeNames.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        if (erasure instanceof SourceTypeBinding) {
            AbstractMethodDeclaration methodDecl;
            TypeDeclaration parsedType;
            SourceTypeBinding sourceType = (SourceTypeBinding)erasure;
            if (sourceType.scope != null && (parsedType = sourceType.scope.referenceContext) != null && (methodDecl = parsedType.declarationOf(method.original())) != null) {
                Argument[] arguments = methodDecl.arguments;
                parameterNames = new char[length][];
                int i = 0;
                while (i < length) {
                    parameterNames[i] = arguments[i].name;
                    ++i;
                }
            }
        }
        if (parameterNames == null) {
            ReferenceBinding bindingType = (ReferenceBinding)erasure;
            char[] compoundName = CharOperation.concatWith(bindingType.compoundName, '.');
            Object type = this.typeCache.get(compoundName);
            ISourceType sourceType = null;
            if (type != null) {
                if (type instanceof ISourceType) {
                    sourceType = (ISourceType)type;
                }
            } else {
                NameEnvironmentAnswer answer = this.nameEnvironment.findType(bindingType.compoundName);
                if (answer != null && answer.isSourceType()) {
                    sourceType = answer.getSourceTypes()[0];
                    this.typeCache.put(compoundName, sourceType);
                }
            }
            if (sourceType != null) {
                int len;
                IType typeHandle = ((SourceTypeElementInfo)sourceType).getHandle();
                String[] parameterTypeSignatures = new String[length];
                int i = 0;
                while (i < length) {
                    parameterTypeSignatures[i] = Signature.createTypeSignature(parameterTypeNames[i], false);
                    ++i;
                }
                IMethod searchedMethod = typeHandle.getMethod(String.valueOf(method.selector), parameterTypeSignatures);
                IMethod[] foundMethods = typeHandle.findMethods(searchedMethod);
                if (foundMethods != null && (len = foundMethods.length) == 1) {
                    try {
                        SourceMethod sourceMethod = (SourceMethod)foundMethods[0];
                        parameterNames = ((SourceMethodElementInfo)sourceMethod.getElementInfo()).getArgumentNames();
                    }
                    catch (JavaModelException javaModelException) {}
                }
            }
        }
        return parameterNames;
    }

    private void findMethods(char[] selector, TypeBinding[] typeArgTypes, TypeBinding[] argTypes, ReferenceBinding receiverType, Scope scope, ObjectVector methodsFound, boolean onlyStaticMethods, boolean exactMatch, InvocationSite invocationSite, Scope invocationScope, boolean implicitCall, boolean superCall, boolean canBePrefixed, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds, boolean missingElementsHaveProblems, char[] castedReceiver, int receiverStart, int receiverEnd) {
        boolean notInJavadoc;
        boolean bl = notInJavadoc = this.assistNodeInJavadoc == 0;
        if (selector == null && notInJavadoc) {
            return;
        }
        if (this.assistNodeIsInsideCase) {
            return;
        }
        ReferenceBinding currentType = receiverType;
        if (notInJavadoc && receiverType.isInterface()) {
            this.findInterfacesMethods(selector, typeArgTypes, argTypes, receiverType, new ReferenceBinding[]{currentType}, scope, methodsFound, onlyStaticMethods, exactMatch, invocationSite, invocationScope, implicitCall, superCall, canBePrefixed, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, castedReceiver, receiverStart, receiverEnd);
            currentType = scope.getJavaLangObject();
        }
        boolean hasPotentialDefaultAbstractMethods = true;
        while (currentType != null) {
            MethodBinding[] methods = currentType.availableMethods();
            if (methods != null) {
                this.findLocalMethods(selector, typeArgTypes, argTypes, methods, scope, methodsFound, onlyStaticMethods, exactMatch, receiverType, invocationSite, invocationScope, implicitCall, superCall, canBePrefixed, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, castedReceiver, receiverStart, receiverEnd);
            }
            if (hasPotentialDefaultAbstractMethods && (currentType.isAbstract() || currentType.isTypeVariable() || currentType.isIntersectionType() || currentType.isEnum())) {
                ReferenceBinding[] superInterfaces = currentType.superInterfaces();
                if (superInterfaces != null && currentType.isIntersectionType()) {
                    int i = 0;
                    while (i < superInterfaces.length) {
                        superInterfaces[i] = (ReferenceBinding)superInterfaces[i].capture(invocationScope, invocationSite.sourceEnd());
                        ++i;
                    }
                }
                this.findInterfacesMethods(selector, typeArgTypes, argTypes, receiverType, superInterfaces, scope, methodsFound, onlyStaticMethods, exactMatch, invocationSite, invocationScope, implicitCall, superCall, canBePrefixed, missingElements, missingElementsStarts, missingElementsEnds, missingElementsHaveProblems, castedReceiver, receiverStart, receiverEnd);
            } else {
                hasPotentialDefaultAbstractMethods = false;
            }
            currentType = currentType.superclass();
        }
    }

    /*
     * Unable to fully structure code
     */
    private void findNestedTypes(char[] typeName, SourceTypeBinding currentType, Scope scope, boolean proposeAllMemberTypes, ObjectVector typesFound) {
        if (typeName == null) {
            return;
        }
        typeLength = typeName.length;
        nextTypeToIgnore = null;
        while (scope != null) {
            switch (scope.kind) {
                case 1: 
                case 2: {
                    blockScope = (BlockScope)scope;
                    i = 0;
                    length = blockScope.subscopeCount;
                    while (i < length) {
                        if (blockScope.subscopes[i] instanceof ClassScope && !(localType = ((ClassScope)blockScope.subscopes[i]).referenceContext.binding).isAnonymousType() && !this.isForbidden(localType) && typeLength <= localType.sourceName.length && (CharOperation.prefixEquals(typeName, localType.sourceName, false) || this.options.camelCaseMatch && CharOperation.camelCaseMatch(typeName, localType.sourceName))) {
                            j = typesFound.size;
                            while (--j >= 0) {
                                otherType = (ReferenceBinding)typesFound.elementAt(j);
                                if (localType != otherType) {
                                    continue;
                                }
                                ** GOTO lbl37
                            }
                            if (!(this.assistNodeIsExtendedType && localType.isFinal() || this.assistNodeIsInterfaceExcludingAnnotation && localType.isAnnotationType() || (this.assistNodeIsClass != false ? localType.isClass() == false : (this.assistNodeIsInterface != false ? localType.isInterface() == false && localType.isAnnotationType() == false : this.assistNodeIsAnnotation != false && localType.isAnnotationType() == false)))) {
                                relevance = this.computeBaseRelevance();
                                relevance += this.computeRelevanceForResolution();
                                relevance += this.computeRelevanceForInterestingProposal(localType);
                                relevance += this.computeRelevanceForCaseMatching(typeName, localType.sourceName);
                                relevance += this.computeRelevanceForExpectingType(localType);
                                relevance += this.computeRelevanceForException(localType.sourceName);
                                relevance += this.computeRelevanceForClass();
                                relevance += this.computeRelevanceForQualification(false);
                                relevance += this.computeRelevanceForRestrictions(0);
                                relevance += this.computeRelevanceForAnnotationTarget(localType);
                                allowingLongComputationProposals = this.isAllowingLongComputationProposals();
                                if (!this.assistNodeIsConstructor || !allowingLongComputationProposals || this.hasArrayTypeAsExpectedSuperTypes()) {
                                    this.noProposal = false;
                                    if (!this.requestor.isIgnored(9)) {
                                        this.createTypeProposal(localType, localType.sourceName, 0, localType.sourceName, relevance, null, null, null, false);
                                    }
                                }
                                if (this.assistNodeIsConstructor && allowingLongComputationProposals) {
                                    this.findConstructorsOrAnonymousTypes(localType, blockScope, CompletionEngine.FakeInvocationSite, false, relevance);
                                }
                            }
                        }
lbl37:
                        // 8 sources

                        ++i;
                    }
                    break;
                }
                case 3: {
                    enclosingSourceType = scope.enclosingSourceType();
                    this.findMemberTypes(typeName, enclosingSourceType, scope, currentType, false, false, false, false, proposeAllMemberTypes, nextTypeToIgnore, typesFound, null, null, null, false);
                    nextTypeToIgnore = enclosingSourceType;
                    if (typeLength != 0) break;
                    return;
                }
                case 4: {
                    return;
                }
            }
            scope = scope.parent;
        }
    }

    private void findPackages(CompletionOnPackageReference packageStatement) {
        this.completionToken = CharOperation.concatWith(packageStatement.tokens, '.');
        if (this.completionToken.length == 0) {
            return;
        }
        this.setSourceRange(packageStatement.sourceStart, packageStatement.sourceEnd);
        long completionPosition = packageStatement.sourcePositions[packageStatement.sourcePositions.length - 1];
        this.setTokenRange((int)(completionPosition >>> 32), (int)completionPosition);
        this.nameEnvironment.findPackages(CharOperation.toLowerCase(this.completionToken), this);
    }

    private void findParameterizedType(TypeReference ref, Scope scope) {
        ReferenceBinding refBinding = (ReferenceBinding)ref.resolvedType;
        if (refBinding != null) {
            AccessRestriction accessRestriction;
            if (this.options.checkDeprecation && refBinding.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(refBinding)) {
                return;
            }
            int accessibility = 0;
            if (refBinding.hasRestrictedAccess() && (accessRestriction = this.lookupEnvironment.getAccessRestriction(refBinding)) != null) {
                switch (accessRestriction.getProblemId()) {
                    case 0x1000133: {
                        if (this.options.checkForbiddenReference) {
                            return;
                        }
                        accessibility = 1;
                        break;
                    }
                    case 0x1000118: {
                        if (this.options.checkDiscouragedReference) {
                            return;
                        }
                        accessibility = 2;
                    }
                }
            }
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForCaseMatching(refBinding.sourceName, refBinding.sourceName);
            relevance += this.computeRelevanceForExpectingType(refBinding);
            relevance += this.computeRelevanceForQualification(false);
            relevance += this.computeRelevanceForRestrictions(accessibility);
            if (!this.requestor.isIgnored(9)) {
                this.createTypeProposal(refBinding, refBinding.qualifiedSourceName(), 0, CharOperation.NO_CHAR, relevance, null, null, null, false);
            }
        }
    }

    private void findSubMemberTypes(char[] typeName, ReferenceBinding receiverType, Scope scope, SourceTypeBinding typeInvocation, boolean staticOnly, boolean staticFieldsAndMethodOnly, boolean fromStaticImport, ObjectVector typesFound) {
        ReferenceBinding currentType = receiverType;
        if (typeName == null) {
            return;
        }
        if (this.assistNodeIsSuperType && !this.insideQualifiedReference && this.isForbidden(currentType)) {
            return;
        }
        this.findMemberTypes(typeName, currentType.memberTypes(), typesFound, receiverType, typeInvocation, staticOnly, staticFieldsAndMethodOnly, fromStaticImport, true, scope, null, null, null, false);
        ReferenceBinding[] memberTypes = receiverType.memberTypes();
        int i = 0;
        while (i < memberTypes.length) {
            if (!this.options.checkVisibility || (typeInvocation == null || memberTypes[i].canBeSeenBy(receiverType, typeInvocation)) && (typeInvocation != null || memberTypes[i].canBeSeenBy(this.unitScope.fPackage))) {
                this.findSubMemberTypes(typeName, memberTypes[i], scope, typeInvocation, staticOnly, staticFieldsAndMethodOnly, fromStaticImport, typesFound);
            }
            ++i;
        }
    }

    private void findTrueOrFalseKeywords(char[][] choices) {
        if (choices == null || choices.length == 0) {
            return;
        }
        if (this.expectedTypesPtr != 0 || this.expectedTypes[0] != TypeBinding.BOOLEAN) {
            return;
        }
        int i = 0;
        while (i < choices.length) {
            if (CharOperation.equals(choices[i], Keywords.TRUE) || CharOperation.equals(choices[i], Keywords.FALSE)) {
                int relevance = this.computeBaseRelevance();
                relevance += this.computeRelevanceForResolution();
                relevance += this.computeRelevanceForInterestingProposal();
                relevance += this.computeRelevanceForCaseMatching(CharOperation.NO_CHAR, choices[i]);
                relevance += this.computeRelevanceForRestrictions(0);
                relevance += this.computeRelevanceForExpectingType(TypeBinding.BOOLEAN);
                relevance += this.computeRelevanceForQualification(false);
                ++relevance;
                this.noProposal = false;
                if (!this.requestor.isIgnored(3)) {
                    InternalCompletionProposal proposal = this.createProposal(3, this.actualCompletionPosition);
                    proposal.setName(choices[i]);
                    proposal.setCompletion(choices[i]);
                    proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (DEBUG) {
                        this.printDebug(proposal);
                    }
                }
            }
            ++i;
        }
    }

    private void findTypeParameters(char[] token, Scope scope) {
        if (this.compilerOptions.sourceLevel < 0x310000L) {
            return;
        }
        TypeParameter[] typeParameters = null;
        while (scope != null) {
            typeParameters = null;
            switch (scope.kind) {
                case 2: {
                    MethodScope methodScope = (MethodScope)scope;
                    if (methodScope.referenceContext instanceof MethodDeclaration) {
                        MethodDeclaration methodDeclaration = (MethodDeclaration)methodScope.referenceContext;
                        typeParameters = methodDeclaration.typeParameters;
                        break;
                    }
                    if (!(methodScope.referenceContext instanceof ConstructorDeclaration)) break;
                    ConstructorDeclaration methodDeclaration = (ConstructorDeclaration)methodScope.referenceContext;
                    typeParameters = methodDeclaration.typeParameters;
                    break;
                }
                case 3: {
                    ClassScope classScope = (ClassScope)scope;
                    typeParameters = classScope.referenceContext.typeParameters;
                    break;
                }
                case 4: {
                    return;
                }
            }
            if (typeParameters != null) {
                int i = 0;
                while (i < typeParameters.length) {
                    int typeLength = token.length;
                    TypeParameter typeParameter = typeParameters[i];
                    if (typeParameter.binding != null && typeLength <= typeParameter.name.length && (CharOperation.prefixEquals(token, typeParameter.name, false) || this.options.camelCaseMatch && CharOperation.camelCaseMatch(token, typeParameter.name))) {
                        int relevance = this.computeBaseRelevance();
                        relevance += this.computeRelevanceForResolution();
                        relevance += this.computeRelevanceForInterestingProposal();
                        relevance += this.computeRelevanceForCaseMatching(token, typeParameter.name);
                        relevance += this.computeRelevanceForExpectingType(typeParameter.type == null ? null : typeParameter.type.resolvedType);
                        relevance += this.computeRelevanceForQualification(false);
                        relevance += this.computeRelevanceForException(typeParameter.name);
                        relevance += this.computeRelevanceForRestrictions(0);
                        this.noProposal = false;
                        if (!this.requestor.isIgnored(9)) {
                            this.createTypeParameterProposal(typeParameter, relevance);
                        }
                    }
                    ++i;
                }
            }
            scope = scope.parent;
        }
    }

    private void findTypesAndPackages(char[] token, Scope scope, boolean proposeBaseTypes, boolean proposeVoidType, ObjectVector typesFound) {
        boolean isEmptyPrefix;
        boolean proposeConstructor;
        if (token == null) {
            return;
        }
        boolean allowingLongComputationProposals = this.isAllowingLongComputationProposals();
        boolean proposeType = !this.requestor.isIgnored(9) || (this.assistNodeInJavadoc & 4) != 0 && !this.requestor.isIgnored(16);
        boolean proposeAllMemberTypes = !this.assistNodeIsConstructor;
        boolean bl = proposeConstructor = allowingLongComputationProposals && this.assistNodeIsConstructor && (!this.isIgnored(26, 9) || !this.isIgnored(27, 9));
        if ((proposeType || proposeConstructor) && scope.enclosingSourceType() != null) {
            this.checkCancel();
            this.findNestedTypes(token, scope.enclosingSourceType(), scope, proposeAllMemberTypes, typesFound);
            if (!(this.assistNodeIsInterface || this.assistNodeIsConstructor || this.assistNodeIsAnnotation || this.assistNodeInJavadoc != 0)) {
                this.checkCancel();
                this.findTypeParameters(token, scope);
            }
        }
        boolean bl2 = isEmptyPrefix = token.length == 0;
        if ((proposeType || proposeConstructor) && this.unitScope != null) {
            ReferenceBinding outerInvocationType = scope.enclosingSourceType();
            if (outerInvocationType != null) {
                ReferenceBinding temp = outerInvocationType.enclosingType();
                while (temp != null) {
                    outerInvocationType = temp;
                    temp = temp.enclosingType();
                }
            }
            int typeLength = token.length;
            SourceTypeBinding[] types = this.unitScope.topLevelTypes;
            int i = 0;
            int length = types.length;
            while (i < length) {
                block45: {
                    this.checkCancel();
                    SourceTypeBinding sourceType = types[i];
                    if (!this.isForbidden(sourceType)) {
                        if (proposeAllMemberTypes && sourceType != outerInvocationType) {
                            this.findSubMemberTypes(token, sourceType, scope, scope.enclosingSourceType(), false, false, false, typesFound);
                        }
                        if (sourceType.sourceName != CompletionParser.FAKE_TYPE_NAME && sourceType.sourceName != TypeConstants.PACKAGE_INFO_NAME && typeLength <= sourceType.sourceName.length && (CharOperation.prefixEquals(token, sourceType.sourceName, false) || this.options.camelCaseMatch && CharOperation.camelCaseMatch(token, sourceType.sourceName)) && (!this.assistNodeIsAnnotation || this.hasPossibleAnnotationTarget(sourceType, scope))) {
                            int j = typesFound.size;
                            while (--j >= 0) {
                                ReferenceBinding otherType = (ReferenceBinding)typesFound.elementAt(j);
                                if (sourceType != otherType) {
                                    continue;
                                }
                                break block45;
                            }
                            typesFound.add(sourceType);
                            if (!(this.assistNodeIsExtendedType && sourceType.isFinal() || this.assistNodeIsInterfaceExcludingAnnotation && sourceType.isAnnotationType() || (this.assistNodeIsClass ? !sourceType.isClass() : (this.assistNodeIsInterface ? !sourceType.isInterface() && !sourceType.isAnnotationType() : (this.assistNodeIsAnnotation ? !sourceType.isAnnotationType() : this.assistNodeIsException && (!sourceType.isClass() || isEmptyPrefix && sourceType.findSuperTypeOriginatingFrom(21, true) == null)))))) {
                                int relevance = this.computeBaseRelevance();
                                relevance += this.computeRelevanceForResolution();
                                relevance += this.computeRelevanceForInterestingProposal(sourceType);
                                relevance += this.computeRelevanceForCaseMatching(token, sourceType.sourceName);
                                relevance += this.computeRelevanceForExpectingType(sourceType);
                                relevance += this.computeRelevanceForQualification(false);
                                relevance += this.computeRelevanceForRestrictions(0);
                                if (sourceType.isAnnotationType()) {
                                    relevance += this.computeRelevanceForAnnotation();
                                    relevance += this.computeRelevanceForAnnotationTarget(sourceType);
                                } else if (sourceType.isInterface()) {
                                    relevance += this.computeRelevanceForInterface();
                                } else if (sourceType.isClass()) {
                                    relevance += this.computeRelevanceForClass();
                                    relevance += this.computeRelevanceForException(sourceType.sourceName);
                                }
                                this.noProposal = false;
                                if (proposeType && (!this.assistNodeIsConstructor || !allowingLongComputationProposals || CompletionEngine.hasStaticMemberTypes(sourceType, null, this.unitScope) || CompletionEngine.hasMemberTypesInEnclosingScope(sourceType, scope)) || this.hasArrayTypeAsExpectedSuperTypes()) {
                                    char[] typeName = sourceType.sourceName();
                                    this.createTypeProposal(sourceType, typeName, 0, typeName, relevance, null, null, null, false);
                                }
                                if (proposeConstructor) {
                                    this.findConstructorsOrAnonymousTypes(sourceType, scope, FakeInvocationSite, false, relevance);
                                }
                            }
                        }
                    }
                }
                ++i;
            }
        }
        if (proposeConstructor && !isEmptyPrefix) {
            this.checkCancel();
            this.findTypesFromImports(token, scope, proposeType, typesFound);
        } else if (proposeType) {
            this.checkCancel();
            this.findTypesFromStaticImports(token, scope, proposeAllMemberTypes, typesFound);
        }
        if (proposeConstructor) {
            this.checkCancel();
            this.findTypesFromExpectedTypes(token, scope, typesFound, proposeType, proposeConstructor);
        }
        if (isEmptyPrefix && !this.assistNodeIsAnnotation) {
            if (!proposeConstructor) {
                this.findTypesFromExpectedTypes(token, scope, typesFound, proposeType, proposeConstructor);
            }
        } else {
            ReferenceBinding typeFound;
            int i;
            if (!(isEmptyPrefix || this.requestor.isIgnored(3) || this.assistNodeInJavadoc != 0 && (this.assistNodeInJavadoc & 8) == 0 || !proposeBaseTypes)) {
                if (proposeVoidType) {
                    this.findKeywords(token, BASE_TYPE_NAMES, false, false);
                } else {
                    this.findKeywords(token, BASE_TYPE_NAMES_WITHOUT_VOID, false, false);
                }
            }
            if (proposeConstructor) {
                int l = typesFound.size();
                i = 0;
                while (i < l) {
                    typeFound = (ReferenceBinding)typesFound.elementAt(i);
                    char[] fullyQualifiedTypeName = CharOperation.concat(typeFound.qualifiedPackageName(), typeFound.qualifiedSourceName(), '.');
                    this.knownTypes.put(fullyQualifiedTypeName, KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                    ++i;
                }
                this.checkCancel();
                this.foundConstructorsCount = 0;
                this.nameEnvironment.findConstructorDeclarations(token, this.options.camelCaseMatch, this, this.monitor);
                this.acceptConstructors(scope);
            } else if (proposeType) {
                int l = typesFound.size();
                i = 0;
                while (i < l) {
                    typeFound = (ReferenceBinding)typesFound.elementAt(i);
                    char[] fullyQualifiedTypeName = CharOperation.concat(typeFound.qualifiedPackageName(), typeFound.qualifiedSourceName(), '.');
                    this.knownTypes.put(fullyQualifiedTypeName, KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                    ++i;
                }
                int searchFor = 0;
                if (this.assistNodeIsClass || this.assistNodeIsException) {
                    searchFor = 5;
                } else if (this.assistNodeIsInterfaceExcludingAnnotation) {
                    searchFor = 6;
                } else if (this.assistNodeIsInterface) {
                    searchFor = 11;
                } else if (this.assistNodeIsEnum) {
                    searchFor = 7;
                } else if (this.assistNodeIsAnnotation) {
                    searchFor = 8;
                }
                this.checkCancel();
                this.foundTypesCount = 0;
                this.nameEnvironment.findTypes(token, proposeAllMemberTypes, this.options.camelCaseMatch, searchFor, this, this.monitor);
                this.acceptTypes(scope);
            }
            if (!isEmptyPrefix && !this.requestor.isIgnored(8)) {
                this.checkCancel();
                this.nameEnvironment.findPackages(token, this);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void findTypesAndSubpackages(char[] token, PackageBinding packageBinding, Scope scope) {
        char[] qualifiedName;
        boolean proposeConstructor;
        boolean proposeType;
        block26: {
            boolean allowingLongComputationProposals = this.isAllowingLongComputationProposals();
            proposeType = !this.requestor.isIgnored(9) || (this.assistNodeInJavadoc & 4) != 0 && !this.requestor.isIgnored(16);
            proposeConstructor = allowingLongComputationProposals && this.assistNodeIsConstructor && (!this.isIgnored(26, 9) || !this.isIgnored(27, 9));
            qualifiedName = CharOperation.concatWith(packageBinding.compoundName, token, '.');
            if (token == null || token.length == 0) {
                int length = qualifiedName.length;
                char[] cArray = qualifiedName;
                qualifiedName = new char[length + 1];
                System.arraycopy(cArray, 0, qualifiedName, 0, length);
                qualifiedName[length] = 46;
            }
            this.qualifiedCompletionToken = qualifiedName;
            if (!proposeType && !proposeConstructor || this.unitScope == null) break block26;
            int typeLength = qualifiedName.length;
            SourceTypeBinding[] types = this.unitScope.topLevelTypes;
            int i = 0;
            int length = types.length;
            while (i < length) {
                block27: {
                    int accessibility;
                    char[] qualifiedSourceTypeName;
                    SourceTypeBinding sourceType;
                    block28: {
                        AccessRestriction accessRestriction;
                        this.checkCancel();
                        sourceType = types[i];
                        if (this.isForbidden(sourceType) || this.assistNodeIsClass && sourceType.isInterface() || this.assistNodeIsInterface && sourceType.isClass()) break block27;
                        qualifiedSourceTypeName = CharOperation.concatWith(sourceType.compoundName, '.');
                        if (sourceType.sourceName == CompletionParser.FAKE_TYPE_NAME || sourceType.sourceName == TypeConstants.PACKAGE_INFO_NAME || typeLength > qualifiedSourceTypeName.length || packageBinding != sourceType.getPackage() || !CharOperation.prefixEquals(qualifiedName, qualifiedSourceTypeName, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(token, sourceType.sourceName)) || this.options.checkDeprecation && sourceType.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(sourceType) || this.assistNodeIsExtendedType && sourceType.isFinal() || this.assistNodeIsInterfaceExcludingAnnotation && sourceType.isAnnotationType()) break block27;
                        accessibility = 0;
                        if (!sourceType.hasRestrictedAccess() || (accessRestriction = this.lookupEnvironment.getAccessRestriction(sourceType)) == null) break block28;
                        switch (accessRestriction.getProblemId()) {
                            case 0x1000133: {
                                if (!this.options.checkForbiddenReference) {
                                    accessibility = 1;
                                    break;
                                }
                                break block27;
                            }
                            case 0x1000118: {
                                if (this.options.checkDiscouragedReference) break block27;
                                accessibility = 2;
                            }
                        }
                    }
                    this.knownTypes.put(CharOperation.concat(sourceType.qualifiedPackageName(), sourceType.sourceName(), '.'), KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                    int relevance = this.computeBaseRelevance();
                    relevance += this.computeRelevanceForResolution();
                    relevance += this.computeRelevanceForInterestingProposal(sourceType);
                    relevance += this.computeRelevanceForCaseMatching(qualifiedName, qualifiedSourceTypeName);
                    relevance += this.computeRelevanceForExpectingType(sourceType);
                    relevance += this.computeRelevanceForQualification(false);
                    relevance += this.computeRelevanceForRestrictions(accessibility);
                    if (sourceType.isAnnotationType()) {
                        relevance += this.computeRelevanceForAnnotation();
                    } else if (sourceType.isInterface()) {
                        relevance += this.computeRelevanceForInterface();
                    } else if (sourceType.isClass()) {
                        relevance += this.computeRelevanceForClass();
                        relevance += this.computeRelevanceForException(sourceType.sourceName);
                    }
                    this.noProposal = false;
                    if (proposeType && (!this.assistNodeIsConstructor || !allowingLongComputationProposals || CompletionEngine.hasStaticMemberTypes(sourceType, null, this.unitScope) || CompletionEngine.hasMemberTypesInEnclosingScope(sourceType, scope)) || this.hasArrayTypeAsExpectedSuperTypes()) {
                        char[] typeName = sourceType.sourceName();
                        this.createTypeProposal(sourceType, typeName, 0, typeName, relevance, null, null, null, false);
                    }
                    if (proposeConstructor) {
                        this.findConstructorsOrAnonymousTypes(sourceType, scope, FakeInvocationSite, false, relevance);
                    }
                }
                ++i;
            }
        }
        if (proposeConstructor) {
            this.checkCancel();
            this.foundConstructorsCount = 0;
            this.nameEnvironment.findConstructorDeclarations(qualifiedName, this.options.camelCaseMatch, this, this.monitor);
            this.acceptConstructors(scope);
        }
        if (proposeType) {
            int searchFor = 0;
            if (this.assistNodeIsClass) {
                searchFor = 5;
            } else if (this.assistNodeIsInterfaceExcludingAnnotation) {
                searchFor = 6;
            } else if (this.assistNodeIsInterface) {
                searchFor = 11;
            } else if (this.assistNodeIsEnum) {
                searchFor = 7;
            } else if (this.assistNodeIsAnnotation) {
                searchFor = 8;
            }
            this.checkCancel();
            this.foundTypesCount = 0;
            this.nameEnvironment.findTypes(qualifiedName, false, this.options.camelCaseMatch, searchFor, this, this.monitor);
            this.acceptTypes(scope);
        }
        if (!this.requestor.isIgnored(8)) {
            this.nameEnvironment.findPackages(qualifiedName, this);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void findTypesFromExpectedTypes(char[] token, Scope scope, ObjectVector typesFound, boolean proposeType, boolean proposeConstructor) {
        block23: {
            if (this.expectedTypesPtr <= -1) break block23;
            boolean allowingLongComputationProposals = this.isAllowingLongComputationProposals();
            int typeLength = token == null ? 0 : token.length;
            int i = 0;
            while (i <= this.expectedTypesPtr) {
                block22: {
                    boolean isQualified;
                    char[] completionName;
                    char[] typeName;
                    char[] packageName;
                    int accessibility;
                    ReferenceBinding refBinding;
                    block25: {
                        block24: {
                            AccessRestriction accessRestriction;
                            this.checkCancel();
                            if (!(this.expectedTypes[i] instanceof ReferenceBinding)) break block22;
                            refBinding = (ReferenceBinding)this.expectedTypes[i];
                            if (typeLength > 0 && (typeLength > refBinding.sourceName.length || !CharOperation.prefixEquals(token, refBinding.sourceName, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(token, refBinding.sourceName))) || refBinding.isTypeVariable() && this.assistNodeIsConstructor || this.options.checkDeprecation && refBinding.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(refBinding)) break block22;
                            accessibility = 0;
                            if (!refBinding.hasRestrictedAccess() || (accessRestriction = this.lookupEnvironment.getAccessRestriction(refBinding)) == null) break block24;
                            switch (accessRestriction.getProblemId()) {
                                case 0x1000133: {
                                    if (!this.options.checkForbiddenReference) {
                                        accessibility = 1;
                                        break;
                                    }
                                    break block22;
                                }
                                case 0x1000118: {
                                    if (this.options.checkDiscouragedReference) break block22;
                                    accessibility = 2;
                                }
                            }
                        }
                        if (this.isForbidden(refBinding)) break block22;
                        int j = 0;
                        while (j < typesFound.size()) {
                            ReferenceBinding typeFound = (ReferenceBinding)typesFound.elementAt(j);
                            if (typeFound != refBinding.erasure()) {
                                ++j;
                                continue;
                            }
                            break block22;
                        }
                        typesFound.add(refBinding);
                        boolean inSameUnit = this.unitScope.isDefinedInSameUnit(refBinding);
                        if (inSameUnit && (!inSameUnit || !refBinding.isMemberType())) break block22;
                        packageName = refBinding.qualifiedPackageName();
                        completionName = typeName = refBinding.sourceName();
                        isQualified = false;
                        if (this.insideQualifiedReference || refBinding.isMemberType() || !this.mustQualifyType(packageName, typeName, null, refBinding.modifiers)) break block25;
                        if ((packageName == null || packageName.length == 0) && this.unitScope != null && this.unitScope.fPackage.compoundName != CharOperation.NO_CHAR_CHAR) break block22;
                        completionName = CharOperation.concat(packageName, typeName, '.');
                        isQualified = true;
                    }
                    if (!(this.assistNodeIsExtendedType && refBinding.isFinal() || this.assistNodeIsInterfaceExcludingAnnotation && refBinding.isAnnotationType() || (this.assistNodeIsClass ? !refBinding.isClass() : (this.assistNodeIsInterface ? !refBinding.isInterface() && !refBinding.isAnnotationType() : this.assistNodeIsAnnotation && !refBinding.isAnnotationType())))) {
                        int relevance = this.computeBaseRelevance();
                        relevance += this.computeRelevanceForResolution();
                        relevance += this.computeRelevanceForInterestingProposal(refBinding);
                        relevance += this.computeRelevanceForCaseMatching(token, typeName);
                        relevance += this.computeRelevanceForExpectingType(refBinding);
                        relevance += this.computeRelevanceForQualification(isQualified);
                        relevance += this.computeRelevanceForRestrictions(accessibility);
                        if (refBinding.isClass()) {
                            relevance += this.computeRelevanceForClass();
                            relevance += this.computeRelevanceForException(typeName);
                        } else if (refBinding.isEnum()) {
                            relevance += this.computeRelevanceForEnum();
                        } else if (refBinding.isInterface()) {
                            relevance += this.computeRelevanceForInterface();
                        }
                        if (proposeType && (!this.assistNodeIsConstructor || !allowingLongComputationProposals || CompletionEngine.hasStaticMemberTypes(refBinding, scope.enclosingSourceType(), this.unitScope)) || this.hasArrayTypeAsExpectedSuperTypes()) {
                            this.noProposal = false;
                            if (!this.requestor.isIgnored(9)) {
                                InternalCompletionProposal proposal = this.createProposal(9, this.actualCompletionPosition);
                                proposal.setDeclarationSignature(packageName);
                                proposal.setSignature(CompletionEngine.getSignature(refBinding));
                                proposal.setPackageName(packageName);
                                proposal.setTypeName(typeName);
                                proposal.setCompletion(completionName);
                                proposal.setFlags(refBinding.modifiers);
                                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                                proposal.setRelevance(relevance);
                                proposal.setAccessibility(accessibility);
                                this.requestor.accept(proposal);
                                if (DEBUG) {
                                    this.printDebug(proposal);
                                }
                            }
                        }
                        if (proposeConstructor) {
                            this.findConstructorsOrAnonymousTypes(refBinding, scope, FakeInvocationSite, isQualified, relevance);
                        }
                    }
                }
                ++i;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void findTypesFromImports(char[] token, Scope scope, boolean proposeType, ObjectVector typesFound) {
        ImportBinding[] importBindings = scope.compilationUnitScope().imports;
        int i = 0;
        while (i < importBindings.length) {
            block17: {
                int accessibility;
                ReferenceBinding typeBinding;
                block19: {
                    AccessRestriction accessRestriction;
                    Binding binding;
                    block18: {
                        ImportBinding importBinding = importBindings[i];
                        if (!importBinding.isValidBinding() || (binding = importBinding.resolvedImport) == null || !binding.isValidBinding()) break block17;
                        if (!importBinding.onDemand) break block18;
                        if (importBinding.isStatic() && (binding.kind() & 4) != 0) {
                            this.findMemberTypes(token, (ReferenceBinding)binding, scope, scope.enclosingSourceType(), true, false, true, true, false, null, typesFound, null, null, null, false);
                        }
                        break block17;
                    }
                    if ((binding.kind() & 4) == 0) break block17;
                    typeBinding = (ReferenceBinding)binding;
                    int typeLength = token.length;
                    if (!typeBinding.isStatic() || typeLength > typeBinding.sourceName.length || !CharOperation.prefixEquals(token, typeBinding.sourceName, false) && (!this.options.camelCaseMatch || !CharOperation.camelCaseMatch(token, typeBinding.sourceName))) break block17;
                    accessibility = 0;
                    if (!typeBinding.hasRestrictedAccess() || (accessRestriction = this.lookupEnvironment.getAccessRestriction(typeBinding)) == null) break block19;
                    switch (accessRestriction.getProblemId()) {
                        case 0x1000133: {
                            if (!this.options.checkForbiddenReference) {
                                accessibility = 1;
                                break;
                            }
                            break block17;
                        }
                        case 0x1000118: {
                            if (this.options.checkDiscouragedReference) break block17;
                            accessibility = 2;
                        }
                    }
                }
                if (!typesFound.contains(typeBinding)) {
                    typesFound.add(typeBinding);
                    if (!(this.assistNodeIsExtendedType && typeBinding.isFinal() || this.assistNodeIsInterfaceExcludingAnnotation && typeBinding.isAnnotationType() || (this.assistNodeIsClass ? !typeBinding.isClass() : (this.assistNodeIsInterface ? !typeBinding.isInterface() && !typeBinding.isAnnotationType() : this.assistNodeIsAnnotation && !typeBinding.isAnnotationType())))) {
                        int relevance = this.computeBaseRelevance();
                        relevance += this.computeRelevanceForResolution();
                        relevance += this.computeRelevanceForInterestingProposal(typeBinding);
                        relevance += this.computeRelevanceForCaseMatching(token, typeBinding.sourceName);
                        relevance += this.computeRelevanceForExpectingType(typeBinding);
                        relevance += this.computeRelevanceForQualification(false);
                        relevance += this.computeRelevanceForRestrictions(accessibility);
                        if (typeBinding.isAnnotationType()) {
                            relevance += this.computeRelevanceForAnnotation();
                            relevance += this.computeRelevanceForAnnotationTarget(typeBinding);
                        } else if (typeBinding.isInterface()) {
                            relevance += this.computeRelevanceForInterface();
                        } else if (typeBinding.isClass()) {
                            relevance += this.computeRelevanceForClass();
                            relevance += this.computeRelevanceForException(typeBinding.sourceName);
                        }
                        if (proposeType && (CompletionEngine.hasStaticMemberTypes(typeBinding, scope.enclosingSourceType(), this.unitScope) || this.hasArrayTypeAsExpectedSuperTypes())) {
                            this.noProposal = false;
                            if (!this.requestor.isIgnored(9)) {
                                InternalCompletionProposal proposal = this.createProposal(9, this.actualCompletionPosition);
                                proposal.setDeclarationSignature(typeBinding.qualifiedPackageName());
                                proposal.setSignature(CompletionEngine.getSignature(typeBinding));
                                proposal.setPackageName(typeBinding.qualifiedPackageName());
                                proposal.setTypeName(typeBinding.qualifiedSourceName());
                                proposal.setCompletion(typeBinding.sourceName());
                                proposal.setFlags(typeBinding.modifiers);
                                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                                proposal.setRelevance(relevance);
                                this.requestor.accept(proposal);
                                if (DEBUG) {
                                    this.printDebug(proposal);
                                }
                            }
                        }
                        this.findConstructorsOrAnonymousTypes(typeBinding, scope, FakeInvocationSite, false, relevance);
                    }
                }
            }
            ++i;
        }
    }

    private void findTypesFromStaticImports(char[] token, Scope scope, boolean proposeAllMemberTypes, ObjectVector typesFound) {
        ImportBinding[] importBindings = scope.compilationUnitScope().imports;
        int i = 0;
        while (i < importBindings.length) {
            Binding binding;
            ImportBinding importBinding = importBindings[i];
            if (importBinding.isValidBinding() && importBinding.isStatic() && (binding = importBinding.resolvedImport) != null && binding.isValidBinding()) {
                if (importBinding.onDemand) {
                    if ((binding.kind() & 4) != 0) {
                        this.findMemberTypes(token, (ReferenceBinding)binding, scope, scope.enclosingSourceType(), true, false, true, true, proposeAllMemberTypes, null, typesFound, null, null, null, false);
                    }
                } else if ((binding.kind() & 4) != 0) {
                    ReferenceBinding typeBinding = (ReferenceBinding)binding;
                    int typeLength = token.length;
                    if (typeBinding.isStatic() && typeLength <= typeBinding.sourceName.length && (CharOperation.prefixEquals(token, typeBinding.sourceName, false) || this.options.camelCaseMatch && CharOperation.camelCaseMatch(token, typeBinding.sourceName)) && !typesFound.contains(typeBinding)) {
                        typesFound.add(typeBinding);
                        if (!(this.assistNodeIsExtendedType && typeBinding.isFinal() || this.assistNodeIsInterfaceExcludingAnnotation && typeBinding.isAnnotationType() || (this.assistNodeIsClass || this.assistNodeIsException ? !typeBinding.isClass() : (this.assistNodeIsInterface ? !typeBinding.isInterface() && !typeBinding.isAnnotationType() : this.assistNodeIsAnnotation && !typeBinding.isAnnotationType())))) {
                            int relevance = this.computeBaseRelevance();
                            relevance += this.computeRelevanceForResolution();
                            relevance += this.computeRelevanceForInterestingProposal(typeBinding);
                            relevance += this.computeRelevanceForCaseMatching(token, typeBinding.sourceName);
                            relevance += this.computeRelevanceForExpectingType(typeBinding);
                            relevance += this.computeRelevanceForQualification(false);
                            relevance += this.computeRelevanceForRestrictions(0);
                            if (typeBinding.isClass()) {
                                relevance += this.computeRelevanceForClass();
                                relevance += this.computeRelevanceForException(typeBinding.sourceName);
                            } else if (typeBinding.isEnum()) {
                                relevance += this.computeRelevanceForEnum();
                            } else if (typeBinding.isInterface()) {
                                relevance += this.computeRelevanceForInterface();
                            }
                            this.noProposal = false;
                            if (!this.requestor.isIgnored(9)) {
                                InternalCompletionProposal proposal = this.createProposal(9, this.actualCompletionPosition);
                                proposal.setDeclarationSignature(typeBinding.qualifiedPackageName());
                                proposal.setSignature(CompletionEngine.getSignature(typeBinding));
                                proposal.setPackageName(typeBinding.qualifiedPackageName());
                                proposal.setTypeName(typeBinding.qualifiedSourceName());
                                proposal.setCompletion(typeBinding.sourceName());
                                proposal.setFlags(typeBinding.modifiers);
                                proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                                proposal.setRelevance(relevance);
                                this.requestor.accept(proposal);
                                if (DEBUG) {
                                    this.printDebug(proposal);
                                }
                            }
                        }
                    }
                }
            }
            ++i;
        }
    }

    private void findUnresolvedReference(int completedNameStart, int completedNameEnd, BlockScope scope, char[][] discouragedNames) {
        char[][] foundNames = this.findUnresolvedReferenceBefore(completedNameStart - 1, completedNameEnd, scope, (char[][])discouragedNames);
        if (foundNames != null && foundNames.length > 1) {
            int discouragedNamesLength = ((char[][])discouragedNames).length;
            int foundNamesLength = foundNames.length;
            int newLength = discouragedNamesLength + foundNamesLength;
            char[][] cArray = discouragedNames;
            char[][] cArrayArray = new char[newLength][];
            discouragedNames = cArrayArray;
            System.arraycopy(cArray, 0, cArrayArray, 0, discouragedNamesLength);
            System.arraycopy(foundNames, 0, discouragedNames, discouragedNamesLength, foundNamesLength);
        }
        this.findUnresolvedReferenceAfter(completedNameEnd + 1, scope, (char[][])discouragedNames);
    }

    private char[][] findUnresolvedReferenceAfter(int from, BlockScope scope, char[][] discouragedNames) {
        final ArrayList proposedNames = new ArrayList();
        UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor nameRequestor = new UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor(){

            public void acceptName(char[] name) {
                CompletionEngine.this.acceptUnresolvedName(name);
                proposedNames.add(name);
            }
        };
        ReferenceContext referenceContext = scope.referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration md = (AbstractMethodDeclaration)referenceContext;
            UnresolvedReferenceNameFinder nameFinder = new UnresolvedReferenceNameFinder(this);
            nameFinder.findAfter(this.completionToken, md.scope, md.scope.classScope(), from, md.bodyEnd, discouragedNames, nameRequestor);
        } else if (referenceContext instanceof TypeDeclaration) {
            TypeDeclaration typeDeclaration = (TypeDeclaration)referenceContext;
            FieldDeclaration[] fields = typeDeclaration.fields;
            if (fields != null) {
                int i = 0;
                while (i < fields.length) {
                    if (fields[i] instanceof Initializer) {
                        Initializer initializer = (Initializer)fields[i];
                        if (initializer.block.sourceStart <= from && from < initializer.bodyEnd) {
                            UnresolvedReferenceNameFinder nameFinder = new UnresolvedReferenceNameFinder(this);
                            nameFinder.findAfter(this.completionToken, typeDeclaration.scope, typeDeclaration.scope, from, initializer.bodyEnd, discouragedNames, nameRequestor);
                            break;
                        }
                    }
                    ++i;
                }
            }
        }
        int proposedNamesCount = proposedNames.size();
        if (proposedNamesCount > 0) {
            return (char[][])proposedNames.toArray((T[])new char[proposedNamesCount][]);
        }
        return null;
    }

    private char[][] findUnresolvedReferenceBefore(int recordTo, int parseTo, BlockScope scope, char[][] discouragedNames) {
        final ArrayList proposedNames = new ArrayList();
        UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor nameRequestor = new UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor(){

            public void acceptName(char[] name) {
                CompletionEngine.this.acceptUnresolvedName(name);
                proposedNames.add(name);
            }
        };
        BlockScope upperScope = scope;
        while (upperScope.enclosingMethodScope() != null) {
            upperScope = upperScope.enclosingMethodScope();
        }
        ReferenceContext referenceContext = upperScope.referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration md = (AbstractMethodDeclaration)referenceContext;
            UnresolvedReferenceNameFinder nameFinder = new UnresolvedReferenceNameFinder(this);
            nameFinder.findBefore(this.completionToken, (Scope)md.scope, md.scope.classScope(), md.bodyStart, recordTo, parseTo, discouragedNames, nameRequestor);
        } else if (referenceContext instanceof TypeDeclaration) {
            TypeDeclaration typeDeclaration = (TypeDeclaration)referenceContext;
            FieldDeclaration[] fields = typeDeclaration.fields;
            if (fields != null) {
                int i = 0;
                while (i < fields.length) {
                    if (fields[i] instanceof Initializer) {
                        Initializer initializer = (Initializer)fields[i];
                        if (initializer.block.sourceStart <= recordTo && recordTo < initializer.bodyEnd) {
                            UnresolvedReferenceNameFinder nameFinder = new UnresolvedReferenceNameFinder(this);
                            nameFinder.findBefore(this.completionToken, (Scope)typeDeclaration.scope, typeDeclaration.scope, initializer.block.sourceStart, recordTo, parseTo, discouragedNames, nameRequestor);
                            break;
                        }
                    }
                    ++i;
                }
            }
        }
        int proposedNamesCount = proposedNames.size();
        if (proposedNamesCount > 0) {
            return (char[][])proposedNames.toArray((T[])new char[proposedNamesCount][]);
        }
        return null;
    }

    private char[][] findVariableFromUnresolvedReference(LocalDeclaration variable, BlockScope scope, char[][] discouragedNames) {
        final TypeReference type = variable.type;
        if (type != null && type.resolvedType != null && type.resolvedType.problemId() == 0) {
            final ArrayList proposedNames = new ArrayList();
            UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor nameRequestor = new UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor(){

                public void acceptName(char[] name) {
                    int relevance = CompletionEngine.this.computeBaseRelevance();
                    relevance += CompletionEngine.this.computeRelevanceForInterestingProposal();
                    relevance += CompletionEngine.this.computeRelevanceForCaseMatching(CompletionEngine.this.completionToken, name);
                    relevance += 6;
                    relevance += 4;
                    relevance += 15;
                    relevance += CompletionEngine.this.computeRelevanceForRestrictions(0);
                    CompletionEngine.this.noProposal = false;
                    if (!CompletionEngine.this.requestor.isIgnored(10)) {
                        InternalCompletionProposal proposal = CompletionEngine.this.createProposal(10, CompletionEngine.this.actualCompletionPosition);
                        proposal.setSignature(CompletionEngine.getSignature(type.resolvedType));
                        proposal.setPackageName(type.resolvedType.qualifiedPackageName());
                        proposal.setTypeName(type.resolvedType.qualifiedSourceName());
                        proposal.setName(name);
                        proposal.setCompletion(name);
                        proposal.setReplaceRange(CompletionEngine.this.startPosition - CompletionEngine.this.offset, CompletionEngine.this.endPosition - CompletionEngine.this.offset);
                        proposal.setTokenRange(CompletionEngine.this.tokenStart - CompletionEngine.this.offset, CompletionEngine.this.tokenEnd - CompletionEngine.this.offset);
                        proposal.setRelevance(relevance);
                        CompletionEngine.this.requestor.accept(proposal);
                        if (DEBUG) {
                            CompletionEngine.this.printDebug(proposal);
                        }
                    }
                    proposedNames.add(name);
                }
            };
            ReferenceContext referenceContext = scope.referenceContext();
            if (referenceContext instanceof AbstractMethodDeclaration) {
                AbstractMethodDeclaration md = (AbstractMethodDeclaration)referenceContext;
                UnresolvedReferenceNameFinder nameFinder = new UnresolvedReferenceNameFinder(this);
                nameFinder.find(this.completionToken, md, variable.declarationSourceEnd + 1, discouragedNames, nameRequestor);
            } else if (referenceContext instanceof TypeDeclaration) {
                TypeDeclaration typeDeclaration = (TypeDeclaration)referenceContext;
                FieldDeclaration[] fields = typeDeclaration.fields;
                if (fields != null) {
                    int i = 0;
                    while (i < fields.length) {
                        if (fields[i] instanceof Initializer) {
                            Initializer initializer = (Initializer)fields[i];
                            if (initializer.bodyStart <= variable.sourceStart && variable.sourceStart < initializer.bodyEnd) {
                                UnresolvedReferenceNameFinder nameFinder = new UnresolvedReferenceNameFinder(this);
                                nameFinder.find(this.completionToken, initializer, typeDeclaration.scope, variable.declarationSourceEnd + 1, discouragedNames, nameRequestor);
                                break;
                            }
                        }
                        ++i;
                    }
                }
            }
            int proposedNamesCount = proposedNames.size();
            if (proposedNamesCount > 0) {
                return (char[][])proposedNames.toArray((T[])new char[proposedNamesCount][]);
            }
        }
        return null;
    }

    private void findVariableName(char[] token, char[] qualifiedPackageName, char[] qualifiedSourceName, char[] sourceName, final TypeBinding typeBinding, char[][] discouragedNames, final char[][] forbiddenNames, boolean forCollection, int dim, int kind) {
        char[] displayName;
        if (sourceName == null || sourceName.length == 0) {
            return;
        }
        if (!forCollection) {
            if (dim > 0) {
                int l = qualifiedSourceName.length;
                displayName = new char[l + 2 * dim];
                System.arraycopy(qualifiedSourceName, 0, displayName, 0, l);
                int i = 0;
                while (i < dim) {
                    displayName[l + i * 2] = 91;
                    displayName[l + i * 2 + 1] = 93;
                    ++i;
                }
            } else {
                displayName = qualifiedSourceName;
            }
        } else {
            displayName = typeBinding.qualifiedSourceName();
        }
        final char[] t = token;
        final char[] q = qualifiedPackageName;
        INamingRequestor namingRequestor = new INamingRequestor(){

            void accept(char[] name, int prefixAndSuffixRelevance, int reusedCharacters) {
                int l = forbiddenNames == null ? 0 : forbiddenNames.length;
                int i = 0;
                while (i < l) {
                    if (CharOperation.equals(forbiddenNames[i], name, false)) {
                        return;
                    }
                    ++i;
                }
                if (CharOperation.prefixEquals(t, name, false)) {
                    int relevance = CompletionEngine.this.computeBaseRelevance();
                    relevance += CompletionEngine.this.computeRelevanceForInterestingProposal();
                    relevance += CompletionEngine.this.computeRelevanceForCaseMatching(t, name);
                    relevance += prefixAndSuffixRelevance;
                    if (reusedCharacters > 0) {
                        relevance += 15;
                    }
                    relevance += CompletionEngine.this.computeRelevanceForRestrictions(0);
                    CompletionEngine.this.noProposal = false;
                    if (!CompletionEngine.this.requestor.isIgnored(10)) {
                        InternalCompletionProposal proposal = CompletionEngine.this.createProposal(10, CompletionEngine.this.actualCompletionPosition);
                        proposal.setSignature(CompletionEngine.getSignature(typeBinding));
                        proposal.setPackageName(q);
                        proposal.setTypeName(displayName);
                        proposal.setName(name);
                        proposal.setCompletion(name);
                        proposal.setReplaceRange(CompletionEngine.this.startPosition - CompletionEngine.this.offset, CompletionEngine.this.endPosition - CompletionEngine.this.offset);
                        proposal.setTokenRange(CompletionEngine.this.tokenStart - CompletionEngine.this.offset, CompletionEngine.this.tokenEnd - CompletionEngine.this.offset);
                        proposal.setRelevance(relevance);
                        CompletionEngine.this.requestor.accept(proposal);
                        if (DEBUG) {
                            CompletionEngine.this.printDebug(proposal);
                        }
                    }
                }
            }

            public void acceptNameWithoutPrefixAndSuffix(char[] name, int reusedCharacters) {
                this.accept(name, 0, reusedCharacters);
            }

            public void acceptNameWithPrefix(char[] name, boolean isFirstPrefix, int reusedCharacters) {
                this.accept(name, isFirstPrefix ? 6 : 5, reusedCharacters);
            }

            public void acceptNameWithPrefixAndSuffix(char[] name, boolean isFirstPrefix, boolean isFirstSuffix, int reusedCharacters) {
                this.accept(name, (isFirstPrefix ? 6 : 5) + (isFirstSuffix ? 4 : 3), reusedCharacters);
            }

            public void acceptNameWithSuffix(char[] name, boolean isFirstSuffix, int reusedCharacters) {
                this.accept(name, isFirstSuffix ? 4 : 3, reusedCharacters);
            }
        };
        InternalNamingConventions.suggestVariableNames(kind, 2, qualifiedSourceName, this.javaProject, dim, token, discouragedNames, true, namingRequestor);
    }

    private void findVariableName(char[] token, char[] qualifiedPackageName, char[] qualifiedSourceName, char[] sourceName, TypeBinding typeBinding, char[][] discouragedNames, char[][] forbiddenNames, int dim, int kind) {
        this.findVariableName(token, qualifiedPackageName, qualifiedSourceName, sourceName, typeBinding, discouragedNames, forbiddenNames, false, dim, kind);
    }

    private void findVariableNameForCollection(char[] token, char[] qualifiedPackageName, char[] qualifiedSourceName, char[] sourceName, TypeBinding typeBinding, char[][] discouragedNames, char[][] forbiddenNames, int kind) {
        this.findVariableName(token, qualifiedPackageName, qualifiedSourceName, sourceName, typeBinding, discouragedNames, forbiddenNames, false, 1, kind);
    }

    private void findVariableNames(char[] name, TypeReference type, char[][] discouragedNames, char[][] forbiddenNames, int kind) {
        TypeBinding tb;
        if (type != null && type.resolvedType != null && (tb = type.resolvedType).problemId() == 0 && tb != Scope.getBaseType(VOID)) {
            this.findVariableName(name, tb.leafComponentType().qualifiedPackageName(), tb.leafComponentType().qualifiedSourceName(), tb.leafComponentType().sourceName(), tb, discouragedNames, forbiddenNames, type.dimensions(), kind);
            if (tb.isParameterizedType() && tb.findSuperTypeOriginatingFrom(59, false) != null) {
                ParameterizedTypeBinding ptb = (ParameterizedTypeBinding)tb;
                TypeBinding[] arguments = ptb.arguments;
                if (arguments != null && arguments.length == 1) {
                    TypeBinding argument = arguments[0];
                    this.findVariableNameForCollection(name, argument.leafComponentType().qualifiedPackageName(), argument.leafComponentType().qualifiedSourceName(), argument.leafComponentType().sourceName(), tb, discouragedNames, forbiddenNames, kind);
                }
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    private void findVariablesAndMethods(char[] token, Scope scope, InvocationSite invocationSite, Scope invocationScope, boolean insideTypeAnnotation, boolean insideAnnotationAttribute) {
        block28: {
            block27: {
                if (token == null) {
                    return;
                }
                staticsOnly = false;
                tokenLength = token.length;
                localsFound = new ObjectVector();
                fieldsFound = new ObjectVector();
                methodsFound = new ObjectVector();
                currentScope = scope;
                if (this.requestor.isIgnored(5)) break block27;
                block10: while (true) {
                    switch (currentScope.kind) {
                        case 2: {
                            methodScope = (MethodScope)currentScope;
                            staticsOnly |= methodScope.isStatic | methodScope.isConstructorCall;
                        }
                        case 1: {
                            blockScope = (BlockScope)currentScope;
                            i = 0;
                            length = blockScope.locals.length;
                            while (i < length) {
                                local = blockScope.locals[i];
                                if (local == null) ** GOTO lbl69
                                if (tokenLength <= local.name.length && (CharOperation.prefixEquals(token, local.name, false) || this.options.camelCaseMatch && CharOperation.camelCaseMatch(token, local.name)) && !local.isSecret() && local.declaration.initialization == null && (!this.assistNodeIsInsideCase || local.isFinal() && !(this.assistNodeIsString != false ? local.type == null || local.type.id != 11 : local.type instanceof BaseTypeBinding == false))) {
                                    ptr = this.uninterestingBindingsPtr;
                                    while (ptr >= 0) {
                                        if (this.uninterestingBindings[ptr] != local) {
                                            --ptr;
                                            continue;
                                        }
                                        ** GOTO lbl64
                                    }
                                    f = 0;
                                    while (f < localsFound.size) {
                                        otherLocal = (LocalVariableBinding)localsFound.elementAt(f);
                                        if (!CharOperation.equals(otherLocal.name, local.name, true)) {
                                            ++f;
                                            continue;
                                        }
                                        ** GOTO lbl64
                                    }
                                    localsFound.add(local);
                                    relevance = this.computeBaseRelevance();
                                    relevance += this.computeRelevanceForResolution();
                                    relevance += this.computeRelevanceForInterestingProposal(local);
                                    relevance += this.computeRelevanceForCaseMatching(token, local.name);
                                    relevance += this.computeRelevanceForExpectingType(local.type);
                                    relevance += this.computeRelevanceForEnumConstant(local.type);
                                    relevance += this.computeRelevanceForQualification(false);
                                    relevance += this.computeRelevanceForRestrictions(0);
                                    relevance += this.computeRelevanceForFinal(this.assistNodeIsInsideCase, local.isFinal());
                                    this.noProposal = false;
                                    if (!this.requestor.isIgnored(5)) {
                                        proposal = this.createProposal(5, this.actualCompletionPosition);
                                        proposal.setSignature(local.type == null ? CompletionEngine.createTypeSignature(CharOperation.NO_CHAR, local.declaration.type.toString().toCharArray()) : CompletionEngine.getSignature(local.type));
                                        if (local.type == null) {
                                            proposal.setTypeName(local.declaration.type.toString().toCharArray());
                                        } else {
                                            proposal.setPackageName(local.type.qualifiedPackageName());
                                            proposal.setTypeName(local.type.qualifiedSourceName());
                                        }
                                        proposal.setName(local.name);
                                        proposal.setCompletion(local.name);
                                        proposal.setFlags(local.modifiers);
                                        proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
                                        proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                                        proposal.setRelevance(relevance);
                                        this.requestor.accept(proposal);
                                        if (CompletionEngine.DEBUG) {
                                            this.printDebug(proposal);
                                        }
                                    }
                                }
lbl64:
                                // 9 sources

                                ++i;
                            }
                            ** GOTO lbl69
                        }
                        case 4: {
                            break block10;
                        }
lbl69:
                        // 3 sources

                        default: {
                            currentScope = currentScope.parent;
                            continue block10;
                        }
                    }
                    break;
                }
            }
            this.checkCancel();
            proposeField = this.requestor.isIgnored(2) == false;
            proposeMethod = this.requestor.isIgnored(6) == false;
            staticsOnly = false;
            currentScope = scope;
            if (!proposeField && !proposeMethod) break block28;
            block14: while (true) {
                switch (currentScope.kind) {
                    case 2: {
                        methodScope = (MethodScope)currentScope;
                        staticsOnly |= methodScope.isStatic | methodScope.isConstructorCall;
                        ** GOTO lbl98
                    }
                    case 3: {
                        classScope = (ClassScope)currentScope;
                        enclosingType = classScope.referenceContext.binding;
                        if (!insideTypeAnnotation) {
                            if (proposeField) {
                                this.findFields(token, enclosingType, classScope, fieldsFound, localsFound, staticsOnly, invocationSite, invocationScope, true, true, null, null, null, false, null, -1, -1);
                            }
                            if (proposeMethod && !insideAnnotationAttribute) {
                                this.findMethods(token, null, null, enclosingType, classScope, methodsFound, staticsOnly, false, invocationSite, invocationScope, true, false, true, null, null, null, false, null, -1, -1);
                            }
                        }
                        staticsOnly |= enclosingType.isStatic();
                        insideTypeAnnotation = false;
                        ** GOTO lbl98
                    }
                    case 4: {
                        break block14;
                    }
lbl98:
                    // 3 sources

                    default: {
                        currentScope = currentScope.parent;
                        continue block14;
                    }
                }
                break;
            }
            this.checkCancel();
            this.findFieldsAndMethodsFromStaticImports(token, scope, invocationSite, invocationScope, false, insideAnnotationAttribute, localsFound, fieldsFound, methodsFound, proposeField, proposeMethod);
            if (this.assistNodeInJavadoc == 0) {
                this.checkCancel();
                this.findFieldsAndMethodsFromFavorites(token, scope, invocationSite, invocationScope, localsFound, fieldsFound, methodsFound);
            }
            this.checkCancel();
            this.findEnumConstantsFromExpectedTypes(token, invocationScope, fieldsFound);
        }
    }

    private char[] getCompletedTypeSignature(ReferenceBinding referenceBinding) {
        char[] typeSig;
        char[] result = null;
        StringBuffer sig = new StringBuffer(10);
        if (!referenceBinding.isMemberType()) {
            typeSig = referenceBinding.genericTypeSignature();
            sig.append(typeSig, 0, typeSig.length);
        } else if (!this.insideQualifiedReference) {
            if (referenceBinding.isStatic()) {
                typeSig = referenceBinding.signature();
                sig.append(typeSig, 0, typeSig.length - 1);
                TypeVariableBinding[] typeVariables = referenceBinding.typeVariables();
                if (typeVariables != Binding.NO_TYPE_VARIABLES) {
                    sig.append('<');
                    int i = 0;
                    int length = typeVariables.length;
                    while (i < length) {
                        sig.append(typeVariables[i].genericTypeSignature());
                        ++i;
                    }
                    sig.append('>');
                }
                sig.append(';');
            } else {
                typeSig = referenceBinding.genericTypeSignature();
                sig.append(typeSig, 0, typeSig.length);
            }
        } else {
            ReferenceBinding enclosingType = referenceBinding.enclosingType();
            if (enclosingType.isParameterizedType()) {
                char[] typeSig2 = referenceBinding.genericTypeSignature();
                sig.append(typeSig2, 0, typeSig2.length - 1);
                TypeVariableBinding[] typeVariables = referenceBinding.typeVariables();
                if (typeVariables != Binding.NO_TYPE_VARIABLES) {
                    sig.append('<');
                    int i = 0;
                    int length = typeVariables.length;
                    while (i < length) {
                        sig.append(typeVariables[i].genericTypeSignature());
                        ++i;
                    }
                    sig.append('>');
                }
            } else {
                TypeVariableBinding[] typeVariables;
                char[] typeSig3 = referenceBinding.signature();
                sig.append(typeSig3, 0, typeSig3.length - 1);
                if (referenceBinding.isStatic() && (typeVariables = referenceBinding.typeVariables()) != Binding.NO_TYPE_VARIABLES) {
                    sig.append('<');
                    int i = 0;
                    int length = typeVariables.length;
                    while (i < length) {
                        sig.append(typeVariables[i].genericTypeSignature());
                        ++i;
                    }
                    sig.append('>');
                }
            }
            sig.append(';');
        }
        int sigLength = sig.length();
        result = new char[sigLength];
        sig.getChars(0, sigLength, result, 0);
        result = CharOperation.replaceOnCopy(result, '/', '.');
        return result;
    }

    private ImportBinding[] getFavoriteReferenceBindings(Scope scope) {
        if (this.favoriteReferenceBindings != null) {
            return this.favoriteReferenceBindings;
        }
        String[] favoriteReferences = this.requestor.getFavoriteReferences();
        if (favoriteReferences == null || favoriteReferences.length == 0) {
            return null;
        }
        ImportBinding[] resolvedImports = new ImportBinding[favoriteReferences.length];
        int count = 0;
        int i = 0;
        while (i < favoriteReferences.length) {
            block9: {
                int length;
                String favoriteReference = favoriteReferences[i];
                if (favoriteReference != null && (length = favoriteReference.length()) != 0) {
                    boolean onDemand = favoriteReference.charAt(length - 1) == '*';
                    char[][] compoundName = CharOperation.splitOn('.', favoriteReference.toCharArray());
                    if (onDemand) {
                        compoundName = CharOperation.subarray(compoundName, 0, compoundName.length - 1);
                    }
                    int j = 0;
                    while (j < count) {
                        ImportReference f = resolvedImports[j].reference;
                        if (!(CharOperation.equals(f.tokens, compoundName) || !onDemand && (f.bits & 0x20000) == 0 && CharOperation.equals(f.tokens[f.tokens.length - 1], compoundName[compoundName.length - 1]))) {
                            ++j;
                            continue;
                        }
                        break block9;
                    }
                    boolean isStatic = true;
                    ImportReference importReference = new ImportReference(compoundName, new long[compoundName.length], onDemand, isStatic ? 8 : 0);
                    Binding importBinding = this.unitScope.findImport(compoundName, isStatic, onDemand);
                    if (importBinding.isValidBinding() && !(importBinding instanceof PackageBinding)) {
                        resolvedImports[count++] = new ImportBinding(compoundName, onDemand, importBinding, importReference);
                    }
                }
            }
            ++i;
        }
        if (resolvedImports.length > count) {
            ImportBinding[] importBindingArray = resolvedImports;
            resolvedImports = new ImportBinding[count];
            System.arraycopy(importBindingArray, 0, resolvedImports, 0, count);
        }
        this.favoriteReferenceBindings = resolvedImports;
        return resolvedImports;
    }

    private INameEnvironment getNoCacheNameEnvironment() {
        if (this.noCacheNameEnvironment == null) {
            JavaModelManager.getJavaModelManager().cacheZipFiles(this);
            this.noCacheNameEnvironment = new JavaSearchNameEnvironment(this.javaProject, this.owner == null ? null : JavaModelManager.getJavaModelManager().getWorkingCopies(this.owner, true));
        }
        return this.noCacheNameEnvironment;
    }

    public AssistParser getParser() {
        return this.parser;
    }

    protected boolean hasArrayTypeAsExpectedSuperTypes() {
        if ((this.expectedTypesFilter & 0xFFFFFFFD) != 0) {
            return false;
        }
        if (!this.hasComputedExpectedArrayTypes) {
            if (this.expectedTypes != null) {
                int i = 0;
                while (i <= this.expectedTypesPtr) {
                    if (this.expectedTypes[i].isArrayType()) {
                        this.hasExpectedArrayTypes = true;
                        break;
                    }
                    ++i;
                }
            }
            this.hasComputedExpectedArrayTypes = true;
        }
        return this.hasExpectedArrayTypes;
    }

    protected boolean hasPossibleAnnotationTarget(TypeBinding typeBinding, Scope scope) {
        if (this.targetedElement == 0x80000000000L) {
            long target = typeBinding.getAnnotationTagBits() & 0xFF800000000L;
            if (target != 0L && (target & 0x80000000000L) == 0L) {
                return false;
            }
        } else if ((this.targetedElement & 0x1000000000L) != 0L && scope.parent != null && scope.parent.parent != null && scope.parent.referenceContext() instanceof CompletionOnAnnotationOfType && scope.parent.parent instanceof CompilationUnitScope) {
            long target = typeBinding.getAnnotationTagBits() & 0xFF800000000L;
            if ((this.targetedElement & 0x40000000000L) != 0L ? target != 0L && (target & 0x41000000000L) == 0L : target != 0L && (target & 0x1000000000L) == 0L) {
                return false;
            }
        }
        return true;
    }

    private char[] inlineTagCompletion(char[] completionName, char[] inlineTag) {
        int tagLength = inlineTag.length;
        int completionLength = completionName.length;
        int inlineLength = 2 + tagLength + 1 + completionLength + 1;
        char[] inlineCompletion = new char[inlineLength];
        inlineCompletion[0] = 123;
        inlineCompletion[1] = 64;
        System.arraycopy(inlineTag, 0, inlineCompletion, 2, tagLength);
        inlineCompletion[tagLength + 2] = 32;
        System.arraycopy(completionName, 0, inlineCompletion, tagLength + 3, completionLength);
        inlineCompletion[inlineLength - 1] = 125;
        return inlineCompletion;
    }

    private boolean isAllowingLongComputationProposals() {
        return this.monitor != null;
    }

    private boolean isForbidden(Binding binding) {
        int i = 0;
        while (i <= this.forbbidenBindingsPtr) {
            if (this.forbbidenBindings[i] == binding) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean isForbiddenType(char[] givenPkgName, char[] givenTypeName, char[][] enclosingTypeNames) {
        char[] fullTypeName = CharOperation.concatWith(enclosingTypeNames, givenTypeName, '.');
        int i = 0;
        while (i <= this.forbbidenBindingsPtr) {
            char[] currTypeName;
            TypeBinding typeBinding;
            char[] currPkgName;
            if (this.forbbidenBindings[i] instanceof TypeBinding && CharOperation.equals(givenPkgName, currPkgName = (typeBinding = (TypeBinding)this.forbbidenBindings[i]).qualifiedPackageName()) && CharOperation.equals(fullTypeName, currTypeName = typeBinding.qualifiedSourceName())) {
                return true;
            }
            ++i;
        }
        return this.compilerOptions.sourceLevel >= 0x310000L && CharOperation.endsWith(givenPkgName, DOT_ENUM);
    }

    private boolean isIgnored(int kind) {
        return this.requestor.isIgnored(kind);
    }

    boolean isIgnored(int kind, boolean missingTypes) {
        return this.requestor.isIgnored(kind) || missingTypes && !this.requestor.isAllowingRequiredProposals(kind, 9);
    }

    private boolean isIgnored(int kind, int requiredProposalKind) {
        return this.requestor.isIgnored(kind) || !this.requestor.isAllowingRequiredProposals(kind, requiredProposalKind);
    }

    private boolean isValidParent(ASTNode parent, ASTNode node, Scope scope) {
        if (parent instanceof ParameterizedSingleTypeReference) {
            ParameterizedSingleTypeReference ref = (ParameterizedSingleTypeReference)parent;
            TypeVariableBinding[] typeVariables = ((ReferenceBinding)ref.resolvedType).typeVariables();
            int length = ref.typeArguments == null ? 0 : ref.typeArguments.length;
            int nodeIndex = -1;
            int i = length - 1;
            while (i > -1) {
                if (node == ref.typeArguments[i]) {
                    nodeIndex = i;
                    break;
                }
                --i;
            }
            if (nodeIndex > -1 && (typeVariables == null || typeVariables.length < nodeIndex + 1)) {
                TypeBinding[] typeBindings = new TypeBinding[nodeIndex + 1];
                int i2 = 0;
                while (i2 < nodeIndex) {
                    typeBindings[i2] = ref.typeArguments[i2].resolvedType;
                    ++i2;
                }
                typeBindings[nodeIndex] = scope.getJavaLangObject();
                if (typeVariables == null || typeVariables.length == 0) {
                    scope.problemReporter().nonGenericTypeCannotBeParameterized(0, ref, ref.resolvedType, typeBindings);
                } else {
                    scope.problemReporter().incorrectArityForParameterizedType(ref, ref.resolvedType, typeBindings);
                }
                return false;
            }
        } else if (parent instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference ref = (ParameterizedQualifiedTypeReference)parent;
            TypeVariableBinding[] typeVariables = ((ReferenceBinding)ref.resolvedType).typeVariables();
            TypeReference[][] arguments = ref.typeArguments;
            int iLength = arguments == null ? 0 : arguments.length;
            int i = 0;
            while (i < iLength) {
                int jLength = arguments[i] == null ? 0 : arguments[i].length;
                int j = 0;
                while (j < jLength) {
                    if (arguments[i][j] == node && (typeVariables == null || typeVariables.length <= j)) {
                        TypeBinding[] typeBindings = new TypeBinding[j + 1];
                        int k = 0;
                        while (k < j) {
                            typeBindings[k] = ref.typeArguments[i][k].resolvedType;
                            ++k;
                        }
                        typeBindings[j] = scope.getJavaLangObject();
                        if (typeVariables == null || typeVariables.length == 0) {
                            scope.problemReporter().nonGenericTypeCannotBeParameterized(0, ref, ref.resolvedType, typeBindings);
                        } else {
                            scope.problemReporter().incorrectArityForParameterizedType(ref, ref.resolvedType, typeBindings);
                        }
                        return false;
                    }
                    ++j;
                }
                ++i;
            }
        }
        return true;
    }

    private boolean mustQualifyType(ReferenceBinding type, char[] packageName, Scope scope) {
        if (!this.mustQualifyType(packageName, type.sourceName(), type.isMemberType() ? type.enclosingType().qualifiedSourceName() : null, type.modifiers)) {
            return false;
        }
        ReferenceBinding enclosingType = scope.enclosingSourceType();
        while (enclosingType != null) {
            ReferenceBinding currentType = enclosingType;
            while (currentType != null) {
                ReferenceBinding[] memberTypes = ((ReferenceBinding)currentType).memberTypes();
                if (memberTypes != null) {
                    int i = 0;
                    while (i < memberTypes.length) {
                        if (CharOperation.equals(memberTypes[i].sourceName, type.sourceName()) && memberTypes[i].canBeSeenBy(scope)) {
                            return memberTypes[i] != type;
                        }
                        ++i;
                    }
                }
                currentType = ((ReferenceBinding)currentType).superclass();
            }
            enclosingType = enclosingType.enclosingType();
        }
        return true;
    }

    private Initializer parseSnippeInitializer(char[] snippet, int position, char[][] localVariableTypeNames, char[][] localVariableNames, int[] localVariableModifiers, boolean isStatic) {
        StringBuffer prefix = new StringBuffer();
        prefix.append("public class FakeType {\n ");
        if (isStatic) {
            prefix.append("static ");
        }
        prefix.append("{\n");
        int i = 0;
        while (i < localVariableTypeNames.length) {
            ASTNode.printModifiers(localVariableModifiers[i], prefix);
            prefix.append(' ');
            prefix.append(localVariableTypeNames[i]);
            prefix.append(' ');
            prefix.append(localVariableNames[i]);
            prefix.append(';');
            ++i;
        }
        char[] fakeSource = CharOperation.concat(prefix.toString().toCharArray(), snippet, "}}".toCharArray());
        this.offset = prefix.length();
        String encoding = this.compilerOptions.defaultEncoding;
        BasicCompilationUnit fakeUnit = new BasicCompilationUnit(fakeSource, null, "FakeType.java", encoding);
        this.actualCompletionPosition = prefix.length() + position - 1;
        CompilationResult fakeResult = new CompilationResult(fakeUnit, 1, 1, this.compilerOptions.maxProblemsPerUnit);
        CompilationUnitDeclaration fakeAST = this.parser.dietParse(fakeUnit, fakeResult, this.actualCompletionPosition);
        this.parseBlockStatements(fakeAST, this.actualCompletionPosition);
        return (Initializer)fakeAST.types[0].fields[0];
    }

    protected void printDebug(CategorizedProblem error) {
        if (DEBUG) {
            System.out.print("COMPLETION - completionFailure(");
            System.out.print(error);
            System.out.println(")");
        }
    }

    protected void printDebug(CompletionProposal proposal) {
        StringBuffer buffer = new StringBuffer();
        this.printDebug(proposal, 0, buffer);
        System.out.println(buffer.toString());
    }

    private void printDebug(CompletionProposal proposal, int tab, StringBuffer buffer) {
        this.printDebugTab(tab, buffer);
        buffer.append("COMPLETION - ");
        switch (proposal.getKind()) {
            case 1: {
                buffer.append("ANONYMOUS_CLASS_DECLARATION");
                break;
            }
            case 2: {
                buffer.append("FIELD_REF");
                break;
            }
            case 25: {
                buffer.append("FIELD_REF_WITH_CASTED_RECEIVER");
                break;
            }
            case 3: {
                buffer.append("KEYWORD");
                break;
            }
            case 4: {
                buffer.append("LABEL_REF");
                break;
            }
            case 5: {
                buffer.append("LOCAL_VARIABLE_REF");
                break;
            }
            case 7: {
                buffer.append("METHOD_DECLARATION");
                break;
            }
            case 6: {
                buffer.append("METHOD_REF");
                break;
            }
            case 24: {
                buffer.append("METHOD_REF_WITH_CASTED_RECEIVER");
                break;
            }
            case 8: {
                buffer.append("PACKAGE_REF");
                break;
            }
            case 9: {
                buffer.append("TYPE_REF");
                break;
            }
            case 10: {
                buffer.append("VARIABLE_DECLARATION");
                break;
            }
            case 11: {
                buffer.append("POTENTIAL_METHOD_DECLARATION");
                break;
            }
            case 12: {
                buffer.append("METHOD_NAME_REFERENCE");
                break;
            }
            case 13: {
                buffer.append("ANNOTATION_ATTRIBUT_REF");
                break;
            }
            case 21: {
                buffer.append("FIELD_IMPORT");
                break;
            }
            case 22: {
                buffer.append("METHOD_IMPORT");
                break;
            }
            case 23: {
                buffer.append("TYPE_IMPORT");
                break;
            }
            case 26: {
                buffer.append("CONSTRUCTOR_INVOCATION");
                break;
            }
            case 27: {
                buffer.append("ANONYMOUS_CLASS_CONSTRUCTOR_INVOCATION");
                break;
            }
            default: {
                buffer.append("PROPOSAL");
            }
        }
        buffer.append("{\n");
        this.printDebugTab(tab, buffer);
        buffer.append("\tCompletion[").append(proposal.getCompletion() == null ? "null".toCharArray() : proposal.getCompletion()).append("]\n");
        this.printDebugTab(tab, buffer);
        buffer.append("\tDeclarationSignature[").append(proposal.getDeclarationSignature() == null ? "null".toCharArray() : proposal.getDeclarationSignature()).append("]\n");
        this.printDebugTab(tab, buffer);
        buffer.append("\tDeclarationKey[").append(proposal.getDeclarationKey() == null ? "null".toCharArray() : proposal.getDeclarationKey()).append("]\n");
        this.printDebugTab(tab, buffer);
        buffer.append("\tSignature[").append(proposal.getSignature() == null ? "null".toCharArray() : proposal.getSignature()).append("]\n");
        this.printDebugTab(tab, buffer);
        buffer.append("\tKey[").append(proposal.getKey() == null ? "null".toCharArray() : proposal.getKey()).append("]\n");
        this.printDebugTab(tab, buffer);
        buffer.append("\tName[").append(proposal.getName() == null ? "null".toCharArray() : proposal.getName()).append("]\n");
        this.printDebugTab(tab, buffer);
        buffer.append("\tFlags[");
        int flags = proposal.getFlags();
        buffer.append(Flags.toString(flags));
        if ((flags & 0x200) != 0) {
            buffer.append("interface ");
        }
        if ((flags & 0x4000) != 0) {
            buffer.append("enum ");
        }
        buffer.append("]\n");
        CompletionProposal[] proposals = proposal.getRequiredProposals();
        if (proposals != null) {
            this.printDebugTab(tab, buffer);
            buffer.append("\tRequiredProposals[");
            int i = 0;
            while (i < proposals.length) {
                buffer.append("\n");
                this.printDebug(proposals[i], tab + 2, buffer);
                ++i;
            }
            this.printDebugTab(tab, buffer);
            buffer.append("\n\t]\n");
        }
        this.printDebugTab(tab, buffer);
        buffer.append("\tCompletionLocation[").append(proposal.getCompletionLocation()).append("]\n");
        int start = proposal.getReplaceStart();
        int end = proposal.getReplaceEnd();
        this.printDebugTab(tab, buffer);
        buffer.append("\tReplaceStart[").append(start).append("]");
        buffer.append("-ReplaceEnd[").append(end).append("]\n");
        start = proposal.getTokenStart();
        end = proposal.getTokenEnd();
        this.printDebugTab(tab, buffer);
        buffer.append("\tTokenStart[").append(start).append("]");
        buffer.append("-TokenEnd[").append(end).append("]\n");
        if (this.source != null) {
            this.printDebugTab(tab, buffer);
            buffer.append("\tReplacedText[").append(this.source, start, end - start).append("]\n");
        }
        this.printDebugTab(tab, buffer);
        buffer.append("\tTokenStart[").append(proposal.getTokenStart()).append("]");
        buffer.append("-TokenEnd[").append(proposal.getTokenEnd()).append("]\n");
        this.printDebugTab(tab, buffer);
        buffer.append("\tRelevance[").append(proposal.getRelevance()).append("]\n");
        this.printDebugTab(tab, buffer);
        buffer.append("}\n");
    }

    private void printDebugTab(int tab, StringBuffer buffer) {
        int i = 0;
        while (i < tab) {
            buffer.append('\t');
            ++i;
        }
    }

    private void proposeConstructor(AcceptedConstructor deferredProposal, Scope scope) {
        if (deferredProposal.proposeConstructor) {
            this.proposeConstructor(deferredProposal.simpleTypeName, deferredProposal.parameterCount, deferredProposal.signature, deferredProposal.parameterTypes, deferredProposal.parameterNames, deferredProposal.modifiers, deferredProposal.packageName, deferredProposal.typeModifiers, deferredProposal.accessibility, deferredProposal.simpleTypeName, deferredProposal.fullyQualifiedName, deferredProposal.mustBeQualified, scope, deferredProposal.extraFlags);
        }
    }

    private void proposeConstructor(char[] simpleTypeName, int parameterCount, char[] signature, char[][] parameterTypes, char[][] parameterNames, int modifiers, char[] packageName, int typeModifiers, int accessibility, char[] typeName, char[] fullyQualifiedName, boolean isQualified, Scope scope, int extraFlags) {
        char[] typeCompletion = fullyQualifiedName;
        if (isQualified) {
            if ((packageName == null || packageName.length == 0) && this.unitScope != null && this.unitScope.fPackage.compoundName != CharOperation.NO_CHAR_CHAR) {
                return;
            }
        } else {
            typeCompletion = simpleTypeName;
        }
        int relevance = this.computeBaseRelevance();
        relevance += this.computeRelevanceForResolution();
        relevance += this.computeRelevanceForInterestingProposal();
        relevance += this.computeRelevanceForRestrictions(accessibility);
        relevance += this.computeRelevanceForCaseMatching(this.completionToken, simpleTypeName);
        relevance += this.computeRelevanceForExpectingType(packageName, simpleTypeName);
        relevance += this.computeRelevanceForQualification(isQualified);
        boolean isInterface = false;
        int kind = typeModifiers & 0x6200;
        switch (kind) {
            case 8192: 
            case 8704: {
                relevance += this.computeRelevanceForAnnotation();
                relevance += this.computeRelevanceForInterface();
                isInterface = true;
                break;
            }
            case 16384: {
                relevance += this.computeRelevanceForEnum();
                break;
            }
            case 512: {
                relevance += this.computeRelevanceForInterface();
                isInterface = true;
                break;
            }
            default: {
                relevance += this.computeRelevanceForClass();
                relevance += this.computeRelevanceForException(simpleTypeName);
            }
        }
        char[] completion = this.source != null && this.source.length > this.endPosition && this.source[this.endPosition] == '(' ? CharOperation.NO_CHAR : new char[]{'(', ')'};
        InternalCompletionProposal typeProposal = this.createProposal(9, this.actualCompletionPosition);
        typeProposal.nameLookup = this.nameEnvironment.nameLookup;
        typeProposal.completionEngine = this;
        typeProposal.setDeclarationSignature(packageName);
        typeProposal.setSignature(CompletionEngine.createNonGenericTypeSignature(packageName, typeName));
        typeProposal.setPackageName(packageName);
        typeProposal.setTypeName(typeName);
        typeProposal.setCompletion(typeCompletion);
        typeProposal.setFlags(typeModifiers);
        typeProposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
        typeProposal.setTokenRange(this.startPosition - this.offset, this.endPosition - this.offset);
        typeProposal.setRelevance(relevance);
        switch (parameterCount) {
            case -1: {
                int flags = 1;
                if (Flags.isDeprecated(typeModifiers)) {
                    flags |= 0x100000;
                }
                if (isInterface || (typeModifiers & 0x400) != 0) {
                    this.noProposal = false;
                    if (this.isIgnored(27, 9)) break;
                    InternalCompletionProposal proposal = this.createProposal(27, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.createNonGenericTypeSignature(packageName, typeName));
                    proposal.setDeclarationKey(CompletionEngine.createBindingKey(packageName, typeName));
                    proposal.setSignature(DEFAULT_CONSTRUCTOR_SIGNATURE);
                    proposal.setDeclarationPackageName(packageName);
                    proposal.setDeclarationTypeName(typeName);
                    proposal.setParameterPackageNames(CharOperation.NO_CHAR_CHAR);
                    proposal.setParameterTypeNames(CharOperation.NO_CHAR_CHAR);
                    proposal.setParameterNames(CharOperation.NO_CHAR_CHAR);
                    proposal.setName(simpleTypeName);
                    proposal.setRequiredProposals(new CompletionProposal[]{typeProposal});
                    proposal.setIsContructor(true);
                    proposal.setCompletion(completion);
                    proposal.setFlags(flags);
                    proposal.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (!DEBUG) break;
                    this.printDebug(proposal);
                    break;
                }
                this.noProposal = false;
                if (this.isIgnored(26, 9)) break;
                InternalCompletionProposal proposal = this.createProposal(26, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.createNonGenericTypeSignature(packageName, typeName));
                proposal.setSignature(DEFAULT_CONSTRUCTOR_SIGNATURE);
                proposal.setDeclarationPackageName(packageName);
                proposal.setDeclarationTypeName(typeName);
                proposal.setParameterPackageNames(CharOperation.NO_CHAR_CHAR);
                proposal.setParameterTypeNames(CharOperation.NO_CHAR_CHAR);
                proposal.setParameterNames(CharOperation.NO_CHAR_CHAR);
                proposal.setName(simpleTypeName);
                proposal.setRequiredProposals(new CompletionProposal[]{typeProposal});
                proposal.setIsContructor(true);
                proposal.setCompletion(completion);
                proposal.setFlags(flags);
                proposal.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                this.requestor.accept(proposal);
                if (!DEBUG) break;
                this.printDebug(proposal);
                break;
            }
            case 0: {
                if ((typeModifiers & 0x400) != 0) {
                    this.noProposal = false;
                    if (this.isIgnored(27, 9)) break;
                    InternalCompletionProposal proposal = this.createProposal(27, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.createNonGenericTypeSignature(packageName, typeName));
                    proposal.setDeclarationKey(CompletionEngine.createBindingKey(packageName, typeName));
                    proposal.setSignature(DEFAULT_CONSTRUCTOR_SIGNATURE);
                    proposal.setDeclarationPackageName(packageName);
                    proposal.setDeclarationTypeName(typeName);
                    proposal.setParameterPackageNames(CharOperation.NO_CHAR_CHAR);
                    proposal.setParameterTypeNames(CharOperation.NO_CHAR_CHAR);
                    proposal.setParameterNames(CharOperation.NO_CHAR_CHAR);
                    proposal.setName(simpleTypeName);
                    proposal.setRequiredProposals(new CompletionProposal[]{typeProposal});
                    proposal.setIsContructor(true);
                    proposal.setCompletion(completion);
                    proposal.setFlags(modifiers);
                    proposal.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (!DEBUG) break;
                    this.printDebug(proposal);
                    break;
                }
                this.noProposal = false;
                if (this.isIgnored(26, 9)) break;
                InternalCompletionProposal proposal = this.createProposal(26, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.createNonGenericTypeSignature(packageName, typeName));
                proposal.setSignature(DEFAULT_CONSTRUCTOR_SIGNATURE);
                proposal.setDeclarationPackageName(packageName);
                proposal.setDeclarationTypeName(typeName);
                proposal.setParameterPackageNames(CharOperation.NO_CHAR_CHAR);
                proposal.setParameterTypeNames(CharOperation.NO_CHAR_CHAR);
                proposal.setParameterNames(CharOperation.NO_CHAR_CHAR);
                proposal.setName(simpleTypeName);
                proposal.setRequiredProposals(new CompletionProposal[]{typeProposal});
                proposal.setIsContructor(true);
                proposal.setCompletion(completion);
                proposal.setFlags(modifiers);
                proposal.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                this.requestor.accept(proposal);
                if (!DEBUG) break;
                this.printDebug(proposal);
                break;
            }
            default: {
                int parameterNamesLength;
                if (signature == null) {
                    signature = this.getResolvedSignature(parameterTypes, fullyQualifiedName, parameterCount, scope);
                    if (signature == null) {
                        return;
                    }
                } else {
                    signature = CharOperation.replaceOnCopy(signature, '/', '.');
                }
                int n = parameterNamesLength = parameterNames == null ? 0 : parameterNames.length;
                if (parameterCount != parameterNamesLength) {
                    parameterNames = null;
                }
                if ((typeModifiers & 0x400) != 0) {
                    this.noProposal = false;
                    if (this.isIgnored(27, 9)) break;
                    InternalCompletionProposal proposal = this.createProposal(27, this.actualCompletionPosition);
                    proposal.setDeclarationSignature(CompletionEngine.createNonGenericTypeSignature(packageName, typeName));
                    proposal.setDeclarationKey(CompletionEngine.createBindingKey(packageName, typeName));
                    proposal.setSignature(signature);
                    proposal.setDeclarationPackageName(packageName);
                    proposal.setDeclarationTypeName(typeName);
                    proposal.setParameterPackageNames(CharOperation.NO_CHAR_CHAR);
                    proposal.setParameterTypeNames(CharOperation.NO_CHAR_CHAR);
                    if (parameterNames != null) {
                        proposal.setParameterNames(parameterNames);
                    } else {
                        proposal.setHasNoParameterNamesFromIndex(true);
                    }
                    proposal.setName(simpleTypeName);
                    proposal.setRequiredProposals(new CompletionProposal[]{typeProposal});
                    proposal.setIsContructor(true);
                    proposal.setCompletion(completion);
                    proposal.setFlags(modifiers);
                    proposal.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                    proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                    proposal.setRelevance(relevance);
                    this.requestor.accept(proposal);
                    if (!DEBUG) break;
                    this.printDebug(proposal);
                    break;
                }
                this.noProposal = false;
                if (this.isIgnored(26, 9)) break;
                InternalCompletionProposal proposal = this.createProposal(26, this.actualCompletionPosition);
                proposal.setDeclarationSignature(CompletionEngine.createNonGenericTypeSignature(packageName, typeName));
                proposal.setSignature(signature);
                proposal.setDeclarationPackageName(packageName);
                proposal.setDeclarationTypeName(typeName);
                proposal.setParameterPackageNames(CharOperation.NO_CHAR_CHAR);
                proposal.setParameterTypeNames(CharOperation.NO_CHAR_CHAR);
                if (parameterNames != null) {
                    proposal.setParameterNames(parameterNames);
                } else {
                    proposal.setHasNoParameterNamesFromIndex(true);
                }
                proposal.setName(simpleTypeName);
                proposal.setRequiredProposals(new CompletionProposal[]{typeProposal});
                proposal.setIsContructor(true);
                proposal.setCompletion(completion);
                proposal.setFlags(modifiers);
                proposal.setReplaceRange(this.endPosition - this.offset, this.endPosition - this.offset);
                proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
                proposal.setRelevance(relevance);
                this.requestor.accept(proposal);
                if (!DEBUG) break;
                this.printDebug(proposal);
            }
        }
    }

    private void proposeNewMethod(char[] token, ReferenceBinding reference) {
        if (!this.requestor.isIgnored(11)) {
            int relevance = this.computeBaseRelevance();
            relevance += this.computeRelevanceForResolution();
            relevance += this.computeRelevanceForInterestingProposal();
            relevance += this.computeRelevanceForRestrictions(0);
            InternalCompletionProposal proposal = this.createProposal(11, this.actualCompletionPosition);
            proposal.setDeclarationSignature(CompletionEngine.getSignature(reference));
            proposal.setSignature(CompletionEngine.createMethodSignature(CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR, VOID));
            proposal.setDeclarationPackageName(reference.qualifiedPackageName());
            proposal.setDeclarationTypeName(reference.qualifiedSourceName());
            proposal.setTypeName(VOID);
            proposal.setName(token);
            proposal.setCompletion(token);
            proposal.setFlags(1);
            proposal.setReplaceRange(this.startPosition - this.offset, this.endPosition - this.offset);
            proposal.setTokenRange(this.tokenStart - this.offset, this.tokenEnd - this.offset);
            proposal.setRelevance(relevance);
            this.requestor.accept(proposal);
            if (DEBUG) {
                this.printDebug(proposal);
            }
        }
    }

    private void proposeType(char[] packageName, char[] simpleTypeName, int modifiers, int accessibility, char[] typeName, char[] fullyQualifiedName, boolean isQualified, Scope scope) {
        char[] completionName = fullyQualifiedName;
        if (isQualified) {
            if ((packageName == null || packageName.length == 0) && this.unitScope != null && this.unitScope.fPackage.compoundName != CharOperation.NO_CHAR_CHAR) {
                return;
            }
        } else {
            completionName = simpleTypeName;
        }
        Binding guessedType = null;
        if ((modifiers & 0x2000) != 0 && this.assistNodeIsAnnotation && (this.targetedElement & 0xFF800000000L) != 0L) {
            char[][] cn = CharOperation.splitOn('.', fullyQualifiedName);
            TypeReference ref = cn.length == 1 ? new SingleTypeReference(simpleTypeName, 0L) : new QualifiedTypeReference(cn, new long[cn.length]);
            switch (scope.kind) {
                case 1: 
                case 2: {
                    guessedType = ref.resolveType((BlockScope)scope);
                    break;
                }
                case 3: {
                    guessedType = ref.resolveType((ClassScope)scope);
                }
            }
            if (guessedType == null || !guessedType.isValidBinding()) {
                return;
            }
            if (!this.hasPossibleAnnotationTarget((TypeBinding)guessedType, scope)) {
                return;
            }
        }
        int relevance = this.computeBaseRelevance();
        relevance += this.computeRelevanceForResolution();
        relevance += this.computeRelevanceForInterestingProposal(packageName, fullyQualifiedName);
        relevance += this.computeRelevanceForRestrictions(accessibility);
        relevance += this.computeRelevanceForCaseMatching(this.completionToken, simpleTypeName);
        relevance += this.computeRelevanceForExpectingType(packageName, simpleTypeName);
        relevance += this.computeRelevanceForQualification(isQualified);
        int kind = modifiers & 0x6200;
        switch (kind) {
            case 8192: 
            case 8704: {
                relevance += this.computeRelevanceForAnnotation();
                if (guessedType != null) {
                    relevance += this.computeRelevanceForAnnotationTarget((TypeBinding)guessedType);
                }
                relevance += this.computeRelevanceForInterface();
                break;
            }
            case 16384: {
                relevance += this.computeRelevanceForEnum();
                break;
            }
            case 512: {
                relevance += this.computeRelevanceForInterface();
                break;
            }
            default: {
                relevance += this.computeRelevanceForClass();
                relevance += this.computeRelevanceForException(simpleTypeName);
            }
        }
        this.noProposal = false;
        if (!this.requestor.isIgnored(9)) {
            this.createTypeProposal(packageName, typeName, modifiers, accessibility, completionName, relevance);
        }
    }

    protected void reset() {
        super.reset(false);
        this.knownPkgs = new HashtableOfObject(10);
        this.knownTypes = new HashtableOfObject(10);
        if (this.noCacheNameEnvironment != null) {
            this.noCacheNameEnvironment.cleanup();
            this.noCacheNameEnvironment = null;
            JavaModelManager.getJavaModelManager().flushZipFiles(this);
        }
    }

    private void setSourceAndTokenRange(int start, int end) {
        this.setSourceAndTokenRange(start, end, true);
    }

    private void setSourceAndTokenRange(int start, int end, boolean emptyTokenAdjstment) {
        this.setSourceRange(start, end, emptyTokenAdjstment);
        this.setTokenRange(start, end, emptyTokenAdjstment);
    }

    private void setSourceRange(int start, int end) {
        this.setSourceRange(start, end, true);
    }

    private void setSourceRange(int start, int end, boolean emptyTokenAdjstment) {
        int endOfEmptyToken;
        this.startPosition = start;
        this.endPosition = emptyTokenAdjstment ? ((endOfEmptyToken = ((CompletionScanner)this.parser.scanner).endOfEmptyToken) > end ? endOfEmptyToken + 1 : end + 1) : end + 1;
    }

    private void setTokenRange(int start, int end) {
        this.setTokenRange(start, end, true);
    }

    private void setTokenRange(int start, int end, boolean emptyTokenAdjstment) {
        int endOfEmptyToken;
        this.tokenStart = start;
        this.tokenEnd = emptyTokenAdjstment ? ((endOfEmptyToken = ((CompletionScanner)this.parser.scanner).endOfEmptyToken) > end ? endOfEmptyToken + 1 : end + 1) : end + 1;
    }

    /*
     * Unable to fully structure code
     */
    private char[] substituteMethodTypeParameterName(char firstName, char startChar, char endChar, char[][] excludedNames, char[][] otherParameterNames) {
        name = firstName;
        block0: while (true) lbl-1000:
        // 3 sources

        {
            i = 0;
            while (i < excludedNames.length) {
                block6: {
                    if (excludedNames[i].length != 1 || ScannerHelper.toLowerCase(excludedNames[i][0]) != ScannerHelper.toLowerCase(name)) break block6;
                    if ((name = (char)(name + '\u0001')) > endChar) {
                        name = startChar;
                    }
                    if (name != firstName) ** GOTO lbl-1000
                    return this.substituteMethodTypeParameterName(new char[]{firstName}, excludedNames, otherParameterNames);
                }
                ++i;
            }
            i = 0;
            while (i < otherParameterNames.length) {
                if (otherParameterNames[i].length == 1 && ScannerHelper.toLowerCase(otherParameterNames[i][0]) == ScannerHelper.toLowerCase(name)) {
                    if ((name = (char)(name + '\u0001')) > endChar) {
                        name = startChar;
                    }
                    if (name != firstName) continue block0;
                    return this.substituteMethodTypeParameterName(new char[]{firstName}, excludedNames, otherParameterNames);
                }
                ++i;
            }
            break;
        }
        return new char[]{name};
    }

    private char[] substituteMethodTypeParameterName(char[] firstName, char[][] excludedNames, char[][] otherParameterNames) {
        char[] name = firstName;
        int count = 2;
        block0: while (true) {
            int k = 0;
            while (k < excludedNames.length) {
                if (CharOperation.equals(name, excludedNames[k], false)) {
                    name = CharOperation.concat(firstName, String.valueOf(count++).toCharArray());
                    continue block0;
                }
                ++k;
            }
            int i = 0;
            while (i < otherParameterNames.length) {
                if (CharOperation.equals(name, otherParameterNames[i], false)) {
                    name = CharOperation.concat(firstName, String.valueOf(count++).toCharArray());
                    continue block0;
                }
                ++i;
            }
            break;
        }
        return name;
    }

    private char[][] substituteMethodTypeParameterNames(TypeVariableBinding[] typeVariables, char[][] excludedNames) {
        char[][] substituedParameterNames = new char[typeVariables.length][];
        int i = 0;
        while (i < substituedParameterNames.length) {
            substituedParameterNames[i] = typeVariables[i].sourceName;
            ++i;
        }
        boolean foundConflicts = false;
        int i2 = 0;
        while (i2 < typeVariables.length) {
            TypeVariableBinding typeVariableBinding = typeVariables[i2];
            char[] methodParameterName = typeVariableBinding.sourceName;
            int j = 0;
            while (j < excludedNames.length) {
                char[] typeParameterName = excludedNames[j];
                if (CharOperation.equals(typeParameterName, methodParameterName, false)) {
                    char[] substitution = methodParameterName.length == 1 ? (ScannerHelper.isUpperCase(methodParameterName[0]) ? this.substituteMethodTypeParameterName(methodParameterName[0], 'A', 'Z', excludedNames, substituedParameterNames) : this.substituteMethodTypeParameterName(methodParameterName[0], 'a', 'z', excludedNames, substituedParameterNames)) : this.substituteMethodTypeParameterName(methodParameterName, excludedNames, substituedParameterNames);
                    substituedParameterNames[i2] = substitution;
                    foundConflicts = true;
                    break;
                }
                ++j;
            }
            ++i2;
        }
        if (foundConflicts) {
            return substituedParameterNames;
        }
        return null;
    }

    private static class AcceptedConstructor {
        public int modifiers;
        public char[] simpleTypeName;
        public int parameterCount;
        public char[] signature;
        public char[][] parameterTypes;
        public char[][] parameterNames;
        public int typeModifiers;
        public char[] packageName;
        public int extraFlags;
        public int accessibility;
        public boolean proposeType = false;
        public boolean proposeConstructor = false;
        public char[] fullyQualifiedName = null;
        public boolean mustBeQualified = false;

        public AcceptedConstructor(int modifiers, char[] simpleTypeName, int parameterCount, char[] signature, char[][] parameterTypes, char[][] parameterNames, int typeModifiers, char[] packageName, int extraFlags, int accessibility) {
            this.modifiers = modifiers;
            this.simpleTypeName = simpleTypeName;
            this.parameterCount = parameterCount;
            this.signature = signature;
            this.parameterTypes = parameterTypes;
            this.parameterNames = parameterNames;
            this.typeModifiers = typeModifiers;
            this.packageName = packageName;
            this.extraFlags = extraFlags;
            this.accessibility = accessibility;
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append('{');
            buffer.append(this.packageName);
            buffer.append(',');
            buffer.append(this.simpleTypeName);
            buffer.append('}');
            return buffer.toString();
        }
    }

    private static class AcceptedType {
        public char[] packageName;
        public char[] simpleTypeName;
        public char[][] enclosingTypeNames;
        public int modifiers;
        public int accessibility;
        public boolean mustBeQualified = false;
        public char[] fullyQualifiedName = null;
        public char[] qualifiedTypeName = null;

        public AcceptedType(char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, int modifiers, int accessibility) {
            this.packageName = packageName;
            this.simpleTypeName = simpleTypeName;
            this.enclosingTypeNames = enclosingTypeNames;
            this.modifiers = modifiers;
            this.accessibility = accessibility;
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append('{');
            buffer.append(this.packageName);
            buffer.append(',');
            buffer.append(this.simpleTypeName);
            buffer.append(',');
            buffer.append(CharOperation.concatWith(this.enclosingTypeNames, '.'));
            buffer.append('}');
            return buffer.toString();
        }
    }

    public class CompletionProblemFactory
    extends DefaultProblemFactory {
        private int lastErrorStart;
        private boolean checkProblems = false;
        public boolean hasForbiddenProblems = false;
        public boolean hasAllowedProblems = false;

        public CompletionProblemFactory(Locale loc) {
            super(loc);
        }

        private CategorizedProblem checkProblem(CategorizedProblem pb, char[] originatingFileName, int severity, int start) {
            int id = pb.getID();
            if (CompletionEngine.this.actualCompletionPosition > start && this.lastErrorStart < start && pb.isError() && (id & 0x40000000) == 0 && (CompletionEngine.this.fileName == null || CharOperation.equals(CompletionEngine.this.fileName, originatingFileName))) {
                CompletionEngine.this.problem = pb;
                this.lastErrorStart = start;
            }
            if (this.checkProblems && !this.hasForbiddenProblems) {
                switch (id) {
                    case 0x1000005: {
                        this.hasForbiddenProblems = CompletionEngine.this.options.checkDeprecation;
                        break;
                    }
                    case 0x1000003: {
                        this.hasForbiddenProblems = CompletionEngine.this.options.checkVisibility;
                        break;
                    }
                    case 0x1000133: {
                        this.hasForbiddenProblems = CompletionEngine.this.options.checkForbiddenReference;
                        break;
                    }
                    case 0x1000118: {
                        this.hasForbiddenProblems = CompletionEngine.this.options.checkDiscouragedReference;
                        break;
                    }
                    default: {
                        if ((severity & 0x20) != 0) {
                            this.hasAllowedProblems = true;
                            break;
                        }
                        this.hasForbiddenProblems = true;
                    }
                }
            }
            return pb;
        }

        public CategorizedProblem createProblem(char[] originatingFileName, int problemId, String[] problemArguments, int elaborationId, String[] messageArguments, int severity, int start, int end, int lineNumber, int columnNumber) {
            return this.checkProblem(super.createProblem(originatingFileName, problemId, problemArguments, elaborationId, messageArguments, severity, start, end, lineNumber, columnNumber), originatingFileName, severity, start);
        }

        public CategorizedProblem createProblem(char[] originatingFileName, int problemId, String[] problemArguments, String[] messageArguments, int severity, int start, int end, int lineNumber, int columnNumber) {
            return this.checkProblem(super.createProblem(originatingFileName, problemId, problemArguments, messageArguments, severity, start, end, lineNumber, columnNumber), originatingFileName, severity, start);
        }

        public void startCheckingProblems() {
            this.checkProblems = true;
            this.hasForbiddenProblems = false;
            this.hasAllowedProblems = false;
        }

        public void stopCheckingProblems() {
            this.checkProblems = false;
        }
    }
}

