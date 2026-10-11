/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.core.dom;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.dom.ASTConverter;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayAccess;
import org.eclipse.jdt.core.dom.ArrayCreation;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.AssertStatement;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BlockComment;
import org.eclipse.jdt.core.dom.BooleanLiteral;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CharacterLiteral;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.InstanceofExpression;
import org.eclipse.jdt.core.dom.InternalASTRewrite;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.LineComment;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.MethodRefParameter;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NodeEventHandler;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.NullLiteral;
import org.eclipse.jdt.core.dom.NumberLiteral;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ParenthesizedExpression;
import org.eclipse.jdt.core.dom.PostfixExpression;
import org.eclipse.jdt.core.dom.PrefixExpression;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.SynchronizedStatement;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.dom.TextElement;
import org.eclipse.jdt.core.dom.ThisExpression;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclarationStatement;
import org.eclipse.jdt.core.dom.TypeLiteral;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.TextEdit;

public final class AST {
    private static final Class[] AST_CLASS;
    public static final int JLS2 = 2;
    static final int JLS2_INTERNAL = 2;
    public static final int JLS3 = 3;
    public static final int JLS4 = 4;
    static final int RESOLVED_BINDINGS = Integer.MIN_VALUE;
    int apiLevel;
    private int bits;
    private int defaultNodeFlag = 0;
    private int disableEvents = 0;
    private NodeEventHandler eventHandler = new NodeEventHandler();
    private final Object internalASTLock = new Object();
    private long modificationCount = 0L;
    private long originalModificationCount = 0L;
    private BindingResolver resolver = new BindingResolver();
    InternalASTRewrite rewriter;
    Scanner scanner;
    private final Object[] THIS_AST = new Object[]{this};
    static /* synthetic */ Class class$0;

    static {
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.AST");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        AST_CLASS = classArray;
    }

    public static CompilationUnit convertCompilationUnit(int level, CompilationUnitDeclaration compilationUnitDeclaration, char[] source, Map options, boolean isResolved, org.eclipse.jdt.internal.core.CompilationUnit workingCopy, int reconcileFlags, IProgressMonitor monitor) {
        return null;
    }

    public static CompilationUnit convertCompilationUnit(int level, CompilationUnitDeclaration compilationUnitDeclaration, Map options, boolean isResolved, org.eclipse.jdt.internal.core.CompilationUnit workingCopy, int reconcileFlags, IProgressMonitor monitor) {
        ASTConverter converter = new ASTConverter(options, isResolved, monitor);
        AST ast = AST.newAST(level);
        int savedDefaultNodeFlag = ast.getDefaultNodeFlag();
        ast.setDefaultNodeFlag(2);
        BindingResolver resolver = null;
        if (isResolved) {
            resolver = new DefaultBindingResolver(compilationUnitDeclaration.scope, workingCopy.owner, new DefaultBindingResolver.BindingTables(), false, true);
            ((DefaultBindingResolver)resolver).isRecoveringBindings = (reconcileFlags & 4) != 0;
            ast.setFlag(Integer.MIN_VALUE);
        } else {
            resolver = new BindingResolver();
        }
        ast.setFlag(reconcileFlags);
        ast.setBindingResolver(resolver);
        converter.setAST(ast);
        CompilationUnit unit = converter.convert(compilationUnitDeclaration, workingCopy.getContents());
        unit.setLineEndTable(compilationUnitDeclaration.compilationResult.getLineSeparatorPositions());
        unit.setTypeRoot(workingCopy.originalFromClone());
        ast.setDefaultNodeFlag(savedDefaultNodeFlag);
        return unit;
    }

    public static AST newAST(int level) {
        return new AST(level);
    }

    public static CompilationUnit parseCompilationUnit(char[] source) {
        if (source == null) {
            throw new IllegalArgumentException();
        }
        ASTParser c = ASTParser.newParser(2);
        c.setSource(source);
        ASTNode result = c.createAST(null);
        return (CompilationUnit)result;
    }

    public static CompilationUnit parseCompilationUnit(char[] source, String unitName, IJavaProject project) {
        if (source == null) {
            throw new IllegalArgumentException();
        }
        ASTParser astParser = ASTParser.newParser(2);
        astParser.setSource(source);
        astParser.setUnitName(unitName);
        astParser.setProject(project);
        astParser.setResolveBindings(project != null);
        ASTNode result = astParser.createAST(null);
        return (CompilationUnit)result;
    }

    public static CompilationUnit parseCompilationUnit(IClassFile classFile, boolean resolveBindings) {
        if (classFile == null) {
            throw new IllegalArgumentException();
        }
        try {
            ASTParser c = ASTParser.newParser(2);
            c.setSource(classFile);
            c.setResolveBindings(resolveBindings);
            ASTNode result = c.createAST(null);
            return (CompilationUnit)result;
        }
        catch (IllegalStateException illegalStateException) {
            throw new IllegalArgumentException();
        }
    }

    public static CompilationUnit parseCompilationUnit(ICompilationUnit unit, boolean resolveBindings) {
        try {
            ASTParser c = ASTParser.newParser(2);
            c.setSource(unit);
            c.setResolveBindings(resolveBindings);
            ASTNode result = c.createAST(null);
            return (CompilationUnit)result;
        }
        catch (IllegalStateException illegalStateException) {
            throw new IllegalArgumentException();
        }
    }

    public AST() {
        this(JavaCore.getDefaultOptions());
    }

    private AST(int level) {
        switch (level) {
            case 2: 
            case 3: {
                this.apiLevel = level;
                this.scanner = new Scanner(true, true, false, 0x2F0000L, 0x310000L, null, null, true);
                break;
            }
            case 4: {
                this.apiLevel = level;
                this.scanner = new Scanner(true, true, false, 0x330000L, 0x330000L, null, null, true);
                break;
            }
            default: {
                throw new IllegalArgumentException("Unsupported JLS level");
            }
        }
    }

    public AST(Map options) {
        this(2);
        Object sourceLevelOption = options.get("org.eclipse.jdt.core.compiler.source");
        long sourceLevel = 0x2F0000L;
        if ("1.4".equals(sourceLevelOption)) {
            sourceLevel = 0x300000L;
        } else if ("1.5".equals(sourceLevelOption)) {
            sourceLevel = 0x310000L;
        } else if ("1.7".equals(sourceLevelOption)) {
            sourceLevel = 0x330000L;
        }
        Object complianceLevelOption = options.get("org.eclipse.jdt.core.compiler.compliance");
        long complianceLevel = 0x2F0000L;
        if ("1.4".equals(complianceLevelOption)) {
            complianceLevel = 0x300000L;
        } else if ("1.5".equals(complianceLevelOption)) {
            complianceLevel = 0x310000L;
        } else if ("1.7".equals(complianceLevelOption)) {
            complianceLevel = 0x330000L;
        }
        this.scanner = new Scanner(true, true, false, sourceLevel, complianceLevel, null, null, true);
    }

    public int apiLevel() {
        return this.apiLevel;
    }

    public ASTNode createInstance(Class nodeClass) {
        if (nodeClass == null) {
            throw new IllegalArgumentException();
        }
        try {
            Constructor c = nodeClass.getDeclaredConstructor(AST_CLASS);
            Object result = c.newInstance(this.THIS_AST);
            return (ASTNode)result;
        }
        catch (NoSuchMethodException noSuchMethodException) {
            throw new IllegalArgumentException();
        }
        catch (InstantiationException instantiationException) {
            throw new IllegalArgumentException();
        }
        catch (IllegalAccessException illegalAccessException) {
            throw new IllegalArgumentException();
        }
        catch (InvocationTargetException invocationTargetException) {
            throw new IllegalArgumentException();
        }
    }

    public ASTNode createInstance(int nodeType) {
        Class nodeClass = ASTNode.nodeClassForType(nodeType);
        return this.createInstance(nodeClass);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    final void disableEvents() {
        Object object = this.internalASTLock;
        synchronized (object) {
            ++this.disableEvents;
        }
    }

    BindingResolver getBindingResolver() {
        return this.resolver;
    }

    int getDefaultNodeFlag() {
        return this.defaultNodeFlag;
    }

    NodeEventHandler getEventHandler() {
        return this.eventHandler;
    }

    public boolean hasBindingsRecovery() {
        return (this.bits & 4) != 0;
    }

    public boolean hasResolvedBindings() {
        return (this.bits & Integer.MIN_VALUE) != 0;
    }

    public boolean hasStatementsRecovery() {
        return (this.bits & 2) != 0;
    }

    Name internalNewName(String[] identifiers) {
        int count = identifiers.length;
        if (count == 0) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName = new SimpleName(this);
        simpleName.internalSetIdentifier(identifiers[0]);
        Name result = simpleName;
        int i = 1;
        while (i < count) {
            SimpleName name = new SimpleName(this);
            name.internalSetIdentifier(identifiers[i]);
            result = this.newQualifiedName(result, name);
            ++i;
        }
        return result;
    }

    public long modificationCount() {
        return this.modificationCount;
    }

    void modifying() {
        if (this.disableEvents > 0) {
            return;
        }
        ++this.modificationCount;
    }

    public AnnotationTypeDeclaration newAnnotationTypeDeclaration() {
        AnnotationTypeDeclaration result = new AnnotationTypeDeclaration(this);
        return result;
    }

    public AnnotationTypeMemberDeclaration newAnnotationTypeMemberDeclaration() {
        AnnotationTypeMemberDeclaration result = new AnnotationTypeMemberDeclaration(this);
        return result;
    }

    public AnonymousClassDeclaration newAnonymousClassDeclaration() {
        AnonymousClassDeclaration result = new AnonymousClassDeclaration(this);
        return result;
    }

    public ArrayAccess newArrayAccess() {
        ArrayAccess result = new ArrayAccess(this);
        return result;
    }

    public ArrayCreation newArrayCreation() {
        ArrayCreation result = new ArrayCreation(this);
        return result;
    }

    public ArrayInitializer newArrayInitializer() {
        ArrayInitializer result = new ArrayInitializer(this);
        return result;
    }

    public ArrayType newArrayType(Type componentType) {
        ArrayType result = new ArrayType(this);
        result.setComponentType(componentType);
        return result;
    }

    public ArrayType newArrayType(Type elementType, int dimensions) {
        if (elementType == null || elementType.isArrayType()) {
            throw new IllegalArgumentException();
        }
        if (dimensions < 1 || dimensions > 1000) {
            throw new IllegalArgumentException();
        }
        ArrayType result = new ArrayType(this);
        result.setComponentType(elementType);
        int i = 2;
        while (i <= dimensions) {
            result = this.newArrayType(result);
            ++i;
        }
        return result;
    }

    public AssertStatement newAssertStatement() {
        return new AssertStatement(this);
    }

    public Assignment newAssignment() {
        Assignment result = new Assignment(this);
        return result;
    }

    public Block newBlock() {
        return new Block(this);
    }

    public BlockComment newBlockComment() {
        BlockComment result = new BlockComment(this);
        return result;
    }

    public BooleanLiteral newBooleanLiteral(boolean value) {
        BooleanLiteral result = new BooleanLiteral(this);
        result.setBooleanValue(value);
        return result;
    }

    public BreakStatement newBreakStatement() {
        return new BreakStatement(this);
    }

    public CastExpression newCastExpression() {
        CastExpression result = new CastExpression(this);
        return result;
    }

    public CatchClause newCatchClause() {
        return new CatchClause(this);
    }

    public CharacterLiteral newCharacterLiteral() {
        return new CharacterLiteral(this);
    }

    public ClassInstanceCreation newClassInstanceCreation() {
        ClassInstanceCreation result = new ClassInstanceCreation(this);
        return result;
    }

    public CompilationUnit newCompilationUnit() {
        return new CompilationUnit(this);
    }

    public ConditionalExpression newConditionalExpression() {
        ConditionalExpression result = new ConditionalExpression(this);
        return result;
    }

    public ConstructorInvocation newConstructorInvocation() {
        ConstructorInvocation result = new ConstructorInvocation(this);
        return result;
    }

    public ContinueStatement newContinueStatement() {
        return new ContinueStatement(this);
    }

    public UnionType newUnionType() {
        return new UnionType(this);
    }

    public DoStatement newDoStatement() {
        return new DoStatement(this);
    }

    public EmptyStatement newEmptyStatement() {
        return new EmptyStatement(this);
    }

    public EnhancedForStatement newEnhancedForStatement() {
        return new EnhancedForStatement(this);
    }

    public EnumConstantDeclaration newEnumConstantDeclaration() {
        EnumConstantDeclaration result = new EnumConstantDeclaration(this);
        return result;
    }

    public EnumDeclaration newEnumDeclaration() {
        EnumDeclaration result = new EnumDeclaration(this);
        return result;
    }

    public ExpressionStatement newExpressionStatement(Expression expression) {
        ExpressionStatement result = new ExpressionStatement(this);
        result.setExpression(expression);
        return result;
    }

    public FieldAccess newFieldAccess() {
        FieldAccess result = new FieldAccess(this);
        return result;
    }

    public FieldDeclaration newFieldDeclaration(VariableDeclarationFragment fragment) {
        if (fragment == null) {
            throw new IllegalArgumentException();
        }
        FieldDeclaration result = new FieldDeclaration(this);
        result.fragments().add(fragment);
        return result;
    }

    public ForStatement newForStatement() {
        return new ForStatement(this);
    }

    public IfStatement newIfStatement() {
        return new IfStatement(this);
    }

    public ImportDeclaration newImportDeclaration() {
        ImportDeclaration result = new ImportDeclaration(this);
        return result;
    }

    public InfixExpression newInfixExpression() {
        InfixExpression result = new InfixExpression(this);
        return result;
    }

    public Initializer newInitializer() {
        Initializer result = new Initializer(this);
        return result;
    }

    public InstanceofExpression newInstanceofExpression() {
        InstanceofExpression result = new InstanceofExpression(this);
        return result;
    }

    public Javadoc newJavadoc() {
        Javadoc result = new Javadoc(this);
        return result;
    }

    public LabeledStatement newLabeledStatement() {
        return new LabeledStatement(this);
    }

    public LineComment newLineComment() {
        LineComment result = new LineComment(this);
        return result;
    }

    public MarkerAnnotation newMarkerAnnotation() {
        MarkerAnnotation result = new MarkerAnnotation(this);
        return result;
    }

    public MemberRef newMemberRef() {
        MemberRef result = new MemberRef(this);
        return result;
    }

    public MemberValuePair newMemberValuePair() {
        MemberValuePair result = new MemberValuePair(this);
        return result;
    }

    public MethodDeclaration newMethodDeclaration() {
        MethodDeclaration result = new MethodDeclaration(this);
        result.setConstructor(false);
        return result;
    }

    public MethodInvocation newMethodInvocation() {
        MethodInvocation result = new MethodInvocation(this);
        return result;
    }

    public MethodRef newMethodRef() {
        MethodRef result = new MethodRef(this);
        return result;
    }

    public MethodRefParameter newMethodRefParameter() {
        MethodRefParameter result = new MethodRefParameter(this);
        return result;
    }

    public Modifier newModifier(Modifier.ModifierKeyword keyword) {
        Modifier result = new Modifier(this);
        result.setKeyword(keyword);
        return result;
    }

    public List newModifiers(int flags) {
        if (this.apiLevel == 2) {
            this.unsupportedIn2();
        }
        ArrayList<Modifier> result = new ArrayList<Modifier>(3);
        if (Modifier.isPublic(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD));
        }
        if (Modifier.isProtected(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD));
        }
        if (Modifier.isPrivate(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD));
        }
        if (Modifier.isAbstract(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD));
        }
        if (Modifier.isStatic(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.STATIC_KEYWORD));
        }
        if (Modifier.isFinal(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.FINAL_KEYWORD));
        }
        if (Modifier.isSynchronized(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD));
        }
        if (Modifier.isNative(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD));
        }
        if (Modifier.isStrictfp(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD));
        }
        if (Modifier.isTransient(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD));
        }
        if (Modifier.isVolatile(flags)) {
            result.add(this.newModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD));
        }
        return result;
    }

    public Name newName(String qualifiedName) {
        StringTokenizer t = new StringTokenizer(qualifiedName, ".", true);
        Name result = null;
        int balance = 0;
        while (t.hasMoreTokens()) {
            String s = t.nextToken();
            if (s.indexOf(46) >= 0) {
                if (s.length() > 1) {
                    throw new IllegalArgumentException();
                }
                if (--balance >= 0) continue;
                throw new IllegalArgumentException();
            }
            ++balance;
            SimpleName name = this.newSimpleName(s);
            result = result == null ? name : this.newQualifiedName(result, name);
        }
        if (balance != 1) {
            throw new IllegalArgumentException();
        }
        return result;
    }

    public Name newName(String[] identifiers) {
        int count = identifiers.length;
        if (count == 0) {
            throw new IllegalArgumentException();
        }
        Name result = this.newSimpleName(identifiers[0]);
        int i = 1;
        while (i < count) {
            SimpleName name = this.newSimpleName(identifiers[i]);
            result = this.newQualifiedName(result, name);
            ++i;
        }
        return result;
    }

    public NormalAnnotation newNormalAnnotation() {
        NormalAnnotation result = new NormalAnnotation(this);
        return result;
    }

    public NullLiteral newNullLiteral() {
        return new NullLiteral(this);
    }

    public NumberLiteral newNumberLiteral() {
        NumberLiteral result = new NumberLiteral(this);
        return result;
    }

    public NumberLiteral newNumberLiteral(String literal) {
        if (literal == null) {
            throw new IllegalArgumentException();
        }
        NumberLiteral result = new NumberLiteral(this);
        result.setToken(literal);
        return result;
    }

    public PackageDeclaration newPackageDeclaration() {
        PackageDeclaration result = new PackageDeclaration(this);
        return result;
    }

    public ParameterizedType newParameterizedType(Type type) {
        ParameterizedType result = new ParameterizedType(this);
        result.setType(type);
        return result;
    }

    public ParenthesizedExpression newParenthesizedExpression() {
        ParenthesizedExpression result = new ParenthesizedExpression(this);
        return result;
    }

    public PostfixExpression newPostfixExpression() {
        PostfixExpression result = new PostfixExpression(this);
        return result;
    }

    public PrefixExpression newPrefixExpression() {
        PrefixExpression result = new PrefixExpression(this);
        return result;
    }

    public PrimitiveType newPrimitiveType(PrimitiveType.Code typeCode) {
        PrimitiveType result = new PrimitiveType(this);
        result.setPrimitiveTypeCode(typeCode);
        return result;
    }

    public QualifiedName newQualifiedName(Name qualifier, SimpleName name) {
        QualifiedName result = new QualifiedName(this);
        result.setQualifier(qualifier);
        result.setName(name);
        return result;
    }

    public QualifiedType newQualifiedType(Type qualifier, SimpleName name) {
        QualifiedType result = new QualifiedType(this);
        result.setQualifier(qualifier);
        result.setName(name);
        return result;
    }

    public ReturnStatement newReturnStatement() {
        return new ReturnStatement(this);
    }

    public SimpleName newSimpleName(String identifier) {
        if (identifier == null) {
            throw new IllegalArgumentException();
        }
        SimpleName result = new SimpleName(this);
        result.setIdentifier(identifier);
        return result;
    }

    public SimpleType newSimpleType(Name typeName) {
        SimpleType result = new SimpleType(this);
        result.setName(typeName);
        return result;
    }

    public SingleMemberAnnotation newSingleMemberAnnotation() {
        SingleMemberAnnotation result = new SingleMemberAnnotation(this);
        return result;
    }

    public SingleVariableDeclaration newSingleVariableDeclaration() {
        SingleVariableDeclaration result = new SingleVariableDeclaration(this);
        return result;
    }

    public StringLiteral newStringLiteral() {
        return new StringLiteral(this);
    }

    public SuperConstructorInvocation newSuperConstructorInvocation() {
        SuperConstructorInvocation result = new SuperConstructorInvocation(this);
        return result;
    }

    public SuperFieldAccess newSuperFieldAccess() {
        SuperFieldAccess result = new SuperFieldAccess(this);
        return result;
    }

    public SuperMethodInvocation newSuperMethodInvocation() {
        SuperMethodInvocation result = new SuperMethodInvocation(this);
        return result;
    }

    public SwitchCase newSwitchCase() {
        return new SwitchCase(this);
    }

    public SwitchStatement newSwitchStatement() {
        return new SwitchStatement(this);
    }

    public SynchronizedStatement newSynchronizedStatement() {
        return new SynchronizedStatement(this);
    }

    public TagElement newTagElement() {
        TagElement result = new TagElement(this);
        return result;
    }

    public TextElement newTextElement() {
        TextElement result = new TextElement(this);
        return result;
    }

    public ThisExpression newThisExpression() {
        ThisExpression result = new ThisExpression(this);
        return result;
    }

    public ThrowStatement newThrowStatement() {
        return new ThrowStatement(this);
    }

    public TryStatement newTryStatement() {
        return new TryStatement(this);
    }

    public TypeDeclaration newTypeDeclaration() {
        TypeDeclaration result = new TypeDeclaration(this);
        result.setInterface(false);
        return result;
    }

    public TypeDeclarationStatement newTypeDeclarationStatement(AbstractTypeDeclaration decl) {
        TypeDeclarationStatement result = new TypeDeclarationStatement(this);
        if (this.apiLevel == 2) {
            result.internalSetTypeDeclaration((TypeDeclaration)decl);
        }
        if (this.apiLevel >= 3) {
            result.setDeclaration(decl);
        }
        return result;
    }

    public TypeDeclarationStatement newTypeDeclarationStatement(TypeDeclaration decl) {
        TypeDeclarationStatement result = new TypeDeclarationStatement(this);
        result.setDeclaration(decl);
        return result;
    }

    public TypeLiteral newTypeLiteral() {
        TypeLiteral result = new TypeLiteral(this);
        return result;
    }

    public TypeParameter newTypeParameter() {
        TypeParameter result = new TypeParameter(this);
        return result;
    }

    public VariableDeclarationExpression newVariableDeclarationExpression(VariableDeclarationFragment fragment) {
        if (fragment == null) {
            throw new IllegalArgumentException();
        }
        VariableDeclarationExpression result = new VariableDeclarationExpression(this);
        result.fragments().add(fragment);
        return result;
    }

    public VariableDeclarationFragment newVariableDeclarationFragment() {
        VariableDeclarationFragment result = new VariableDeclarationFragment(this);
        return result;
    }

    public VariableDeclarationStatement newVariableDeclarationStatement(VariableDeclarationFragment fragment) {
        if (fragment == null) {
            throw new IllegalArgumentException();
        }
        VariableDeclarationStatement result = new VariableDeclarationStatement(this);
        result.fragments().add(fragment);
        return result;
    }

    public WhileStatement newWhileStatement() {
        return new WhileStatement(this);
    }

    public WildcardType newWildcardType() {
        WildcardType result = new WildcardType(this);
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void postAddChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.postAddChildEvent(node, child, property);
        }
        finally {
            this.reenableEvents();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void postCloneNodeEvent(ASTNode node, ASTNode clone) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.postCloneNodeEvent(node, clone);
        }
        finally {
            this.reenableEvents();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void postRemoveChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.postRemoveChildEvent(node, child, property);
        }
        finally {
            this.reenableEvents();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void postReplaceChildEvent(ASTNode node, ASTNode child, ASTNode newChild, StructuralPropertyDescriptor property) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.postReplaceChildEvent(node, child, newChild, property);
        }
        finally {
            this.reenableEvents();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void postValueChangeEvent(ASTNode node, SimplePropertyDescriptor property) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.postValueChangeEvent(node, property);
        }
        finally {
            this.reenableEvents();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void preAddChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.preAddChildEvent(node, child, property);
        }
        finally {
            this.reenableEvents();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void preCloneNodeEvent(ASTNode node) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.preCloneNodeEvent(node);
        }
        finally {
            this.reenableEvents();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void preRemoveChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.preRemoveChildEvent(node, child, property);
        }
        finally {
            this.reenableEvents();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void preReplaceChildEvent(ASTNode node, ASTNode child, ASTNode newChild, StructuralPropertyDescriptor property) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.preReplaceChildEvent(node, child, newChild, property);
        }
        finally {
            this.reenableEvents();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void preValueChangeEvent(ASTNode node, SimplePropertyDescriptor property) {
        Object object = this.internalASTLock;
        synchronized (object) {
            if (this.disableEvents > 0) {
                return;
            }
            this.disableEvents();
        }
        try {
            this.eventHandler.preValueChangeEvent(node, property);
        }
        finally {
            this.reenableEvents();
        }
    }

    void recordModifications(CompilationUnit root) {
        if (this.modificationCount != this.originalModificationCount) {
            throw new IllegalArgumentException("AST is already modified");
        }
        if (this.rewriter != null) {
            throw new IllegalArgumentException("AST modifications are already recorded");
        }
        if ((root.getFlags() & 4) != 0) {
            throw new IllegalArgumentException("Root node is unmodifiable");
        }
        if (root.getAST() != this) {
            throw new IllegalArgumentException("Root node is not owned by this ast");
        }
        this.rewriter = new InternalASTRewrite(root);
        this.setEventHandler(this.rewriter);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    final void reenableEvents() {
        Object object = this.internalASTLock;
        synchronized (object) {
            --this.disableEvents;
        }
    }

    public ITypeBinding resolveWellKnownType(String name) {
        if (name == null) {
            return null;
        }
        return this.getBindingResolver().resolveWellKnownType(name);
    }

    TextEdit rewrite(IDocument document, Map options) {
        if (document == null) {
            throw new IllegalArgumentException();
        }
        if (this.rewriter == null) {
            throw new IllegalStateException("Modifications record is not enabled");
        }
        return this.rewriter.rewriteAST(document, options);
    }

    void setBindingResolver(BindingResolver resolver) {
        if (resolver == null) {
            throw new IllegalArgumentException();
        }
        this.resolver = resolver;
    }

    void setDefaultNodeFlag(int flag) {
        this.defaultNodeFlag = flag;
    }

    void setEventHandler(NodeEventHandler eventHandler) {
        if (this.eventHandler == null) {
            throw new IllegalArgumentException();
        }
        this.eventHandler = eventHandler;
    }

    void setFlag(int newValue) {
        this.bits |= newValue;
    }

    void setOriginalModificationCount(long count) {
        this.originalModificationCount = count;
    }

    void supportedOnlyIn2() {
        if (this.apiLevel != 2) {
            throw new UnsupportedOperationException("Operation not supported in JLS2 AST");
        }
    }

    void unsupportedIn2() {
        if (this.apiLevel == 2) {
            throw new UnsupportedOperationException("Operation not supported in JLS2 AST");
        }
    }
}

