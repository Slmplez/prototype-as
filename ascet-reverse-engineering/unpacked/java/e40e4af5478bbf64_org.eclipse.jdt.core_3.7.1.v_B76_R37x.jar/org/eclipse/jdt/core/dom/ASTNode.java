/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.internal.core.dom.NaiveASTFlattener;

public abstract class ASTNode {
    public static final int ANONYMOUS_CLASS_DECLARATION = 1;
    public static final int ARRAY_ACCESS = 2;
    public static final int ARRAY_CREATION = 3;
    public static final int ARRAY_INITIALIZER = 4;
    public static final int ARRAY_TYPE = 5;
    public static final int ASSERT_STATEMENT = 6;
    public static final int ASSIGNMENT = 7;
    public static final int BLOCK = 8;
    public static final int BOOLEAN_LITERAL = 9;
    public static final int BREAK_STATEMENT = 10;
    public static final int CAST_EXPRESSION = 11;
    public static final int CATCH_CLAUSE = 12;
    public static final int CHARACTER_LITERAL = 13;
    public static final int CLASS_INSTANCE_CREATION = 14;
    public static final int COMPILATION_UNIT = 15;
    public static final int CONDITIONAL_EXPRESSION = 16;
    public static final int CONSTRUCTOR_INVOCATION = 17;
    public static final int CONTINUE_STATEMENT = 18;
    public static final int DO_STATEMENT = 19;
    public static final int EMPTY_STATEMENT = 20;
    public static final int EXPRESSION_STATEMENT = 21;
    public static final int FIELD_ACCESS = 22;
    public static final int FIELD_DECLARATION = 23;
    public static final int FOR_STATEMENT = 24;
    public static final int IF_STATEMENT = 25;
    public static final int IMPORT_DECLARATION = 26;
    public static final int INFIX_EXPRESSION = 27;
    public static final int INITIALIZER = 28;
    public static final int JAVADOC = 29;
    public static final int LABELED_STATEMENT = 30;
    public static final int METHOD_DECLARATION = 31;
    public static final int METHOD_INVOCATION = 32;
    public static final int NULL_LITERAL = 33;
    public static final int NUMBER_LITERAL = 34;
    public static final int PACKAGE_DECLARATION = 35;
    public static final int PARENTHESIZED_EXPRESSION = 36;
    public static final int POSTFIX_EXPRESSION = 37;
    public static final int PREFIX_EXPRESSION = 38;
    public static final int PRIMITIVE_TYPE = 39;
    public static final int QUALIFIED_NAME = 40;
    public static final int RETURN_STATEMENT = 41;
    public static final int SIMPLE_NAME = 42;
    public static final int SIMPLE_TYPE = 43;
    public static final int SINGLE_VARIABLE_DECLARATION = 44;
    public static final int STRING_LITERAL = 45;
    public static final int SUPER_CONSTRUCTOR_INVOCATION = 46;
    public static final int SUPER_FIELD_ACCESS = 47;
    public static final int SUPER_METHOD_INVOCATION = 48;
    public static final int SWITCH_CASE = 49;
    public static final int SWITCH_STATEMENT = 50;
    public static final int SYNCHRONIZED_STATEMENT = 51;
    public static final int THIS_EXPRESSION = 52;
    public static final int THROW_STATEMENT = 53;
    public static final int TRY_STATEMENT = 54;
    public static final int TYPE_DECLARATION = 55;
    public static final int TYPE_DECLARATION_STATEMENT = 56;
    public static final int TYPE_LITERAL = 57;
    public static final int VARIABLE_DECLARATION_EXPRESSION = 58;
    public static final int VARIABLE_DECLARATION_FRAGMENT = 59;
    public static final int VARIABLE_DECLARATION_STATEMENT = 60;
    public static final int WHILE_STATEMENT = 61;
    public static final int INSTANCEOF_EXPRESSION = 62;
    public static final int LINE_COMMENT = 63;
    public static final int BLOCK_COMMENT = 64;
    public static final int TAG_ELEMENT = 65;
    public static final int TEXT_ELEMENT = 66;
    public static final int MEMBER_REF = 67;
    public static final int METHOD_REF = 68;
    public static final int METHOD_REF_PARAMETER = 69;
    public static final int ENHANCED_FOR_STATEMENT = 70;
    public static final int ENUM_DECLARATION = 71;
    public static final int ENUM_CONSTANT_DECLARATION = 72;
    public static final int TYPE_PARAMETER = 73;
    public static final int PARAMETERIZED_TYPE = 74;
    public static final int QUALIFIED_TYPE = 75;
    public static final int WILDCARD_TYPE = 76;
    public static final int NORMAL_ANNOTATION = 77;
    public static final int MARKER_ANNOTATION = 78;
    public static final int SINGLE_MEMBER_ANNOTATION = 79;
    public static final int MEMBER_VALUE_PAIR = 80;
    public static final int ANNOTATION_TYPE_DECLARATION = 81;
    public static final int ANNOTATION_TYPE_MEMBER_DECLARATION = 82;
    public static final int MODIFIER = 83;
    public static final int UNION_TYPE = 84;
    final AST ast;
    private ASTNode parent = null;
    private static final Map UNMODIFIABLE_EMPTY_MAP = Collections.unmodifiableMap(new HashMap(1));
    private Object property1 = null;
    private Object property2 = null;
    private int startPosition = -1;
    private int length = 0;
    public static final int MALFORMED = 1;
    public static final int ORIGINAL = 2;
    public static final int PROTECT = 4;
    public static final int RECOVERED = 8;
    int typeAndFlags = 0;
    private StructuralPropertyDescriptor location = null;
    static final boolean CYCLE_RISK = true;
    static final boolean NO_CYCLE_RISK = false;
    static final boolean MANDATORY = true;
    static final boolean OPTIONAL = false;
    static final int HEADERS = 12;
    static final int BASE_NODE_SIZE = 40;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;
    static /* synthetic */ Class class$11;
    static /* synthetic */ Class class$12;
    static /* synthetic */ Class class$13;
    static /* synthetic */ Class class$14;
    static /* synthetic */ Class class$15;
    static /* synthetic */ Class class$16;
    static /* synthetic */ Class class$17;
    static /* synthetic */ Class class$18;
    static /* synthetic */ Class class$19;
    static /* synthetic */ Class class$20;
    static /* synthetic */ Class class$21;
    static /* synthetic */ Class class$22;
    static /* synthetic */ Class class$23;
    static /* synthetic */ Class class$24;
    static /* synthetic */ Class class$25;
    static /* synthetic */ Class class$26;
    static /* synthetic */ Class class$27;
    static /* synthetic */ Class class$28;
    static /* synthetic */ Class class$29;
    static /* synthetic */ Class class$30;
    static /* synthetic */ Class class$31;
    static /* synthetic */ Class class$32;
    static /* synthetic */ Class class$33;
    static /* synthetic */ Class class$34;
    static /* synthetic */ Class class$35;
    static /* synthetic */ Class class$36;
    static /* synthetic */ Class class$37;
    static /* synthetic */ Class class$38;
    static /* synthetic */ Class class$39;
    static /* synthetic */ Class class$40;
    static /* synthetic */ Class class$41;
    static /* synthetic */ Class class$42;
    static /* synthetic */ Class class$43;
    static /* synthetic */ Class class$44;
    static /* synthetic */ Class class$45;
    static /* synthetic */ Class class$46;
    static /* synthetic */ Class class$47;
    static /* synthetic */ Class class$48;
    static /* synthetic */ Class class$49;
    static /* synthetic */ Class class$50;
    static /* synthetic */ Class class$51;
    static /* synthetic */ Class class$52;
    static /* synthetic */ Class class$53;
    static /* synthetic */ Class class$54;
    static /* synthetic */ Class class$55;
    static /* synthetic */ Class class$56;
    static /* synthetic */ Class class$57;
    static /* synthetic */ Class class$58;
    static /* synthetic */ Class class$59;
    static /* synthetic */ Class class$60;
    static /* synthetic */ Class class$61;
    static /* synthetic */ Class class$62;
    static /* synthetic */ Class class$63;
    static /* synthetic */ Class class$64;
    static /* synthetic */ Class class$65;
    static /* synthetic */ Class class$66;
    static /* synthetic */ Class class$67;
    static /* synthetic */ Class class$68;
    static /* synthetic */ Class class$69;
    static /* synthetic */ Class class$70;
    static /* synthetic */ Class class$71;
    static /* synthetic */ Class class$72;
    static /* synthetic */ Class class$73;
    static /* synthetic */ Class class$74;
    static /* synthetic */ Class class$75;
    static /* synthetic */ Class class$76;
    static /* synthetic */ Class class$77;
    static /* synthetic */ Class class$78;
    static /* synthetic */ Class class$79;
    static /* synthetic */ Class class$80;
    static /* synthetic */ Class class$81;
    static /* synthetic */ Class class$82;
    static /* synthetic */ Class class$83;

    public static Class nodeClassForType(int nodeType) {
        switch (nodeType) {
            case 81: {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 82: {
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 1: {
                Class<?> clazz = class$2;
                if (clazz == null) {
                    try {
                        clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.AnonymousClassDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 2: {
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.jdt.core.dom.ArrayAccess");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 3: {
                Class<?> clazz = class$4;
                if (clazz == null) {
                    try {
                        clazz = class$4 = Class.forName("org.eclipse.jdt.core.dom.ArrayCreation");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 4: {
                Class<?> clazz = class$5;
                if (clazz == null) {
                    try {
                        clazz = class$5 = Class.forName("org.eclipse.jdt.core.dom.ArrayInitializer");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 5: {
                Class<?> clazz = class$6;
                if (clazz == null) {
                    try {
                        clazz = class$6 = Class.forName("org.eclipse.jdt.core.dom.ArrayType");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 6: {
                Class<?> clazz = class$7;
                if (clazz == null) {
                    try {
                        clazz = class$7 = Class.forName("org.eclipse.jdt.core.dom.AssertStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 7: {
                Class<?> clazz = class$8;
                if (clazz == null) {
                    try {
                        clazz = class$8 = Class.forName("org.eclipse.jdt.core.dom.Assignment");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 8: {
                Class<?> clazz = class$9;
                if (clazz == null) {
                    try {
                        clazz = class$9 = Class.forName("org.eclipse.jdt.core.dom.Block");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 64: {
                Class<?> clazz = class$10;
                if (clazz == null) {
                    try {
                        clazz = class$10 = Class.forName("org.eclipse.jdt.core.dom.BlockComment");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 9: {
                Class<?> clazz = class$11;
                if (clazz == null) {
                    try {
                        clazz = class$11 = Class.forName("org.eclipse.jdt.core.dom.BooleanLiteral");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 10: {
                Class<?> clazz = class$12;
                if (clazz == null) {
                    try {
                        clazz = class$12 = Class.forName("org.eclipse.jdt.core.dom.BreakStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 11: {
                Class<?> clazz = class$13;
                if (clazz == null) {
                    try {
                        clazz = class$13 = Class.forName("org.eclipse.jdt.core.dom.CastExpression");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 12: {
                Class<?> clazz = class$14;
                if (clazz == null) {
                    try {
                        clazz = class$14 = Class.forName("org.eclipse.jdt.core.dom.CatchClause");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 13: {
                Class<?> clazz = class$15;
                if (clazz == null) {
                    try {
                        clazz = class$15 = Class.forName("org.eclipse.jdt.core.dom.CharacterLiteral");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 14: {
                Class<?> clazz = class$16;
                if (clazz == null) {
                    try {
                        clazz = class$16 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 15: {
                Class<?> clazz = class$17;
                if (clazz == null) {
                    try {
                        clazz = class$17 = Class.forName("org.eclipse.jdt.core.dom.CompilationUnit");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 16: {
                Class<?> clazz = class$18;
                if (clazz == null) {
                    try {
                        clazz = class$18 = Class.forName("org.eclipse.jdt.core.dom.ConditionalExpression");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 17: {
                Class<?> clazz = class$19;
                if (clazz == null) {
                    try {
                        clazz = class$19 = Class.forName("org.eclipse.jdt.core.dom.ConstructorInvocation");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 18: {
                Class<?> clazz = class$20;
                if (clazz == null) {
                    try {
                        clazz = class$20 = Class.forName("org.eclipse.jdt.core.dom.ContinueStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 84: {
                Class<?> clazz = class$21;
                if (clazz == null) {
                    try {
                        clazz = class$21 = Class.forName("org.eclipse.jdt.core.dom.UnionType");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 19: {
                Class<?> clazz = class$22;
                if (clazz == null) {
                    try {
                        clazz = class$22 = Class.forName("org.eclipse.jdt.core.dom.DoStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 20: {
                Class<?> clazz = class$23;
                if (clazz == null) {
                    try {
                        clazz = class$23 = Class.forName("org.eclipse.jdt.core.dom.EmptyStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 70: {
                Class<?> clazz = class$24;
                if (clazz == null) {
                    try {
                        clazz = class$24 = Class.forName("org.eclipse.jdt.core.dom.EnhancedForStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 72: {
                Class<?> clazz = class$25;
                if (clazz == null) {
                    try {
                        clazz = class$25 = Class.forName("org.eclipse.jdt.core.dom.EnumConstantDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 71: {
                Class<?> clazz = class$26;
                if (clazz == null) {
                    try {
                        clazz = class$26 = Class.forName("org.eclipse.jdt.core.dom.EnumDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 21: {
                Class<?> clazz = class$27;
                if (clazz == null) {
                    try {
                        clazz = class$27 = Class.forName("org.eclipse.jdt.core.dom.ExpressionStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 22: {
                Class<?> clazz = class$28;
                if (clazz == null) {
                    try {
                        clazz = class$28 = Class.forName("org.eclipse.jdt.core.dom.FieldAccess");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 23: {
                Class<?> clazz = class$29;
                if (clazz == null) {
                    try {
                        clazz = class$29 = Class.forName("org.eclipse.jdt.core.dom.FieldDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 24: {
                Class<?> clazz = class$30;
                if (clazz == null) {
                    try {
                        clazz = class$30 = Class.forName("org.eclipse.jdt.core.dom.ForStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 25: {
                Class<?> clazz = class$31;
                if (clazz == null) {
                    try {
                        clazz = class$31 = Class.forName("org.eclipse.jdt.core.dom.IfStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 26: {
                Class<?> clazz = class$32;
                if (clazz == null) {
                    try {
                        clazz = class$32 = Class.forName("org.eclipse.jdt.core.dom.ImportDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 27: {
                Class<?> clazz = class$33;
                if (clazz == null) {
                    try {
                        clazz = class$33 = Class.forName("org.eclipse.jdt.core.dom.InfixExpression");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 28: {
                Class<?> clazz = class$34;
                if (clazz == null) {
                    try {
                        clazz = class$34 = Class.forName("org.eclipse.jdt.core.dom.Initializer");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 62: {
                Class<?> clazz = class$35;
                if (clazz == null) {
                    try {
                        clazz = class$35 = Class.forName("org.eclipse.jdt.core.dom.InstanceofExpression");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 29: {
                Class<?> clazz = class$36;
                if (clazz == null) {
                    try {
                        clazz = class$36 = Class.forName("org.eclipse.jdt.core.dom.Javadoc");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 30: {
                Class<?> clazz = class$37;
                if (clazz == null) {
                    try {
                        clazz = class$37 = Class.forName("org.eclipse.jdt.core.dom.LabeledStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 63: {
                Class<?> clazz = class$38;
                if (clazz == null) {
                    try {
                        clazz = class$38 = Class.forName("org.eclipse.jdt.core.dom.LineComment");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 78: {
                Class<?> clazz = class$39;
                if (clazz == null) {
                    try {
                        clazz = class$39 = Class.forName("org.eclipse.jdt.core.dom.MarkerAnnotation");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 67: {
                Class<?> clazz = class$40;
                if (clazz == null) {
                    try {
                        clazz = class$40 = Class.forName("org.eclipse.jdt.core.dom.MemberRef");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 80: {
                Class<?> clazz = class$41;
                if (clazz == null) {
                    try {
                        clazz = class$41 = Class.forName("org.eclipse.jdt.core.dom.MemberValuePair");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 31: {
                Class<?> clazz = class$42;
                if (clazz == null) {
                    try {
                        clazz = class$42 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 32: {
                Class<?> clazz = class$43;
                if (clazz == null) {
                    try {
                        clazz = class$43 = Class.forName("org.eclipse.jdt.core.dom.MethodInvocation");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 68: {
                Class<?> clazz = class$44;
                if (clazz == null) {
                    try {
                        clazz = class$44 = Class.forName("org.eclipse.jdt.core.dom.MethodRef");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 69: {
                Class<?> clazz = class$45;
                if (clazz == null) {
                    try {
                        clazz = class$45 = Class.forName("org.eclipse.jdt.core.dom.MethodRefParameter");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 83: {
                Class<?> clazz = class$46;
                if (clazz == null) {
                    try {
                        clazz = class$46 = Class.forName("org.eclipse.jdt.core.dom.Modifier");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 77: {
                Class<?> clazz = class$47;
                if (clazz == null) {
                    try {
                        clazz = class$47 = Class.forName("org.eclipse.jdt.core.dom.NormalAnnotation");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 33: {
                Class<?> clazz = class$48;
                if (clazz == null) {
                    try {
                        clazz = class$48 = Class.forName("org.eclipse.jdt.core.dom.NullLiteral");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 34: {
                Class<?> clazz = class$49;
                if (clazz == null) {
                    try {
                        clazz = class$49 = Class.forName("org.eclipse.jdt.core.dom.NumberLiteral");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 35: {
                Class<?> clazz = class$50;
                if (clazz == null) {
                    try {
                        clazz = class$50 = Class.forName("org.eclipse.jdt.core.dom.PackageDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 74: {
                Class<?> clazz = class$51;
                if (clazz == null) {
                    try {
                        clazz = class$51 = Class.forName("org.eclipse.jdt.core.dom.ParameterizedType");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 36: {
                Class<?> clazz = class$52;
                if (clazz == null) {
                    try {
                        clazz = class$52 = Class.forName("org.eclipse.jdt.core.dom.ParenthesizedExpression");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 37: {
                Class<?> clazz = class$53;
                if (clazz == null) {
                    try {
                        clazz = class$53 = Class.forName("org.eclipse.jdt.core.dom.PostfixExpression");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 38: {
                Class<?> clazz = class$54;
                if (clazz == null) {
                    try {
                        clazz = class$54 = Class.forName("org.eclipse.jdt.core.dom.PrefixExpression");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 39: {
                Class<?> clazz = class$55;
                if (clazz == null) {
                    try {
                        clazz = class$55 = Class.forName("org.eclipse.jdt.core.dom.PrimitiveType");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 40: {
                Class<?> clazz = class$56;
                if (clazz == null) {
                    try {
                        clazz = class$56 = Class.forName("org.eclipse.jdt.core.dom.QualifiedName");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 75: {
                Class<?> clazz = class$57;
                if (clazz == null) {
                    try {
                        clazz = class$57 = Class.forName("org.eclipse.jdt.core.dom.QualifiedType");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 41: {
                Class<?> clazz = class$58;
                if (clazz == null) {
                    try {
                        clazz = class$58 = Class.forName("org.eclipse.jdt.core.dom.ReturnStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 42: {
                Class<?> clazz = class$59;
                if (clazz == null) {
                    try {
                        clazz = class$59 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 43: {
                Class<?> clazz = class$60;
                if (clazz == null) {
                    try {
                        clazz = class$60 = Class.forName("org.eclipse.jdt.core.dom.SimpleType");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 79: {
                Class<?> clazz = class$61;
                if (clazz == null) {
                    try {
                        clazz = class$61 = Class.forName("org.eclipse.jdt.core.dom.SingleMemberAnnotation");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 44: {
                Class<?> clazz = class$62;
                if (clazz == null) {
                    try {
                        clazz = class$62 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 45: {
                Class<?> clazz = class$63;
                if (clazz == null) {
                    try {
                        clazz = class$63 = Class.forName("org.eclipse.jdt.core.dom.StringLiteral");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 46: {
                Class<?> clazz = class$64;
                if (clazz == null) {
                    try {
                        clazz = class$64 = Class.forName("org.eclipse.jdt.core.dom.SuperConstructorInvocation");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 47: {
                Class<?> clazz = class$65;
                if (clazz == null) {
                    try {
                        clazz = class$65 = Class.forName("org.eclipse.jdt.core.dom.SuperFieldAccess");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 48: {
                Class<?> clazz = class$66;
                if (clazz == null) {
                    try {
                        clazz = class$66 = Class.forName("org.eclipse.jdt.core.dom.SuperMethodInvocation");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 49: {
                Class<?> clazz = class$67;
                if (clazz == null) {
                    try {
                        clazz = class$67 = Class.forName("org.eclipse.jdt.core.dom.SwitchCase");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 50: {
                Class<?> clazz = class$68;
                if (clazz == null) {
                    try {
                        clazz = class$68 = Class.forName("org.eclipse.jdt.core.dom.SwitchStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 51: {
                Class<?> clazz = class$69;
                if (clazz == null) {
                    try {
                        clazz = class$69 = Class.forName("org.eclipse.jdt.core.dom.SynchronizedStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 65: {
                Class<?> clazz = class$70;
                if (clazz == null) {
                    try {
                        clazz = class$70 = Class.forName("org.eclipse.jdt.core.dom.TagElement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 66: {
                Class<?> clazz = class$71;
                if (clazz == null) {
                    try {
                        clazz = class$71 = Class.forName("org.eclipse.jdt.core.dom.TextElement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 52: {
                Class<?> clazz = class$72;
                if (clazz == null) {
                    try {
                        clazz = class$72 = Class.forName("org.eclipse.jdt.core.dom.ThisExpression");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 53: {
                Class<?> clazz = class$73;
                if (clazz == null) {
                    try {
                        clazz = class$73 = Class.forName("org.eclipse.jdt.core.dom.ThrowStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 54: {
                Class<?> clazz = class$74;
                if (clazz == null) {
                    try {
                        clazz = class$74 = Class.forName("org.eclipse.jdt.core.dom.TryStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 55: {
                Class<?> clazz = class$75;
                if (clazz == null) {
                    try {
                        clazz = class$75 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 56: {
                Class<?> clazz = class$76;
                if (clazz == null) {
                    try {
                        clazz = class$76 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclarationStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 57: {
                Class<?> clazz = class$77;
                if (clazz == null) {
                    try {
                        clazz = class$77 = Class.forName("org.eclipse.jdt.core.dom.TypeLiteral");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 73: {
                Class<?> clazz = class$78;
                if (clazz == null) {
                    try {
                        clazz = class$78 = Class.forName("org.eclipse.jdt.core.dom.TypeParameter");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 58: {
                Class<?> clazz = class$79;
                if (clazz == null) {
                    try {
                        clazz = class$79 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationExpression");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 59: {
                Class<?> clazz = class$80;
                if (clazz == null) {
                    try {
                        clazz = class$80 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationFragment");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 60: {
                Class<?> clazz = class$81;
                if (clazz == null) {
                    try {
                        clazz = class$81 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 61: {
                Class<?> clazz = class$82;
                if (clazz == null) {
                    try {
                        clazz = class$82 = Class.forName("org.eclipse.jdt.core.dom.WhileStatement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
            case 76: {
                Class<?> clazz = class$83;
                if (clazz == null) {
                    try {
                        clazz = class$83 = Class.forName("org.eclipse.jdt.core.dom.WildcardType");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return clazz;
            }
        }
        throw new IllegalArgumentException();
    }

    ASTNode(AST ast) {
        if (ast == null) {
            throw new IllegalArgumentException();
        }
        this.ast = ast;
        this.setNodeType(this.getNodeType0());
        this.setFlags(ast.getDefaultNodeFlag());
    }

    public final AST getAST() {
        return this.ast;
    }

    public final ASTNode getParent() {
        return this.parent;
    }

    public final StructuralPropertyDescriptor getLocationInParent() {
        return this.location;
    }

    public final ASTNode getRoot() {
        ASTNode candidate = this;
        ASTNode p;
        while ((p = candidate.getParent()) != null) {
            candidate = p;
        }
        return candidate;
    }

    public final Object getStructuralProperty(StructuralPropertyDescriptor property) {
        if (property instanceof SimplePropertyDescriptor) {
            SimplePropertyDescriptor p = (SimplePropertyDescriptor)property;
            if (p.getValueType() == Integer.TYPE) {
                int result = this.internalGetSetIntProperty(p, true, 0);
                return new Integer(result);
            }
            if (p.getValueType() == Boolean.TYPE) {
                boolean result = this.internalGetSetBooleanProperty(p, true, false);
                return result;
            }
            return this.internalGetSetObjectProperty(p, true, null);
        }
        if (property instanceof ChildPropertyDescriptor) {
            return this.internalGetSetChildProperty((ChildPropertyDescriptor)property, true, null);
        }
        if (property instanceof ChildListPropertyDescriptor) {
            return this.internalGetChildListProperty((ChildListPropertyDescriptor)property);
        }
        throw new IllegalArgumentException();
    }

    public final void setStructuralProperty(StructuralPropertyDescriptor property, Object value) {
        if (property instanceof SimplePropertyDescriptor) {
            SimplePropertyDescriptor p = (SimplePropertyDescriptor)property;
            if (p.getValueType() == Integer.TYPE) {
                int arg = (Integer)value;
                this.internalGetSetIntProperty(p, false, arg);
                return;
            }
            if (p.getValueType() == Boolean.TYPE) {
                boolean arg = (Boolean)value;
                this.internalGetSetBooleanProperty(p, false, arg);
                return;
            }
            if (value == null && p.isMandatory()) {
                throw new IllegalArgumentException();
            }
            this.internalGetSetObjectProperty(p, false, value);
            return;
        }
        if (property instanceof ChildPropertyDescriptor) {
            ChildPropertyDescriptor p = (ChildPropertyDescriptor)property;
            ASTNode child = (ASTNode)value;
            if (child == null && p.isMandatory()) {
                throw new IllegalArgumentException();
            }
            this.internalGetSetChildProperty(p, false, child);
            return;
        }
        if (property instanceof ChildListPropertyDescriptor) {
            throw new IllegalArgumentException("Cannot set the list of child list property");
        }
    }

    int internalGetSetIntProperty(SimplePropertyDescriptor property, boolean get, int value) {
        throw new RuntimeException("Node does not have this property");
    }

    boolean internalGetSetBooleanProperty(SimplePropertyDescriptor property, boolean get, boolean value) {
        throw new RuntimeException("Node does not have this property");
    }

    Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        throw new RuntimeException("Node does not have this property");
    }

    ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        throw new RuntimeException("Node does not have this property");
    }

    List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        throw new RuntimeException("Node does not have this property");
    }

    public final List structuralPropertiesForType() {
        return this.internalStructuralPropertiesForType(this.ast.apiLevel);
    }

    abstract List internalStructuralPropertiesForType(int var1);

    static void createPropertyList(Class nodeClass, List propertyList) {
        propertyList.add(nodeClass);
    }

    static void addProperty(StructuralPropertyDescriptor property, List propertyList) {
        Class nodeClass = (Class)propertyList.get(0);
        if (property.getNodeClass() != nodeClass) {
            throw new RuntimeException("Structural property descriptor has wrong node class!");
        }
        propertyList.add(property);
    }

    static List reapPropertyList(List propertyList) {
        propertyList.remove(0);
        ArrayList a = new ArrayList(propertyList.size());
        a.addAll(propertyList);
        return Collections.unmodifiableList(a);
    }

    final void unsupportedIn2() {
        if (this.ast.apiLevel == 2) {
            throw new UnsupportedOperationException("Operation not supported in JLS2 AST");
        }
    }

    final void unsupportedIn2_3() {
        if (this.ast.apiLevel <= 3) {
            throw new UnsupportedOperationException("Operation only supported in JLS4 AST");
        }
    }

    final void supportedOnlyIn2() {
        if (this.ast.apiLevel != 2) {
            throw new UnsupportedOperationException("Operation only supported in JLS2 AST");
        }
    }

    final void setParent(ASTNode parent, StructuralPropertyDescriptor property) {
        this.ast.modifying();
        this.parent = parent;
        this.location = property;
    }

    public final void delete() {
        StructuralPropertyDescriptor p = this.getLocationInParent();
        if (p == null) {
            return;
        }
        if (p.isChildProperty()) {
            this.getParent().setStructuralProperty(this.location, null);
            return;
        }
        if (p.isChildListProperty()) {
            List l = (List)this.getParent().getStructuralProperty(this.location);
            l.remove(this);
        }
    }

    static void checkNewChild(ASTNode node, ASTNode newChild, boolean cycleCheck, Class nodeType) {
        if (newChild.ast != node.ast) {
            throw new IllegalArgumentException();
        }
        if (newChild.getParent() != null) {
            throw new IllegalArgumentException();
        }
        if (cycleCheck && newChild == node.getRoot()) {
            throw new IllegalArgumentException();
        }
        Class<?> childClass = newChild.getClass();
        if (nodeType != null && !nodeType.isAssignableFrom(childClass)) {
            throw new ClassCastException();
        }
        if ((newChild.typeAndFlags & 4) != 0) {
            throw new IllegalArgumentException("AST node cannot be modified");
        }
    }

    final void preReplaceChild(ASTNode oldChild, ASTNode newChild, ChildPropertyDescriptor property) {
        if ((this.typeAndFlags & 4) != 0) {
            throw new IllegalArgumentException("AST node cannot be modified");
        }
        if (newChild != null) {
            ASTNode.checkNewChild(this, newChild, property.cycleRisk, null);
        }
        if (oldChild != null) {
            if ((oldChild.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            if (newChild != null) {
                this.ast.preReplaceChildEvent(this, oldChild, newChild, property);
            } else {
                this.ast.preRemoveChildEvent(this, oldChild, property);
            }
            oldChild.setParent(null, null);
        } else if (newChild != null) {
            this.ast.preAddChildEvent(this, newChild, property);
        }
        if (newChild != null) {
            newChild.setParent(this, property);
        }
    }

    final void postReplaceChild(ASTNode oldChild, ASTNode newChild, ChildPropertyDescriptor property) {
        if (newChild != null) {
            if (oldChild != null) {
                this.ast.postReplaceChildEvent(this, oldChild, newChild, property);
            } else {
                this.ast.postAddChildEvent(this, newChild, property);
            }
        } else {
            this.ast.postRemoveChildEvent(this, oldChild, property);
        }
    }

    final void preValueChange(SimplePropertyDescriptor property) {
        if ((this.typeAndFlags & 4) != 0) {
            throw new IllegalArgumentException("AST node cannot be modified");
        }
        this.ast.preValueChangeEvent(this, property);
        this.ast.modifying();
    }

    final void postValueChange(SimplePropertyDescriptor property) {
        this.ast.postValueChangeEvent(this, property);
    }

    final void checkModifiable() {
        if ((this.typeAndFlags & 4) != 0) {
            throw new IllegalArgumentException("AST node cannot be modified");
        }
        this.ast.modifying();
    }

    final void preLazyInit() {
        this.ast.disableEvents();
    }

    final void postLazyInit(ASTNode newChild, ChildPropertyDescriptor property) {
        newChild.setParent(this, property);
        this.ast.reenableEvents();
    }

    public final Object getProperty(String propertyName) {
        if (propertyName == null) {
            throw new IllegalArgumentException();
        }
        if (this.property1 == null) {
            return null;
        }
        if (this.property1 instanceof String) {
            if (propertyName.equals(this.property1)) {
                return this.property2;
            }
            return null;
        }
        Map m = (Map)this.property1;
        return m.get(propertyName);
    }

    public final void setProperty(String propertyName, Object data) {
        if (propertyName == null) {
            throw new IllegalArgumentException();
        }
        if (this.property1 == null) {
            if (data == null) {
                return;
            }
            this.property1 = propertyName;
            this.property2 = data;
            return;
        }
        if (this.property1 instanceof String) {
            if (propertyName.equals(this.property1)) {
                if (data == null) {
                    this.property1 = null;
                    this.property2 = null;
                } else {
                    this.property2 = data;
                }
                return;
            }
            if (data == null) {
                return;
            }
            HashMap<Object, Object> m = new HashMap<Object, Object>(3);
            m.put(this.property1, this.property2);
            m.put(propertyName, data);
            this.property1 = m;
            this.property2 = null;
            return;
        }
        Map m = (Map)this.property1;
        if (data == null) {
            m.remove(propertyName);
            if (m.size() == 1) {
                Map.Entry[] entries = m.entrySet().toArray(new Map.Entry[1]);
                this.property1 = entries[0].getKey();
                this.property2 = entries[0].getValue();
            }
            return;
        }
        m.put(propertyName, data);
    }

    public final Map properties() {
        if (this.property1 == null) {
            return UNMODIFIABLE_EMPTY_MAP;
        }
        if (this.property1 instanceof String) {
            return Collections.singletonMap(this.property1, this.property2);
        }
        if (this.property2 == null) {
            this.property2 = Collections.unmodifiableMap((Map)this.property1);
        }
        return (Map)this.property2;
    }

    public final int getFlags() {
        return this.typeAndFlags & 0xFFFF;
    }

    public final void setFlags(int flags) {
        this.ast.modifying();
        int old = this.typeAndFlags & 0xFFFF0000;
        this.typeAndFlags = old | flags & 0xFFFF;
    }

    public final int getNodeType() {
        return this.typeAndFlags >>> 16;
    }

    private void setNodeType(int nodeType) {
        int old = this.typeAndFlags & 0xFFFF0000;
        this.typeAndFlags = old | nodeType << 16;
    }

    abstract int getNodeType0();

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final boolean subtreeMatch(ASTMatcher matcher, Object other) {
        return this.subtreeMatch0(matcher, other);
    }

    abstract boolean subtreeMatch0(ASTMatcher var1, Object var2);

    public static ASTNode copySubtree(AST target, ASTNode node) {
        if (node == null) {
            return null;
        }
        if (target == null) {
            throw new IllegalArgumentException();
        }
        if (target.apiLevel() != node.getAST().apiLevel()) {
            throw new UnsupportedOperationException();
        }
        ASTNode newNode = node.clone(target);
        return newNode;
    }

    public static List copySubtrees(AST target, List nodes) {
        ArrayList<ASTNode> result = new ArrayList<ASTNode>(nodes.size());
        Iterator it = nodes.iterator();
        while (it.hasNext()) {
            ASTNode oldNode = (ASTNode)it.next();
            ASTNode newNode = oldNode.clone(target);
            result.add(newNode);
        }
        return result;
    }

    final ASTNode clone(AST target) {
        this.ast.preCloneNodeEvent(this);
        ASTNode c = this.clone0(target);
        this.ast.postCloneNodeEvent(this, c);
        return c;
    }

    abstract ASTNode clone0(AST var1);

    public final void accept(ASTVisitor visitor) {
        if (visitor == null) {
            throw new IllegalArgumentException();
        }
        if (visitor.preVisit2(this)) {
            this.accept0(visitor);
        }
        visitor.postVisit(this);
    }

    abstract void accept0(ASTVisitor var1);

    final void acceptChild(ASTVisitor visitor, ASTNode child) {
        if (child == null) {
            return;
        }
        child.accept(visitor);
    }

    final void acceptChildren(ASTVisitor visitor, NodeList children) {
        NodeList.Cursor cursor = children.newCursor();
        try {
            while (cursor.hasNext()) {
                ASTNode child = (ASTNode)cursor.next();
                child.accept(visitor);
            }
        }
        finally {
            children.releaseCursor(cursor);
        }
    }

    public final int getStartPosition() {
        return this.startPosition;
    }

    public final int getLength() {
        return this.length;
    }

    public final void setSourceRange(int startPosition, int length) {
        if (startPosition >= 0 && length < 0) {
            throw new IllegalArgumentException();
        }
        if (startPosition < 0 && length != 0) {
            throw new IllegalArgumentException();
        }
        this.checkModifiable();
        this.startPosition = startPosition;
        this.length = length;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        int p = buffer.length();
        try {
            this.appendDebugString(buffer);
        }
        catch (RuntimeException runtimeException) {
            buffer.setLength(p);
            buffer.append("!");
            buffer.append(this.standardToString());
        }
        return buffer.toString();
    }

    final String standardToString() {
        return super.toString();
    }

    void appendDebugString(StringBuffer buffer) {
        this.appendPrintString(buffer);
    }

    final void appendPrintString(StringBuffer buffer) {
        NaiveASTFlattener printer = new NaiveASTFlattener();
        this.accept(printer);
        buffer.append(printer.getResult());
    }

    static int stringSize(String string) {
        int size = 0;
        if (string != null) {
            size += 28;
            size += 12 + 2 * string.length();
        }
        return size;
    }

    public final int subtreeBytes() {
        return this.treeSize();
    }

    abstract int treeSize();

    abstract int memSize();

    class NodeList
    extends AbstractList {
        ArrayList store = new ArrayList(0);
        ChildListPropertyDescriptor propertyDescriptor;
        private List cursors = null;

        NodeList(ChildListPropertyDescriptor property) {
            this.propertyDescriptor = property;
        }

        public int size() {
            return this.store.size();
        }

        public Object get(int index) {
            return this.store.get(index);
        }

        public Object set(int index, Object element) {
            if (element == null) {
                throw new IllegalArgumentException();
            }
            if ((ASTNode.this.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode newChild = (ASTNode)element;
            ASTNode oldChild = (ASTNode)this.store.get(index);
            if (oldChild == newChild) {
                return oldChild;
            }
            if ((oldChild.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode.checkNewChild(ASTNode.this, newChild, this.propertyDescriptor.cycleRisk, this.propertyDescriptor.elementType);
            ASTNode.this.ast.preReplaceChildEvent(ASTNode.this, oldChild, newChild, this.propertyDescriptor);
            ASTNode result = this.store.set(index, newChild);
            oldChild.setParent(null, null);
            newChild.setParent(ASTNode.this, this.propertyDescriptor);
            ASTNode.this.ast.postReplaceChildEvent(ASTNode.this, oldChild, newChild, this.propertyDescriptor);
            return result;
        }

        public void add(int index, Object element) {
            if (element == null) {
                throw new IllegalArgumentException();
            }
            if ((ASTNode.this.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode newChild = (ASTNode)element;
            ASTNode.checkNewChild(ASTNode.this, newChild, this.propertyDescriptor.cycleRisk, this.propertyDescriptor.elementType);
            ASTNode.this.ast.preAddChildEvent(ASTNode.this, newChild, this.propertyDescriptor);
            this.store.add(index, element);
            this.updateCursors(index, 1);
            newChild.setParent(ASTNode.this, this.propertyDescriptor);
            ASTNode.this.ast.postAddChildEvent(ASTNode.this, newChild, this.propertyDescriptor);
        }

        public Object remove(int index) {
            if ((ASTNode.this.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode oldChild = (ASTNode)this.store.get(index);
            if ((oldChild.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode.this.ast.preRemoveChildEvent(ASTNode.this, oldChild, this.propertyDescriptor);
            oldChild.setParent(null, null);
            Object result = this.store.remove(index);
            this.updateCursors(index, -1);
            ASTNode.this.ast.postRemoveChildEvent(ASTNode.this, oldChild, this.propertyDescriptor);
            return result;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        Cursor newCursor() {
            NodeList nodeList = this;
            synchronized (nodeList) {
                if (this.cursors == null) {
                    this.cursors = new ArrayList(1);
                }
                Cursor result = new Cursor();
                this.cursors.add(result);
                return result;
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        void releaseCursor(Cursor cursor) {
            NodeList nodeList = this;
            synchronized (nodeList) {
                this.cursors.remove(cursor);
                if (this.cursors.isEmpty()) {
                    this.cursors = null;
                }
            }
        }

        private synchronized void updateCursors(int index, int delta) {
            if (this.cursors == null) {
                return;
            }
            Iterator it = this.cursors.iterator();
            while (it.hasNext()) {
                Cursor c = (Cursor)it.next();
                c.update(index, delta);
            }
        }

        int memSize() {
            int result = 32;
            result += 20;
            return result += 12 + 4 * this.size();
        }

        int listSize() {
            int result = this.memSize();
            Iterator it = this.iterator();
            while (it.hasNext()) {
                ASTNode child = (ASTNode)it.next();
                result += child.treeSize();
            }
            return result;
        }

        class Cursor
        implements Iterator {
            private int position = 0;

            Cursor() {
            }

            public boolean hasNext() {
                return this.position < NodeList.this.store.size();
            }

            public Object next() {
                Object result = NodeList.this.store.get(this.position);
                ++this.position;
                return result;
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }

            void update(int index, int delta) {
                if (this.position > index) {
                    this.position += delta;
                }
            }
        }
    }
}

