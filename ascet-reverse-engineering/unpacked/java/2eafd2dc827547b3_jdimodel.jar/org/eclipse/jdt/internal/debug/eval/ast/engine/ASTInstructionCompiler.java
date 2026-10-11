/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.jdt.core.Flags
 *  org.eclipse.jdt.core.Signature
 *  org.eclipse.jdt.core.compiler.IProblem
 *  org.eclipse.jdt.core.dom.ASTNode
 *  org.eclipse.jdt.core.dom.ASTVisitor
 *  org.eclipse.jdt.core.dom.AbstractTypeDeclaration
 *  org.eclipse.jdt.core.dom.AnnotationTypeDeclaration
 *  org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration
 *  org.eclipse.jdt.core.dom.AnonymousClassDeclaration
 *  org.eclipse.jdt.core.dom.ArrayAccess
 *  org.eclipse.jdt.core.dom.ArrayCreation
 *  org.eclipse.jdt.core.dom.ArrayInitializer
 *  org.eclipse.jdt.core.dom.ArrayType
 *  org.eclipse.jdt.core.dom.AssertStatement
 *  org.eclipse.jdt.core.dom.Assignment
 *  org.eclipse.jdt.core.dom.Block
 *  org.eclipse.jdt.core.dom.BlockComment
 *  org.eclipse.jdt.core.dom.BooleanLiteral
 *  org.eclipse.jdt.core.dom.BreakStatement
 *  org.eclipse.jdt.core.dom.CastExpression
 *  org.eclipse.jdt.core.dom.CatchClause
 *  org.eclipse.jdt.core.dom.CharacterLiteral
 *  org.eclipse.jdt.core.dom.ClassInstanceCreation
 *  org.eclipse.jdt.core.dom.CompilationUnit
 *  org.eclipse.jdt.core.dom.ConditionalExpression
 *  org.eclipse.jdt.core.dom.ConstructorInvocation
 *  org.eclipse.jdt.core.dom.ContinueStatement
 *  org.eclipse.jdt.core.dom.DoStatement
 *  org.eclipse.jdt.core.dom.EmptyStatement
 *  org.eclipse.jdt.core.dom.EnhancedForStatement
 *  org.eclipse.jdt.core.dom.EnumConstantDeclaration
 *  org.eclipse.jdt.core.dom.EnumDeclaration
 *  org.eclipse.jdt.core.dom.Expression
 *  org.eclipse.jdt.core.dom.ExpressionStatement
 *  org.eclipse.jdt.core.dom.FieldAccess
 *  org.eclipse.jdt.core.dom.FieldDeclaration
 *  org.eclipse.jdt.core.dom.ForStatement
 *  org.eclipse.jdt.core.dom.IBinding
 *  org.eclipse.jdt.core.dom.IMethodBinding
 *  org.eclipse.jdt.core.dom.IPackageBinding
 *  org.eclipse.jdt.core.dom.ITypeBinding
 *  org.eclipse.jdt.core.dom.IVariableBinding
 *  org.eclipse.jdt.core.dom.IfStatement
 *  org.eclipse.jdt.core.dom.ImportDeclaration
 *  org.eclipse.jdt.core.dom.InfixExpression
 *  org.eclipse.jdt.core.dom.Initializer
 *  org.eclipse.jdt.core.dom.InstanceofExpression
 *  org.eclipse.jdt.core.dom.Javadoc
 *  org.eclipse.jdt.core.dom.LabeledStatement
 *  org.eclipse.jdt.core.dom.LineComment
 *  org.eclipse.jdt.core.dom.MarkerAnnotation
 *  org.eclipse.jdt.core.dom.MemberRef
 *  org.eclipse.jdt.core.dom.MemberValuePair
 *  org.eclipse.jdt.core.dom.MethodDeclaration
 *  org.eclipse.jdt.core.dom.MethodInvocation
 *  org.eclipse.jdt.core.dom.MethodRef
 *  org.eclipse.jdt.core.dom.MethodRefParameter
 *  org.eclipse.jdt.core.dom.Modifier
 *  org.eclipse.jdt.core.dom.Name
 *  org.eclipse.jdt.core.dom.NormalAnnotation
 *  org.eclipse.jdt.core.dom.NullLiteral
 *  org.eclipse.jdt.core.dom.NumberLiteral
 *  org.eclipse.jdt.core.dom.PackageDeclaration
 *  org.eclipse.jdt.core.dom.ParameterizedType
 *  org.eclipse.jdt.core.dom.ParenthesizedExpression
 *  org.eclipse.jdt.core.dom.PostfixExpression
 *  org.eclipse.jdt.core.dom.PrefixExpression
 *  org.eclipse.jdt.core.dom.PrimitiveType
 *  org.eclipse.jdt.core.dom.QualifiedName
 *  org.eclipse.jdt.core.dom.QualifiedType
 *  org.eclipse.jdt.core.dom.ReturnStatement
 *  org.eclipse.jdt.core.dom.SimpleName
 *  org.eclipse.jdt.core.dom.SimpleType
 *  org.eclipse.jdt.core.dom.SingleMemberAnnotation
 *  org.eclipse.jdt.core.dom.SingleVariableDeclaration
 *  org.eclipse.jdt.core.dom.Statement
 *  org.eclipse.jdt.core.dom.StringLiteral
 *  org.eclipse.jdt.core.dom.SuperConstructorInvocation
 *  org.eclipse.jdt.core.dom.SuperFieldAccess
 *  org.eclipse.jdt.core.dom.SuperMethodInvocation
 *  org.eclipse.jdt.core.dom.SwitchCase
 *  org.eclipse.jdt.core.dom.SwitchStatement
 *  org.eclipse.jdt.core.dom.SynchronizedStatement
 *  org.eclipse.jdt.core.dom.TagElement
 *  org.eclipse.jdt.core.dom.TextElement
 *  org.eclipse.jdt.core.dom.ThisExpression
 *  org.eclipse.jdt.core.dom.ThrowStatement
 *  org.eclipse.jdt.core.dom.TryStatement
 *  org.eclipse.jdt.core.dom.Type
 *  org.eclipse.jdt.core.dom.TypeDeclaration
 *  org.eclipse.jdt.core.dom.TypeDeclarationStatement
 *  org.eclipse.jdt.core.dom.TypeLiteral
 *  org.eclipse.jdt.core.dom.TypeParameter
 *  org.eclipse.jdt.core.dom.VariableDeclarationExpression
 *  org.eclipse.jdt.core.dom.VariableDeclarationFragment
 *  org.eclipse.jdt.core.dom.VariableDeclarationStatement
 *  org.eclipse.jdt.core.dom.WhileStatement
 *  org.eclipse.jdt.core.dom.WildcardType
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
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
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.IPackageBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.InstanceofExpression;
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
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.StringLiteral;
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
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.internal.debug.eval.ast.engine.EvaluationEngineMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.AndAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.AndOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ArrayAllocation;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ArrayInitializerInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.AssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Cast;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ConditionalJump;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Constructor;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.DivideAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.DivideOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Dup;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.DupX1;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.EqualEqualOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.GreaterEqualOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.GreaterOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstanceOfOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Instruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionSequence;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Jump;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.LeftShiftAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.LeftShiftOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.LessEqualOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.LessOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.LocalVariableCreation;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.MinusAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.MinusOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.MultiplyAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.MultiplyOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.NoOp;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.NotOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.OrAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.OrOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PlusAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PlusOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Pop;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PostfixMinusMinusOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PostfixPlusPlusOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PrefixMinusMinusOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PrefixPlusPlusOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushArrayLength;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushArrayType;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushBoolean;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushChar;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushClassLiteralValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushDouble;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushFieldVariable;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushFloat;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushInt;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushLocalVariable;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushLong;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushNull;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushPrimitiveType;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushStaticFieldVariable;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushString;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushThis;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.PushType;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.RemainderAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.RemainderOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ReturnInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.RightShiftAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.RightShiftOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SendMessage;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SendStaticMessage;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ThrowInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.TwiddleOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.UnaryMinusOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.UnaryPlusOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.UnsignedRightShiftAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.UnsignedRightShiftOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Value;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.XorAssignmentOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.XorOperator;

public class ASTInstructionCompiler
extends ASTVisitor {
    private static boolean VERBOSE = false;
    private InstructionSequence fInstructions;
    private List fCompleteInstructions;
    private int fStartPosition;
    private boolean fActive;
    private boolean fHasErrors;
    private Stack fStack;
    private int fCounter;
    private int fUniqueIdIndex = 0;

    public ASTInstructionCompiler(int startPosition, String snippet) {
        this.fStartPosition = startPosition;
        this.fInstructions = new InstructionSequence(snippet);
        this.fStack = new Stack();
        this.fCompleteInstructions = new ArrayList();
    }

    public InstructionSequence getInstructions() {
        return this.fInstructions;
    }

    public boolean hasErrors() {
        return this.fHasErrors;
    }

    private void setHasError(boolean value) {
        this.fHasErrors = value;
    }

    private void addErrorMessage(String message) {
        this.fInstructions.addError(message);
    }

    private boolean isActive() {
        return this.fActive;
    }

    private void setActive(boolean active) {
        this.fActive = active;
    }

    private void push(Instruction i) {
        this.fStack.push(i);
    }

    private Instruction pop() {
        return (Instruction)this.fStack.pop();
    }

    private void storeInstruction() {
        Instruction instruction = this.pop();
        ++this.fCounter;
        if (instruction instanceof CompoundInstruction) {
            ((CompoundInstruction)instruction).setEnd(this.fCounter);
        }
        this.fInstructions.add(instruction);
        this.verbose("Add " + instruction.toString());
    }

    private void verbose(String message) {
        if (VERBOSE) {
            System.out.println(message);
        }
    }

    private String getTypeName(ITypeBinding typeBinding) {
        if (typeBinding.isRawType()) {
            typeBinding = typeBinding.getErasure();
        }
        if (typeBinding.isTypeVariable()) {
            ITypeBinding[] typeBounds = typeBinding.getTypeBounds();
            if (typeBounds.length > 0) {
                String name = this.getTypeName(typeBounds[0]);
                if (typeBounds.length > 1 && "java.lang.Object".equals(name)) {
                    return this.getTypeName(typeBounds[1]);
                }
                return name;
            }
            return "java.lang.Object";
        }
        if (typeBinding.isArray()) {
            StringBuffer name = new StringBuffer(this.getTypeName(typeBinding.getElementType()));
            int dimensions = typeBinding.getDimensions();
            int i = 0;
            while (i < dimensions) {
                name.append("[]");
                ++i;
            }
            return name.toString();
        }
        String typeName = typeBinding.getName();
        int parameters = typeName.indexOf(60);
        if (parameters >= 0) {
            typeName = typeName.substring(0, parameters);
        }
        StringBuffer name = new StringBuffer(typeName);
        IPackageBinding packageBinding = typeBinding.getPackage();
        typeBinding = typeBinding.getDeclaringClass();
        while (typeBinding != null) {
            name.insert(0, '$').insert(0, typeBinding.getName());
            typeBinding = typeBinding.getDeclaringClass();
        }
        if (packageBinding != null && !packageBinding.isUnnamed()) {
            name.insert(0, '.').insert(0, packageBinding.getName());
        }
        return name.toString();
    }

    private String getTypeSignature(ITypeBinding typeBinding) {
        return Signature.createTypeSignature((String)this.getTypeName(typeBinding), (boolean)true).replace('.', '/');
    }

    private boolean isALocalType(ITypeBinding typeBinding) {
        while (typeBinding != null) {
            if (typeBinding.isLocal()) {
                return true;
            }
            typeBinding = typeBinding.getDeclaringClass();
        }
        return false;
    }

    private boolean containsALocalType(IMethodBinding methodBinding) {
        ITypeBinding[] typeBindings = methodBinding.getParameterTypes();
        int i = 0;
        int length = typeBindings.length;
        while (i < length) {
            if (this.isALocalType(typeBindings[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private int getEnclosingLevel(ASTNode node, ITypeBinding referenceTypeBinding) {
        ITypeBinding refbinding;
        ASTNode parent = node;
        ITypeBinding iTypeBinding = refbinding = referenceTypeBinding.isParameterizedType() ? referenceTypeBinding.getTypeDeclaration() : referenceTypeBinding;
        while ((parent = parent.getParent()) != null && !(parent instanceof AbstractTypeDeclaration) && !(parent instanceof AnonymousClassDeclaration)) {
        }
        if (parent == null) {
            return 0;
        }
        ITypeBinding parentBinding = null;
        if (parent instanceof AbstractTypeDeclaration) {
            parentBinding = ((AbstractTypeDeclaration)parent).resolveBinding();
        } else if (parent instanceof AnonymousClassDeclaration) {
            parentBinding = ((AnonymousClassDeclaration)parent).resolveBinding();
        }
        if (parentBinding != null && (parentBinding.isEqualTo((IBinding)refbinding) || parentBinding.isCastCompatible(refbinding))) {
            return 0;
        }
        return this.getEnclosingLevel(parent, referenceTypeBinding) + 1;
    }

    private int getSuperLevel(ITypeBinding current, ITypeBinding reference) {
        if (current.equals((Object)reference)) {
            return 0;
        }
        return this.getSuperLevel(current.getSuperclass(), reference);
    }

    private String getLabel(Statement statement) {
        ASTNode parent = statement.getParent();
        if (parent instanceof LabeledStatement) {
            return ((LabeledStatement)parent).getLabel().getIdentifier();
        }
        return null;
    }

    private void addPopInstructionIfNeeded(Expression expression) {
        boolean pop = true;
        if (expression instanceof MethodInvocation) {
            IMethodBinding methodBinding = (IMethodBinding)((MethodInvocation)expression).getName().resolveBinding();
            if (methodBinding != null && "void".equals(methodBinding.getReturnType().getName())) {
                pop = false;
            }
        } else if (expression instanceof SuperMethodInvocation) {
            IMethodBinding methodBinding = (IMethodBinding)((SuperMethodInvocation)expression).getName().resolveBinding();
            if (methodBinding != null && "void".equals(methodBinding.getReturnType().getName())) {
                pop = false;
            }
        } else if (expression instanceof VariableDeclarationExpression) {
            pop = false;
        }
        if (pop) {
            this.addPopInstruction();
        }
    }

    private void addPopInstruction() {
        Instruction lastInstruction = this.fInstructions.getInstruction(this.fInstructions.getEnd());
        this.push(new Pop(lastInstruction.getSize() + 1));
        this.storeInstruction();
    }

    private boolean checkAutoBoxing(ITypeBinding valueBinding, ITypeBinding requestedBinding) {
        if (valueBinding == null) {
            return false;
        }
        if (valueBinding.isPrimitive() == requestedBinding.isPrimitive()) {
            return false;
        }
        if (requestedBinding.isPrimitive()) {
            this.unBoxing(valueBinding);
        } else {
            this.boxing(requestedBinding, valueBinding);
        }
        return true;
    }

    private void boxing(ITypeBinding requestedBinding, ITypeBinding valueBinding) {
        String requestedTypeName = requestedBinding.getQualifiedName();
        if ("java.lang.Object".equals(requestedTypeName)) {
            switch (valueBinding.getBinaryName().charAt(0)) {
                case 'I': {
                    this.push(new SendStaticMessage("java.lang.Integer", "valueOf", "(I)Ljava/lang/Integer;", 1, this.fCounter));
                    break;
                }
                case 'C': {
                    this.push(new SendStaticMessage("java.lang.Character", "valueOf", "(C)Ljava/lang/Character;", 1, this.fCounter));
                    break;
                }
                case 'B': {
                    this.push(new SendStaticMessage("java.lang.Byte", "valueOf", "(B)Ljava/lang/Byte;", 1, this.fCounter));
                    break;
                }
                case 'S': {
                    this.push(new SendStaticMessage("java.lang.Short", "valueOf", "(S)Ljava/lang/Short;", 1, this.fCounter));
                    break;
                }
                case 'J': {
                    this.push(new SendStaticMessage("java.lang.Long", "valueOf", "(J)Ljava/lang/Long;", 1, this.fCounter));
                    break;
                }
                case 'F': {
                    this.push(new SendStaticMessage("java.lang.Float", "valueOf", "(F)Ljava/lang/Float;", 1, this.fCounter));
                    break;
                }
                case 'D': {
                    this.push(new SendStaticMessage("java.lang.Double", "valueOf", "(D)Ljava/lang/Double;", 1, this.fCounter));
                    break;
                }
                case 'Z': {
                    this.push(new SendStaticMessage("java.lang.Boolean", "valueOf", "(Z)Ljava/lang/Boolean;", 1, this.fCounter));
                }
            }
        } else if ("java.lang.Integer".equals(requestedTypeName)) {
            this.push(new SendStaticMessage(requestedTypeName, "valueOf", "(I)Ljava/lang/Integer;", 1, this.fCounter));
        } else if ("java.lang.Character".equals(requestedTypeName)) {
            this.push(new SendStaticMessage(requestedTypeName, "valueOf", "(C)Ljava/lang/Character;", 1, this.fCounter));
        } else if ("java.lang.Byte".equals(requestedTypeName)) {
            this.push(new SendStaticMessage(requestedTypeName, "valueOf", "(B)Ljava/lang/Byte;", 1, this.fCounter));
        } else if ("java.lang.Short".equals(requestedTypeName)) {
            this.push(new SendStaticMessage(requestedTypeName, "valueOf", "(S)Ljava/lang/Short;", 1, this.fCounter));
        } else if ("java.lang.Long".equals(requestedTypeName)) {
            this.push(new SendStaticMessage(requestedTypeName, "valueOf", "(J)Ljava/lang/Long;", 1, this.fCounter));
        } else if ("java.lang.Float".equals(requestedTypeName)) {
            this.push(new SendStaticMessage(requestedTypeName, "valueOf", "(F)Ljava/lang/Float;", 1, this.fCounter));
        } else if ("java.lang.Double".equals(requestedTypeName)) {
            this.push(new SendStaticMessage(requestedTypeName, "valueOf", "(D)Ljava/lang/Double;", 1, this.fCounter));
        } else if ("java.lang.Boolean".equals(requestedTypeName)) {
            this.push(new SendStaticMessage(requestedTypeName, "valueOf", "(Z)Ljava/lang/Boolean;", 1, this.fCounter));
        }
    }

    private boolean unBoxing(ITypeBinding valueBinding) {
        String valueTypeName = valueBinding.getQualifiedName();
        if ("java.lang.Integer".equals(valueTypeName)) {
            this.push(new SendMessage("intValue", "()I", 0, null, this.fCounter));
        } else if ("java.lang.Character".equals(valueTypeName)) {
            this.push(new SendMessage("charValue", "()C", 0, null, this.fCounter));
        } else if ("java.lang.Byte".equals(valueTypeName)) {
            this.push(new SendMessage("byteValue", "()B", 0, null, this.fCounter));
        } else if ("java.lang.Short".equals(valueTypeName)) {
            this.push(new SendMessage("shortValue", "()S", 0, null, this.fCounter));
        } else if ("java.lang.Long".equals(valueTypeName)) {
            this.push(new SendMessage("longValue", "()J", 0, null, this.fCounter));
        } else if ("java.lang.Float".equals(valueTypeName)) {
            this.push(new SendMessage("floatValue", "()F", 0, null, this.fCounter));
        } else if ("java.lang.Double".equals(valueTypeName)) {
            this.push(new SendMessage("doubleValue", "()D", 0, null, this.fCounter));
        } else if ("java.lang.Boolean".equals(valueTypeName)) {
            this.push(new SendMessage("booleanValue", "()Z", 0, null, this.fCounter));
        } else {
            return false;
        }
        return true;
    }

    public void endVisit(AnonymousClassDeclaration node) {
    }

    public void endVisit(ArrayAccess node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        ITypeBinding typeBinding = node.getIndex().resolveTypeBinding();
        if (typeBinding != null && this.unBoxing(typeBinding)) {
            this.storeInstruction();
        }
        this.storeInstruction();
    }

    public void endVisit(ArrayCreation node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(ArrayInitializer node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(ArrayType node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(AssertStatement node) {
    }

    public void endVisit(Assignment node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(Block node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(BooleanLiteral node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(BreakStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(CastExpression node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(CatchClause node) {
    }

    public void endVisit(CharacterLiteral node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(ClassInstanceCreation node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(CompilationUnit node) {
    }

    public void endVisit(ConditionalExpression node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        int ifFalseAddress = this.fInstructions.getEnd();
        Instruction ifFalse = this.fInstructions.get(ifFalseAddress);
        int ifTrueAddress = ifFalseAddress - ifFalse.getSize();
        Instruction ifTrue = this.fInstructions.get(ifTrueAddress);
        int conditionalAddress = ifTrueAddress - ifTrue.getSize();
        ConditionalJump conditionalJump = new ConditionalJump(false);
        this.fInstructions.insert(conditionalJump, conditionalAddress + 1);
        int jumpAddress = ifTrueAddress + 2;
        Jump jump = new Jump();
        this.fInstructions.insert(jump, jumpAddress);
        conditionalJump.setOffset(ifTrue.getSize() + 1);
        jump.setOffset(ifFalse.getSize() + 1);
        this.fCounter += 2;
        this.storeInstruction();
    }

    public void endVisit(ConstructorInvocation node) {
    }

    public void endVisit(ContinueStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(DoStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        String label = this.getLabel((Statement)node);
        int conditionAddress = this.fInstructions.getEnd();
        Instruction condition = this.fInstructions.getInstruction(conditionAddress);
        int bodyAddress = conditionAddress - condition.getSize();
        Instruction body = this.fInstructions.getInstruction(bodyAddress);
        int bodyStartAddress = bodyAddress - body.getSize();
        ConditionalJump conditionalJump = new ConditionalJump(true);
        this.fInstructions.add(conditionalJump);
        ++this.fCounter;
        conditionalJump.setOffset(-(condition.getSize() + body.getSize() + 1));
        Iterator iter = this.fCompleteInstructions.iterator();
        while (iter.hasNext()) {
            CompleteInstruction instruction = (CompleteInstruction)iter.next();
            Jump jumpInstruction = instruction.fInstruction;
            int instructionAddress = this.fInstructions.indexOf(jumpInstruction);
            if (instructionAddress <= bodyStartAddress || instruction.fLabel != null && !instruction.fLabel.equals(label)) continue;
            iter.remove();
            if (instruction.fIsBreak) {
                jumpInstruction.setOffset(conditionAddress - instructionAddress + 1);
                continue;
            }
            jumpInstruction.setOffset(bodyAddress - instructionAddress);
        }
        this.storeInstruction();
    }

    public void endVisit(EmptyStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(EnhancedForStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        int bodyAddress = this.fInstructions.getEnd();
        Instruction body = this.fInstructions.getInstruction(bodyAddress);
        int conditionAddress = bodyAddress - body.getSize();
        Instruction condition = this.fInstructions.getInstruction(conditionAddress);
        int initAddress = conditionAddress - condition.getSize();
        ConditionalJump condJump = new ConditionalJump(false);
        this.fInstructions.insert(condJump, conditionAddress + 1);
        ++bodyAddress;
        ++this.fCounter;
        condJump.setOffset(body.getSize() + 1);
        Jump jump = new Jump();
        this.fInstructions.add(jump);
        ++this.fCounter;
        jump.setOffset(initAddress - (bodyAddress + 1));
        String label = this.getLabel((Statement)node);
        Iterator iter = this.fCompleteInstructions.iterator();
        while (iter.hasNext()) {
            CompleteInstruction instruction = (CompleteInstruction)iter.next();
            Jump jumpInstruction = instruction.fInstruction;
            int instructionAddress = this.fInstructions.indexOf(jumpInstruction);
            if (instructionAddress <= conditionAddress || instruction.fLabel != null && !instruction.fLabel.equals(label)) continue;
            iter.remove();
            if (instruction.fIsBreak) {
                jumpInstruction.setOffset(bodyAddress - instructionAddress + 1);
                continue;
            }
            jumpInstruction.setOffset(initAddress - instructionAddress);
        }
        this.storeInstruction();
    }

    public void endVisit(ExpressionStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.addPopInstructionIfNeeded(node.getExpression());
    }

    public void endVisit(FieldAccess node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(FieldDeclaration node) {
    }

    public void endVisit(ForStatement node) {
        Instruction condition;
        int conditionAddress;
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        String label = this.getLabel((Statement)node);
        boolean hasCondition = node.getExpression() != null;
        int updatersAddress = this.fInstructions.getEnd();
        Instruction updaters = this.fInstructions.getInstruction(updatersAddress);
        int bodyAddress = updatersAddress - updaters.getSize();
        Instruction body = this.fInstructions.getInstruction(bodyAddress);
        int bodyStartAddress = bodyAddress - body.getSize();
        if (hasCondition) {
            conditionAddress = bodyStartAddress;
            condition = this.fInstructions.getInstruction(conditionAddress);
        } else {
            conditionAddress = 0;
            condition = null;
        }
        Jump jump = new Jump();
        this.fInstructions.add(jump);
        ++this.fCounter;
        if (hasCondition) {
            ConditionalJump condJump = new ConditionalJump(false);
            this.fInstructions.insert(condJump, conditionAddress + 1);
            ++bodyAddress;
            ++bodyStartAddress;
            ++updatersAddress;
            ++this.fCounter;
            condJump.setOffset(body.getSize() + updaters.getSize() + 1);
        }
        jump.setOffset(-((hasCondition && condition != null ? condition.getSize() : 0) + body.getSize() + updaters.getSize() + 2));
        Iterator iter = this.fCompleteInstructions.iterator();
        while (iter.hasNext()) {
            CompleteInstruction instruction = (CompleteInstruction)iter.next();
            Jump jumpInstruction = instruction.fInstruction;
            int instructionAddress = this.fInstructions.indexOf(jumpInstruction);
            if (instructionAddress <= bodyStartAddress || instruction.fLabel != null && !instruction.fLabel.equals(label)) continue;
            iter.remove();
            if (instruction.fIsBreak) {
                jumpInstruction.setOffset(updatersAddress - instructionAddress + 1);
                continue;
            }
            jumpInstruction.setOffset(bodyAddress - instructionAddress);
        }
        this.storeInstruction();
    }

    public void endVisit(IfStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        boolean hasElseStatement = node.getElseStatement() != null;
        int ifFalseAddress = 0;
        Instruction ifFalse = null;
        int ifTrueAddress = 0;
        Instruction ifTrue = null;
        if (hasElseStatement) {
            ifFalseAddress = this.fInstructions.getEnd();
            ifFalse = this.fInstructions.get(ifFalseAddress);
            ifTrueAddress = ifFalseAddress - ifFalse.getSize();
            ifTrue = this.fInstructions.get(ifTrueAddress);
        } else {
            ifTrueAddress = this.fInstructions.getEnd();
            ifTrue = this.fInstructions.get(ifTrueAddress);
        }
        int conditionalAddress = ifTrueAddress - ifTrue.getSize();
        ConditionalJump conditionalJump = new ConditionalJump(false);
        this.fInstructions.insert(conditionalJump, conditionalAddress + 1);
        conditionalJump.setOffset(ifTrue.getSize() + (hasElseStatement ? 1 : 0));
        ++this.fCounter;
        if (hasElseStatement) {
            int jumpAddress = ifTrueAddress + 2;
            Jump jump = new Jump();
            this.fInstructions.insert(jump, jumpAddress);
            jump.setOffset(ifFalse.getSize() + 1);
            ++this.fCounter;
        }
        this.storeInstruction();
    }

    public void endVisit(ImportDeclaration node) {
    }

    public void endVisit(InfixExpression node) {
    }

    public void endVisit(Initializer node) {
    }

    public void endVisit(InstanceofExpression node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(Javadoc node) {
    }

    public void endVisit(LabeledStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        String label = node.getLabel().getIdentifier();
        Iterator iter = this.fCompleteInstructions.iterator();
        while (iter.hasNext()) {
            CompleteInstruction instruction = (CompleteInstruction)iter.next();
            if (instruction.fLabel == null || !instruction.fLabel.equals(label)) continue;
            iter.remove();
            Jump jumpInstruction = instruction.fInstruction;
            int instructionAddress = this.fInstructions.indexOf(jumpInstruction);
            if (!instruction.fIsBreak) continue;
            jumpInstruction.setOffset(this.fInstructions.getEnd() - instructionAddress);
        }
    }

    public void endVisit(MethodDeclaration node) {
        this.setActive(false);
    }

    public void endVisit(MethodInvocation node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(NullLiteral node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(NumberLiteral node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(PackageDeclaration node) {
    }

    public void endVisit(ParameterizedType node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(ParenthesizedExpression node) {
    }

    public void endVisit(PostfixExpression node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(PrefixExpression node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(PrimitiveType node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(QualifiedName node) {
    }

    public void endVisit(QualifiedType node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(ReturnStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(SimpleName node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(SimpleType node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(SingleVariableDeclaration node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(StringLiteral node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(SuperConstructorInvocation node) {
    }

    public void endVisit(SuperFieldAccess node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(SuperMethodInvocation node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(SwitchCase node) {
    }

    public void endVisit(SwitchStatement node) {
    }

    public void endVisit(SynchronizedStatement node) {
    }

    public void endVisit(ThisExpression node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(ThrowStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(TryStatement node) {
    }

    public void endVisit(TypeDeclaration node) {
    }

    public void endVisit(TypeDeclarationStatement node) {
    }

    public void endVisit(TypeLiteral node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(VariableDeclarationExpression node) {
    }

    public void endVisit(VariableDeclarationFragment node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        this.storeInstruction();
    }

    public void endVisit(VariableDeclarationStatement node) {
    }

    public void endVisit(WhileStatement node) {
        if (!this.isActive() || this.hasErrors()) {
            return;
        }
        String label = this.getLabel((Statement)node);
        int bodyAddress = this.fInstructions.getEnd();
        Instruction body = this.fInstructions.getInstruction(bodyAddress);
        int conditionAddress = bodyAddress - body.getSize();
        Instruction condition = this.fInstructions.getInstruction(conditionAddress);
        ConditionalJump conditionalJump = new ConditionalJump(false);
        this.fInstructions.insert(conditionalJump, conditionAddress + 1);
        Jump jump = new Jump();
        this.fInstructions.add(jump);
        conditionalJump.setOffset(body.getSize() + 1);
        jump.setOffset(-(condition.getSize() + body.getSize() + 2));
        Iterator iter = this.fCompleteInstructions.iterator();
        while (iter.hasNext()) {
            CompleteInstruction instruction = (CompleteInstruction)iter.next();
            Jump jumpInstruction = instruction.fInstruction;
            int instructionAddress = this.fInstructions.indexOf(jumpInstruction);
            if (instructionAddress <= conditionAddress || instruction.fLabel != null && !instruction.fLabel.equals(label)) continue;
            iter.remove();
            if (instruction.fIsBreak) {
                jumpInstruction.setOffset(bodyAddress - instructionAddress + 2);
                continue;
            }
            jumpInstruction.setOffset(conditionAddress - condition.getSize() - instructionAddress);
        }
        this.fCounter += 2;
        this.storeInstruction();
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        return false;
    }

    public boolean visit(AnnotationTypeMemberDeclaration node) {
        return false;
    }

    public boolean visit(AnonymousClassDeclaration node) {
        if (!this.isActive()) {
            return true;
        }
        this.setHasError(true);
        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Anonymous_type_declaration_cannot_be_used_in_an_evaluation_expression_2);
        return false;
    }

    public boolean visit(ArrayAccess node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new org.eclipse.jdt.internal.debug.eval.ast.instructions.ArrayAccess(this.fCounter));
        return true;
    }

    public boolean visit(ArrayCreation node) {
        if (!this.isActive()) {
            return false;
        }
        ArrayType arrayType = node.getType();
        ITypeBinding binding = this.resolveTypeBinding((Type)arrayType);
        if (binding != null && this.isALocalType(binding.getElementType())) {
            this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Local_type_array_instance_creation_cannot_be_used_in_an_evaluation_expression_29);
            this.setHasError(true);
            return false;
        }
        this.push(new ArrayAllocation(arrayType.getDimensions(), node.dimensions().size(), node.getInitializer() != null, this.fCounter));
        return true;
    }

    public boolean visit(ArrayInitializer node) {
        if (!this.isActive()) {
            return false;
        }
        ITypeBinding typeBinding = this.resolveTypeBinding((Expression)node);
        if (typeBinding != null) {
            int dimension = typeBinding.getDimensions();
            String signature = this.getTypeSignature(typeBinding.getElementType());
            this.push(new ArrayInitializerInstruction(signature, node.expressions().size(), dimension, this.fCounter));
        }
        return true;
    }

    public boolean visit(ArrayType node) {
        if (!this.isActive()) {
            return false;
        }
        ITypeBinding arrayTypeBinding = this.resolveTypeBinding((Type)node);
        if (arrayTypeBinding != null) {
            int dimension = arrayTypeBinding.getDimensions();
            String signature = this.getTypeSignature(arrayTypeBinding.getElementType());
            this.push(new PushArrayType(signature, dimension, this.fCounter));
        }
        return false;
    }

    public boolean visit(AssertStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.setHasError(true);
        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Assert_statement_cannot_be_used_in_an_evaluation_expression_3);
        return false;
    }

    public boolean visit(Assignment node) {
        ITypeBinding rightBinding;
        if (!this.isActive()) {
            return false;
        }
        Expression leftHandSide = node.getLeftHandSide();
        Expression rightHandSide = node.getRightHandSide();
        int variableTypeId = this.getTypeId(leftHandSide);
        int valueTypeId = this.getTypeId(rightHandSide);
        String opToken = node.getOperator().toString();
        int opTokenLength = opToken.length();
        char char0 = opToken.charAt(0);
        char char2 = '\u0000';
        if (opTokenLength > 2) {
            char2 = opToken.charAt(2);
        }
        if ((rightBinding = this.resolveTypeBinding(rightHandSide)) == null) {
            return false;
        }
        ITypeBinding leftBinding = this.resolveTypeBinding(leftHandSide);
        if (leftBinding == null) {
            return false;
        }
        if (variableTypeId == 1) {
            int unboxedVariableTypeId = this.getUnBoxedTypeId(leftHandSide);
            int unboxedValueTypeId = this.getUnBoxedTypeId(rightHandSide);
            int unboxedResultTypeId = Instruction.getBinaryPromotionType(unboxedVariableTypeId, unboxedValueTypeId);
            this.push(new AssignmentOperator(variableTypeId, variableTypeId, this.fCounter));
            leftHandSide.accept((ASTVisitor)this);
            if (char0 == '=') {
                boolean storeRequired = false;
                if (rightBinding.isPrimitive()) {
                    this.boxing(leftBinding, rightBinding);
                    storeRequired = true;
                }
                rightHandSide.accept((ASTVisitor)this);
                if (storeRequired) {
                    this.storeInstruction();
                }
            } else {
                boolean unrecognized = false;
                this.boxing(leftBinding, rightBinding);
                block0 : switch (char0) {
                    case '=': {
                        break;
                    }
                    case '+': {
                        this.push(new PlusOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                        break;
                    }
                    case '-': {
                        this.push(new MinusOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                        break;
                    }
                    case '*': {
                        this.push(new MultiplyOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                        break;
                    }
                    case '/': {
                        this.push(new DivideOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                        break;
                    }
                    case '%': {
                        this.push(new RemainderOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                        break;
                    }
                    case '^': {
                        this.push(new XorOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                        break;
                    }
                    case '|': {
                        this.push(new OrOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                        break;
                    }
                    case '&': {
                        this.push(new AndOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                        break;
                    }
                    case '<': {
                        this.push(new LeftShiftOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                        break;
                    }
                    case '>': {
                        switch (char2) {
                            case '=': {
                                this.push(new RightShiftOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                                break block0;
                            }
                            case '>': {
                                this.push(new UnsignedRightShiftOperator(unboxedVariableTypeId, unboxedValueTypeId, unboxedResultTypeId, this.fCounter));
                                break block0;
                            }
                        }
                        unrecognized = true;
                        break;
                    }
                    default: {
                        unrecognized = true;
                    }
                }
                if (unrecognized) {
                    this.setHasError(true);
                    this.addErrorMessage(String.valueOf(EvaluationEngineMessages.ASTInstructionCompiler_Unrecognized_assignment_operator____4) + opToken);
                    return false;
                }
                this.unBoxing(leftBinding);
                this.push(new Dup());
                this.storeInstruction();
                this.storeInstruction();
                boolean storeRequired = this.unBoxing(rightBinding);
                rightHandSide.accept((ASTVisitor)this);
                if (storeRequired) {
                    this.storeInstruction();
                }
                this.storeInstruction();
                this.storeInstruction();
            }
        } else {
            boolean unrecognized = false;
            block17 : switch (char0) {
                case '=': {
                    this.push(new AssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '+': {
                    this.push(new PlusAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '-': {
                    this.push(new MinusAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '*': {
                    this.push(new MultiplyAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '/': {
                    this.push(new DivideAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '%': {
                    this.push(new RemainderAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '^': {
                    this.push(new XorAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '|': {
                    this.push(new OrAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '&': {
                    this.push(new AndAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '<': {
                    this.push(new LeftShiftAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                    break;
                }
                case '>': {
                    switch (char2) {
                        case '=': {
                            this.push(new RightShiftAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                            break block17;
                        }
                        case '>': {
                            this.push(new UnsignedRightShiftAssignmentOperator(variableTypeId, valueTypeId, this.fCounter));
                            break block17;
                        }
                    }
                    unrecognized = true;
                    break;
                }
                default: {
                    unrecognized = true;
                }
            }
            if (unrecognized) {
                this.setHasError(true);
                this.addErrorMessage(String.valueOf(EvaluationEngineMessages.ASTInstructionCompiler_Unrecognized_assignment_operator____4) + opToken);
                return false;
            }
            leftHandSide.accept((ASTVisitor)this);
            boolean storeRequired = this.unBoxing(rightBinding);
            rightHandSide.accept((ASTVisitor)this);
            if (storeRequired) {
                this.storeInstruction();
            }
        }
        return false;
    }

    public boolean visit(Block node) {
        int start = node.getStartPosition();
        if (start == this.fStartPosition || start == this.fStartPosition + 1) {
            this.setActive(true);
        }
        if (!this.isActive()) {
            return true;
        }
        this.push(new NoOp(this.fCounter));
        return true;
    }

    public boolean visit(BlockComment node) {
        return false;
    }

    public boolean visit(BooleanLiteral node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new PushBoolean(node.booleanValue()));
        return true;
    }

    public boolean visit(BreakStatement node) {
        if (!this.isActive()) {
            return false;
        }
        Jump instruction = new Jump();
        SimpleName labelName = node.getLabel();
        String label = null;
        if (labelName != null) {
            label = labelName.getIdentifier();
        }
        this.push(instruction);
        this.fCompleteInstructions.add(new CompleteInstruction(instruction, label, true));
        return false;
    }

    public boolean visit(CastExpression node) {
        if (!this.isActive()) {
            return false;
        }
        Type type = node.getType();
        int typeId = this.getTypeId(type);
        ITypeBinding typeBinding = this.resolveTypeBinding(type);
        if (typeBinding != null) {
            int dimension = typeBinding.getDimensions();
            if (typeBinding.isArray()) {
                typeBinding = typeBinding.getElementType();
            }
            String baseTypeSignature = this.getTypeName(typeBinding);
            this.push(new Cast(typeId, baseTypeSignature, dimension, this.fCounter));
            node.getExpression().accept((ASTVisitor)this);
        }
        return false;
    }

    public boolean visit(CatchClause node) {
        if (!this.isActive()) {
            return false;
        }
        this.setHasError(true);
        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Catch_clause_cannot_be_used_in_an_evaluation_expression_6);
        return false;
    }

    public boolean visit(CharacterLiteral node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new PushChar(node.charValue()));
        return true;
    }

    public boolean visit(ClassInstanceCreation node) {
        boolean isInstanceMemberType;
        IMethodBinding methodBinding;
        if (!this.isActive()) {
            return true;
        }
        if (node.getAnonymousClassDeclaration() != null) {
            this.setHasError(true);
            this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Anonymous_type_declaration_cannot_be_used_in_an_evaluation_expression_7);
        }
        if ((methodBinding = node.resolveConstructorBinding()) == null) {
            this.setHasError(true);
            this.addErrorMessage(MessageFormat.format((String)EvaluationEngineMessages.ASTInstructionCompiler_1, (Object[])new String[]{node.toString()}));
            return false;
        }
        ITypeBinding typeBinding = methodBinding.getDeclaringClass();
        boolean bl = isInstanceMemberType = typeBinding.isMember() && !Modifier.isStatic((int)typeBinding.getModifiers());
        if (this.isALocalType(typeBinding)) {
            this.setHasError(true);
            this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Constructor_of_a_local_type_cannot_be_used_in_an_evaluation_expression_8);
        }
        if (this.containsALocalType(methodBinding)) {
            this.setHasError(true);
            this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Constructor_which_contains_a_local_type_as_parameter_cannot_be_used_in_an_evaluation_expression_30);
        }
        if (this.hasErrors()) {
            return false;
        }
        int paramCount = methodBinding.getParameterTypes().length;
        String enclosingTypeSignature = null;
        ITypeBinding enclosingTypeBinding = null;
        if (isInstanceMemberType) {
            enclosingTypeBinding = typeBinding.getDeclaringClass();
            if (enclosingTypeBinding == null) {
                this.setHasError(true);
                this.addErrorMessage(MessageFormat.format((String)EvaluationEngineMessages.ASTInstructionCompiler_2, (Object[])new String[]{typeBinding.getQualifiedName()}));
                return false;
            }
            enclosingTypeSignature = this.getTypeSignature(enclosingTypeBinding);
            ++paramCount;
        }
        String signature = this.getMethodSignature(methodBinding, enclosingTypeSignature).replace('.', '/');
        this.push(new Constructor(signature, paramCount, this.fCounter));
        this.push(new PushType(this.getTypeName(typeBinding)));
        this.storeInstruction();
        if (isInstanceMemberType) {
            Expression optionalExpression = node.getExpression();
            if (optionalExpression != null) {
                optionalExpression.accept((ASTVisitor)this);
            } else {
                ClassInstanceCreation parent = node;
                while (!((parent = parent.getParent()) instanceof MethodDeclaration)) {
                }
                if (Modifier.isStatic((int)((MethodDeclaration)parent).getModifiers())) {
                    this.setHasError(true);
                    this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Must_explicitly_qualify_the_allocation_with_an_instance_of_the_enclosing_type_33);
                    return false;
                }
                this.push(new PushThis(this.getEnclosingLevel((ASTNode)node, enclosingTypeBinding)));
                this.storeInstruction();
            }
        }
        List arguments = node.arguments();
        this.pushMethodArguments(methodBinding, arguments);
        return false;
    }

    public boolean visit(CompilationUnit node) {
        return true;
    }

    public boolean visit(ConditionalExpression node) {
        if (!this.isActive()) {
            return true;
        }
        this.push(new NoOp(this.fCounter));
        return true;
    }

    public boolean visit(ConstructorInvocation node) {
        if (!this.isActive()) {
            return false;
        }
        this.setHasError(true);
        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_this_constructor_invocation_cannot_be_used_in_an_evaluation_expression_9);
        return false;
    }

    public boolean visit(ContinueStatement node) {
        if (!this.isActive()) {
            return false;
        }
        Jump instruction = new Jump();
        SimpleName labelName = node.getLabel();
        String label = null;
        if (labelName != null) {
            label = labelName.getIdentifier();
        }
        this.push(instruction);
        this.fCompleteInstructions.add(new CompleteInstruction(instruction, label, false));
        return false;
    }

    public boolean visit(DoStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new NoOp(this.fCounter));
        return true;
    }

    public boolean visit(EmptyStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new NoOp(this.fCounter));
        return true;
    }

    public boolean visit(EnhancedForStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new NoOp(this.fCounter));
        ITypeBinding typeBinding = this.resolveTypeBinding(node.getExpression());
        if (typeBinding == null) {
            return false;
        }
        Type paramType = node.getParameter().getType();
        ITypeBinding paramBinding = this.resolveTypeBinding(paramType);
        if (paramBinding == null) {
            return false;
        }
        String typeSignature = this.getTypeSignature(paramBinding);
        int paramTypeId = this.getTypeId(paramType);
        boolean isParamPrimitiveType = paramTypeId != 1 && paramTypeId != 11;
        String paramIdentifier = node.getParameter().getName().getIdentifier();
        if (typeBinding.isArray()) {
            int idIndex = this.fUniqueIdIndex++;
            String arrayIdentifier = "#a" + idIndex;
            String varIdentifier = "#i" + idIndex;
            this.push(new LocalVariableCreation(arrayIdentifier, typeSignature, 1, isParamPrimitiveType, true, this.fCounter));
            node.getExpression().accept((ASTVisitor)this);
            this.storeInstruction();
            this.push(new LocalVariableCreation(varIdentifier, "I", 0, true, true, this.fCounter));
            this.push(new PushInt(0));
            this.storeInstruction();
            this.storeInstruction();
            this.push(new LocalVariableCreation(paramIdentifier, typeSignature, 0, isParamPrimitiveType, false, this.fCounter));
            this.storeInstruction();
            this.push(new LessOperator(10, 10, this.fCounter));
            this.push(new PushLocalVariable(varIdentifier));
            this.storeInstruction();
            this.push(new PushArrayLength(this.fCounter));
            this.push(new PushLocalVariable(arrayIdentifier));
            this.storeInstruction();
            this.storeInstruction();
            this.storeInstruction();
            this.push(new NoOp(this.fCounter));
            this.push(new AssignmentOperator(paramTypeId, paramTypeId, this.fCounter));
            this.push(new PushLocalVariable(paramIdentifier));
            this.storeInstruction();
            this.push(new org.eclipse.jdt.internal.debug.eval.ast.instructions.ArrayAccess(this.fCounter));
            this.push(new PushLocalVariable(arrayIdentifier));
            this.storeInstruction();
            this.push(new PostfixPlusPlusOperator(10, this.fCounter));
            this.push(new PushLocalVariable(varIdentifier));
            this.storeInstruction();
            this.storeInstruction();
            this.storeInstruction();
            if (this.checkAutoBoxing(typeBinding.getElementType(), paramBinding)) {
                this.storeInstruction();
            }
            this.storeInstruction();
            this.addPopInstruction();
            node.getBody().accept((ASTVisitor)this);
            this.storeInstruction();
        } else {
            String iteratorIdentifier = "#i" + this.fUniqueIdIndex++;
            this.push(new LocalVariableCreation(iteratorIdentifier, "Ljava/util/Iterator;", 0, false, true, this.fCounter));
            this.push(new SendMessage("iterator", "()Ljava/util/Iterator;", 0, null, this.fCounter));
            node.getExpression().accept((ASTVisitor)this);
            this.storeInstruction();
            this.storeInstruction();
            this.push(new LocalVariableCreation(paramIdentifier, typeSignature, 0, isParamPrimitiveType, false, this.fCounter));
            this.storeInstruction();
            this.push(new SendMessage("hasNext", "()Z", 0, null, this.fCounter));
            this.push(new PushLocalVariable(iteratorIdentifier));
            this.storeInstruction();
            this.storeInstruction();
            this.push(new NoOp(this.fCounter));
            this.push(new AssignmentOperator(paramTypeId, paramTypeId, this.fCounter));
            this.push(new PushLocalVariable(paramIdentifier));
            this.storeInstruction();
            this.push(new SendMessage("next", "()Ljava/lang/Object;", 0, null, this.fCounter));
            this.push(new PushLocalVariable(iteratorIdentifier));
            this.storeInstruction();
            this.storeInstruction();
            if (this.checkAutoBoxing(typeBinding.getTypeArguments()[0], paramBinding)) {
                this.storeInstruction();
            }
            this.storeInstruction();
            this.addPopInstruction();
            node.getBody().accept((ASTVisitor)this);
            this.storeInstruction();
        }
        return false;
    }

    public boolean visit(EnumConstantDeclaration node) {
        return !this.isActive();
    }

    public boolean visit(EnumDeclaration node) {
        if (!this.isActive()) {
            return true;
        }
        this.setHasError(true);
        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_0);
        return false;
    }

    public boolean visit(ExpressionStatement node) {
        return true;
    }

    public boolean visit(FieldAccess node) {
        if (!this.isActive()) {
            return false;
        }
        SimpleName fieldName = node.getName();
        IVariableBinding fieldBinding = (IVariableBinding)fieldName.resolveBinding();
        if (fieldBinding != null) {
            ITypeBinding declaringTypeBinding = fieldBinding.getDeclaringClass();
            Expression expression = node.getExpression();
            String fieldId = fieldName.getIdentifier();
            if (Modifier.isStatic((int)fieldBinding.getModifiers())) {
                this.push(new PushStaticFieldVariable(fieldId, this.getTypeName(declaringTypeBinding), this.fCounter));
                expression.accept((ASTVisitor)this);
                this.addPopInstruction();
            } else {
                if (declaringTypeBinding == null) {
                    this.push(new PushArrayLength(this.fCounter));
                } else {
                    if (this.isALocalType(declaringTypeBinding)) {
                        this.setHasError(true);
                        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Qualified_local_type_field_access_cannot_be_used_in_an_evaluation_expression_31);
                        return false;
                    }
                    this.push(new PushFieldVariable(fieldId, this.getTypeSignature(declaringTypeBinding), this.fCounter));
                }
                expression.accept((ASTVisitor)this);
            }
        }
        return false;
    }

    public boolean visit(FieldDeclaration node) {
        return true;
    }

    public boolean visit(ForStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new NoOp(this.fCounter));
        this.push(new NoOp(this.fCounter));
        Iterator iter = node.initializers().iterator();
        while (iter.hasNext()) {
            Expression expr = (Expression)iter.next();
            expr.accept((ASTVisitor)this);
            this.addPopInstructionIfNeeded(expr);
        }
        this.storeInstruction();
        Expression condition = node.getExpression();
        if (condition != null) {
            condition.accept((ASTVisitor)this);
        }
        node.getBody().accept((ASTVisitor)this);
        this.push(new NoOp(this.fCounter));
        Iterator iter2 = node.updaters().iterator();
        while (iter2.hasNext()) {
            Expression expr = (Expression)iter2.next();
            expr.accept((ASTVisitor)this);
            this.addPopInstructionIfNeeded(expr);
        }
        this.storeInstruction();
        return false;
    }

    public boolean visit(IfStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new NoOp(this.fCounter));
        return true;
    }

    public boolean visit(ImportDeclaration node) {
        return false;
    }

    public boolean visit(InfixExpression node) {
        int resultTypeId;
        int rightTypeId;
        int leftTypeId;
        if (!this.isActive()) {
            return false;
        }
        String opToken = node.getOperator().toString();
        int opTokenLength = opToken.length();
        char char0 = opToken.charAt(0);
        char char1 = '\u0000';
        char char2 = '\u0000';
        if (opTokenLength > 1) {
            char1 = opToken.charAt(1);
            if (opTokenLength > 2) {
                char2 = opToken.charAt(2);
            }
        }
        List extendedOperands = node.extendedOperands();
        int operatorNumber = extendedOperands.size() + 1;
        int[][] types = new int[operatorNumber][3];
        Iterator iterator = extendedOperands.iterator();
        Expression leftOperand = node.getLeftOperand();
        Expression rightOperand = node.getRightOperand();
        boolean unbox = false;
        ITypeBinding leftBinding = this.resolveTypeBinding(leftOperand);
        if (leftBinding == null) {
            return false;
        }
        ITypeBinding rightBinding = this.resolveTypeBinding(rightOperand);
        if (rightBinding == null) {
            return false;
        }
        unbox = (char0 == '=' || char0 == '!') && char1 == '=' ? leftBinding.isPrimitive() || rightBinding.isPrimitive() : true;
        if (unbox) {
            leftTypeId = this.getUnBoxedTypeId(leftOperand);
            rightTypeId = this.getUnBoxedTypeId(rightOperand);
        } else {
            leftTypeId = this.getTypeId(leftOperand);
            rightTypeId = this.getTypeId(rightOperand);
        }
        types[0][0] = resultTypeId = Instruction.getBinaryPromotionType(leftTypeId, rightTypeId);
        types[0][1] = leftTypeId;
        types[0][2] = rightTypeId;
        int i = 1;
        while (i < operatorNumber) {
            Expression operand = (Expression)iterator.next();
            leftTypeId = resultTypeId;
            rightTypeId = this.getUnBoxedTypeId(operand);
            types[i][0] = resultTypeId = Instruction.getBinaryPromotionType(leftTypeId, rightTypeId);
            types[i][1] = leftTypeId;
            types[i][2] = rightTypeId;
            ++i;
        }
        boolean unrecognized = false;
        block0 : switch (char0) {
            case '*': {
                int i2 = operatorNumber - 1;
                while (i2 >= 0) {
                    this.push(new MultiplyOperator(types[i2][0], types[i2][1], types[i2][2], this.fCounter));
                    --i2;
                }
                break;
            }
            case '/': {
                int i3 = operatorNumber - 1;
                while (i3 >= 0) {
                    this.push(new DivideOperator(types[i3][0], types[i3][1], types[i3][2], this.fCounter));
                    --i3;
                }
                break;
            }
            case '%': {
                int i4 = operatorNumber - 1;
                while (i4 >= 0) {
                    this.push(new RemainderOperator(types[i4][0], types[i4][1], types[i4][2], this.fCounter));
                    --i4;
                }
                break;
            }
            case '+': {
                int i5 = operatorNumber - 1;
                while (i5 >= 0) {
                    this.push(new PlusOperator(types[i5][0], types[i5][1], types[i5][2], this.fCounter));
                    --i5;
                }
                break;
            }
            case '-': {
                int i6 = operatorNumber - 1;
                while (i6 >= 0) {
                    this.push(new MinusOperator(types[i6][0], types[i6][1], types[i6][2], this.fCounter));
                    --i6;
                }
                break;
            }
            case '<': {
                switch (char1) {
                    case '\u0000': {
                        int i7 = operatorNumber - 1;
                        while (i7 >= 0) {
                            this.push(new LessOperator(types[i7][1], types[i7][2], this.fCounter));
                            --i7;
                        }
                        break block0;
                    }
                    case '<': {
                        int i8 = operatorNumber - 1;
                        while (i8 >= 0) {
                            this.push(new LeftShiftOperator(Instruction.getUnaryPromotionType(types[i8][1]), types[i8][1], types[i8][2], this.fCounter));
                            --i8;
                        }
                        break block0;
                    }
                    case '=': {
                        int i9 = operatorNumber - 1;
                        while (i9 >= 0) {
                            this.push(new LessEqualOperator(types[i9][1], types[i9][2], this.fCounter));
                            --i9;
                        }
                        break block0;
                    }
                    default: {
                        unrecognized = true;
                        break;
                    }
                }
                break;
            }
            case '>': {
                switch (char1) {
                    case '\u0000': {
                        int i10 = operatorNumber - 1;
                        while (i10 >= 0) {
                            this.push(new GreaterOperator(types[i10][1], types[i10][2], this.fCounter));
                            --i10;
                        }
                        break block0;
                    }
                    case '>': {
                        switch (char2) {
                            case '\u0000': {
                                int i11 = operatorNumber - 1;
                                while (i11 >= 0) {
                                    this.push(new RightShiftOperator(Instruction.getUnaryPromotionType(types[i11][1]), types[i11][1], types[i11][2], this.fCounter));
                                    --i11;
                                }
                                break block0;
                            }
                            case '>': {
                                int i12 = operatorNumber - 1;
                                while (i12 >= 0) {
                                    this.push(new UnsignedRightShiftOperator(Instruction.getUnaryPromotionType(types[i12][1]), types[i12][1], types[i12][2], this.fCounter));
                                    --i12;
                                }
                                break block24;
                            }
                        }
                        break block0;
                    }
                    case '=': {
                        int i13 = operatorNumber - 1;
                        while (i13 >= 0) {
                            this.push(new GreaterEqualOperator(types[i13][1], types[i13][2], this.fCounter));
                            --i13;
                        }
                        break block0;
                    }
                    default: {
                        unrecognized = true;
                        break;
                    }
                }
                break;
            }
            case '=': {
                int i14 = operatorNumber - 1;
                while (i14 >= 0) {
                    this.push(new EqualEqualOperator(types[i14][1], types[i14][2], true, this.fCounter));
                    --i14;
                }
                break;
            }
            case '!': {
                int i15 = operatorNumber - 1;
                while (i15 >= 0) {
                    this.push(new EqualEqualOperator(types[i15][1], types[i15][2], false, this.fCounter));
                    --i15;
                }
                break;
            }
            case '^': {
                int i16 = operatorNumber - 1;
                while (i16 >= 0) {
                    this.push(new XorOperator(types[i16][0], types[i16][1], types[i16][2], this.fCounter));
                    --i16;
                }
                break;
            }
            case '|': {
                switch (char1) {
                    case '\u0000': {
                        int i17 = operatorNumber - 1;
                        while (i17 >= 0) {
                            this.push(new OrOperator(types[i17][0], types[i17][1], types[i17][2], this.fCounter));
                            --i17;
                        }
                        break block0;
                    }
                    case '|': {
                        int i18 = operatorNumber - 1;
                        while (i18 >= 0) {
                            this.push(new NoOp(this.fCounter));
                            --i18;
                        }
                        break block0;
                    }
                    default: {
                        unrecognized = true;
                        break;
                    }
                }
                break;
            }
            case '&': {
                switch (char1) {
                    case '\u0000': {
                        int i19 = operatorNumber - 1;
                        while (i19 >= 0) {
                            this.push(new AndOperator(types[i19][0], types[i19][1], types[i19][2], this.fCounter));
                            --i19;
                        }
                        break block0;
                    }
                    case '&': {
                        int i20 = operatorNumber - 1;
                        while (i20 >= 0) {
                            this.push(new NoOp(this.fCounter));
                            --i20;
                        }
                        break block0;
                    }
                    default: {
                        unrecognized = true;
                        break;
                    }
                }
                break;
            }
            default: {
                unrecognized = true;
            }
        }
        if (unrecognized) {
            this.setHasError(true);
            this.addErrorMessage(String.valueOf(EvaluationEngineMessages.ASTInstructionCompiler_Unrecognized_infix_operator____13) + opToken);
        }
        if (this.hasErrors()) {
            return false;
        }
        iterator = extendedOperands.iterator();
        if (char0 == '&' && char1 == '&' || char0 == '|' && char1 == '|') {
            ConditionalJump conditionalJump;
            boolean isOrOr = char0 == '|';
            ConditionalJump[] conditionalJumps = new ConditionalJump[operatorNumber];
            int[] conditionalJumpAddresses = new int[operatorNumber];
            boolean storeRequired = this.unBoxing(leftBinding);
            leftOperand.accept((ASTVisitor)this);
            if (storeRequired) {
                this.storeInstruction();
            }
            conditionalJumps[0] = conditionalJump = new ConditionalJump(isOrOr);
            conditionalJumpAddresses[0] = this.fCounter;
            this.push(conditionalJump);
            this.storeInstruction();
            storeRequired = this.unBoxing(rightBinding);
            rightOperand.accept((ASTVisitor)this);
            if (storeRequired) {
                this.storeInstruction();
            }
            int i21 = 1;
            while (i21 < operatorNumber) {
                conditionalJumps[i21] = conditionalJump = new ConditionalJump(isOrOr);
                conditionalJumpAddresses[i21] = this.fCounter;
                this.push(conditionalJump);
                this.storeInstruction();
                Expression operand = (Expression)iterator.next();
                ITypeBinding typeBinding = this.resolveTypeBinding(operand);
                if (typeBinding == null) {
                    return false;
                }
                storeRequired = this.unBoxing(typeBinding);
                operand.accept((ASTVisitor)this);
                if (storeRequired) {
                    this.storeInstruction();
                }
                ++i21;
            }
            Jump jump = new Jump();
            jump.setOffset(1);
            this.push(jump);
            this.storeInstruction();
            int i22 = 0;
            while (i22 < operatorNumber) {
                conditionalJumps[i22].setOffset(this.fCounter - conditionalJumpAddresses[i22] - 1);
                ++i22;
            }
            this.push(new PushBoolean(isOrOr));
            this.storeInstruction();
            this.storeInstruction();
        } else {
            boolean storeRequired = false;
            if (unbox) {
                storeRequired = this.unBoxing(leftBinding);
            }
            leftOperand.accept((ASTVisitor)this);
            if (storeRequired) {
                this.storeInstruction();
            }
            if (unbox) {
                storeRequired = this.unBoxing(rightBinding);
            }
            rightOperand.accept((ASTVisitor)this);
            if (storeRequired) {
                this.storeInstruction();
            }
            this.storeInstruction();
            int i23 = 1;
            while (i23 < operatorNumber) {
                Expression operand = (Expression)iterator.next();
                if (unbox) {
                    ITypeBinding typeBinding = this.resolveTypeBinding(operand);
                    if (typeBinding == null) {
                        return false;
                    }
                    storeRequired = this.unBoxing(typeBinding);
                }
                operand.accept((ASTVisitor)this);
                if (storeRequired) {
                    this.storeInstruction();
                }
                this.storeInstruction();
                ++i23;
            }
        }
        return false;
    }

    public boolean visit(Initializer node) {
        return true;
    }

    public boolean visit(InstanceofExpression node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new InstanceOfOperator(this.fCounter));
        return true;
    }

    public boolean visit(Javadoc node) {
        return false;
    }

    public boolean visit(LabeledStatement node) {
        node.getBody().accept((ASTVisitor)this);
        return false;
    }

    public boolean visit(LineComment node) {
        return false;
    }

    public boolean visit(MarkerAnnotation node) {
        return false;
    }

    public boolean visit(MemberRef node) {
        return false;
    }

    public boolean visit(MemberValuePair node) {
        return false;
    }

    public boolean visit(MethodDeclaration node) {
        int start = node.getStartPosition();
        int end = start + node.getLength();
        return start < this.fStartPosition && end > this.fStartPosition;
    }

    public boolean visit(MethodInvocation node) {
        ASTNode root;
        if (!this.isActive()) {
            return false;
        }
        IMethodBinding methodBinding = (IMethodBinding)node.getName().resolveBinding();
        if (methodBinding == null && (root = node.getRoot()) instanceof CompilationUnit) {
            CompilationUnit cu = (CompilationUnit)root;
            IProblem[] problems = cu.getProblems();
            int i = 0;
            while (i < problems.length) {
                IProblem problem = problems[i];
                this.setHasError(true);
                this.addErrorMessage(problem.getMessage());
                ++i;
            }
        }
        if (this.hasErrors()) {
            return false;
        }
        if (this.containsALocalType(methodBinding)) {
            this.setHasError(true);
            this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Method_which_contains_a_local_type_as_parameter_cannot_be_used_in_an_evaluation_expression_32);
            return false;
        }
        int paramCount = methodBinding.getParameterTypes().length;
        String selector = methodBinding.getName();
        String signature = this.getMethodSignature(methodBinding, null).replace('.', '/');
        boolean isStatic = Flags.isStatic((int)methodBinding.getModifiers());
        Expression expression = node.getExpression();
        if (isStatic) {
            String typeName = this.getTypeName(methodBinding.getDeclaringClass());
            this.push(new SendStaticMessage(typeName, selector, signature, paramCount, this.fCounter));
            if (expression != null) {
                node.getExpression().accept((ASTVisitor)this);
                this.addPopInstruction();
            }
        } else {
            this.push(new SendMessage(selector, signature, paramCount, null, this.fCounter));
            if (expression == null) {
                this.push(new PushThis(this.getEnclosingLevel((ASTNode)node, methodBinding.getDeclaringClass())));
                this.storeInstruction();
            } else {
                node.getExpression().accept((ASTVisitor)this);
            }
        }
        List arguments = node.arguments();
        this.pushMethodArguments(methodBinding, arguments);
        return false;
    }

    private void pushMethodArguments(IMethodBinding methodBinding, List arguments) {
        Iterator iterator;
        Expression lastArg;
        int argCount = arguments.size();
        ITypeBinding[] parameterTypes = methodBinding.getParameterTypes();
        int paramCount = parameterTypes.length;
        ITypeBinding lastArgBinding = null;
        if (methodBinding.isVarargs() && (lastArgBinding = this.resolveTypeBinding(lastArg = (Expression)arguments.get(argCount - 1))) == null) {
            return;
        }
        if (methodBinding.isVarargs() && (paramCount != argCount || parameterTypes[paramCount - 1].getDimensions() != lastArgBinding.getDimensions())) {
            iterator = arguments.iterator();
            int i = 0;
            while (i < paramCount - 1) {
                Expression argument = (Expression)iterator.next();
                boolean storeRequired = this.checkAutoBoxing(argument.resolveTypeBinding(), parameterTypes[i]);
                argument.accept((ASTVisitor)this);
                if (storeRequired) {
                    this.storeInstruction();
                }
                ++i;
            }
            ITypeBinding varargsParameterType = parameterTypes[paramCount - 1];
            ITypeBinding varargsElementType = varargsParameterType.getElementType();
            this.push(new ArrayInitializerInstruction(this.getTypeSignature(varargsElementType), argCount - paramCount + 1, varargsParameterType.getDimensions(), this.fCounter));
            while (iterator.hasNext()) {
                Expression argument = (Expression)iterator.next();
                boolean storeRequired = this.checkAutoBoxing(argument.resolveTypeBinding(), varargsElementType);
                argument.accept((ASTVisitor)this);
                if (!storeRequired) continue;
                this.storeInstruction();
            }
            this.storeInstruction();
        } else {
            iterator = arguments.iterator();
            int i = 0;
            while (iterator.hasNext()) {
                Expression argument = (Expression)iterator.next();
                boolean storeRequired = this.checkAutoBoxing(argument.resolveTypeBinding(), parameterTypes[i++]);
                argument.accept((ASTVisitor)this);
                if (!storeRequired) continue;
                this.storeInstruction();
            }
        }
    }

    public boolean visit(MethodRef node) {
        return false;
    }

    public boolean visit(MethodRefParameter node) {
        return false;
    }

    public boolean visit(Modifier node) {
        return false;
    }

    public boolean visit(NormalAnnotation node) {
        return false;
    }

    public boolean visit(NullLiteral node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new PushNull());
        return true;
    }

    public boolean visit(NumberLiteral node) {
        if (!this.isActive()) {
            return false;
        }
        int literalType = this.getTypeId((Expression)node);
        String token = node.getToken();
        int tokenLastCharOffset = token.length() - 1;
        char lastChar = token.charAt(tokenLastCharOffset);
        String subToken = token.substring(0, tokenLastCharOffset);
        switch (literalType) {
            case 3: {
                this.push(new PushInt(ASTInstructionCompiler.parseByteValue(token)));
                break;
            }
            case 4: {
                this.push(new PushInt(ASTInstructionCompiler.parseShortValue(token)));
                break;
            }
            case 10: {
                this.push(new PushInt(ASTInstructionCompiler.parseIntValue(token)));
                break;
            }
            case 7: {
                this.push(new PushLong(ASTInstructionCompiler.parseLongValue(subToken)));
                break;
            }
            case 9: {
                this.push(new PushFloat(Float.parseFloat(ASTInstructionCompiler.removePrefixZerosAndUnderscores(subToken, false))));
                break;
            }
            case 8: {
                if (lastChar == 'D' || lastChar == 'd') {
                    this.push(new PushDouble(Double.parseDouble(ASTInstructionCompiler.removePrefixZerosAndUnderscores(subToken, false))));
                    break;
                }
                this.push(new PushDouble(Double.parseDouble(ASTInstructionCompiler.removePrefixZerosAndUnderscores(token, false))));
            }
        }
        return true;
    }

    public static int parseIntValue(String token) {
        token = ASTInstructionCompiler.removePrefixZerosAndUnderscores(token, false);
        switch (ASTInstructionCompiler.getBase(token)) {
            case 8: {
                return Integer.valueOf(token.substring(1), 8);
            }
            case 16: {
                return Integer.valueOf(token.substring(2), 16);
            }
            case 2: {
                return Integer.valueOf(token.substring(2), 2);
            }
        }
        return Integer.valueOf(token, 10);
    }

    public static short parseShortValue(String token) {
        token = ASTInstructionCompiler.removePrefixZerosAndUnderscores(token, false);
        switch (ASTInstructionCompiler.getBase(token)) {
            case 8: {
                return Short.valueOf(token.substring(1), 8);
            }
            case 16: {
                return Short.valueOf(token.substring(2), 16);
            }
            case 2: {
                return Short.valueOf(token.substring(2), 2);
            }
        }
        return Short.valueOf(token, 10);
    }

    public static byte parseByteValue(String token) {
        token = ASTInstructionCompiler.removePrefixZerosAndUnderscores(token, false);
        switch (ASTInstructionCompiler.getBase(token)) {
            case 8: {
                return Byte.valueOf(token.substring(1), 8);
            }
            case 16: {
                return Byte.valueOf(token.substring(2), 16);
            }
            case 2: {
                return Byte.valueOf(token.substring(2), 2);
            }
        }
        return Byte.valueOf(token, 10);
    }

    public static long parseLongValue(String token) {
        token = ASTInstructionCompiler.removePrefixZerosAndUnderscores(token, true);
        switch (ASTInstructionCompiler.getBase(token)) {
            case 8: {
                return Long.valueOf(token.substring(1), 8);
            }
            case 16: {
                return Long.valueOf(token.substring(2), 16);
            }
            case 2: {
                return Long.valueOf(token.substring(2), 2);
            }
        }
        return Long.valueOf(token, 10);
    }

    public static int getBase(String token) {
        if (token.charAt(0) == '0' && token.length() > 1) {
            switch (token.charAt(1)) {
                case 'X': 
                case 'x': {
                    return 16;
                }
                case 'B': 
                case 'b': {
                    return 2;
                }
            }
            return 8;
        }
        return 10;
    }

    public boolean visit(PackageDeclaration node) {
        return false;
    }

    public boolean visit(ParameterizedType node) {
        if (!this.isActive()) {
            return false;
        }
        ITypeBinding typeBinding = this.resolveTypeBinding((Type)node);
        if (typeBinding != null) {
            this.push(new PushType(this.getTypeName(typeBinding)));
        }
        return false;
    }

    public boolean visit(ParenthesizedExpression node) {
        return this.isActive();
    }

    public boolean visit(PostfixExpression node) {
        if (!this.isActive()) {
            return false;
        }
        Expression operand = node.getOperand();
        int expressionTypeId = this.getTypeId(operand);
        String opToken = node.getOperator().toString();
        char char0 = opToken.charAt(0);
        if (expressionTypeId == 1) {
            int expressionUnBoxedTypeId = this.getUnBoxedTypeId(operand);
            AssignmentOperator assignmentInstruction = new AssignmentOperator(1, 1, this.fCounter);
            this.push(assignmentInstruction);
            operand.accept((ASTVisitor)this);
            switch (char0) {
                case '+': {
                    this.push(new PlusOperator(expressionUnBoxedTypeId, expressionUnBoxedTypeId, expressionUnBoxedTypeId, this.fCounter));
                    break;
                }
                case '-': {
                    this.push(new MinusOperator(expressionUnBoxedTypeId, expressionUnBoxedTypeId, expressionUnBoxedTypeId, this.fCounter));
                    break;
                }
                default: {
                    this.setHasError(true);
                    this.addErrorMessage(String.valueOf(EvaluationEngineMessages.ASTInstructionCompiler_unrecognized_postfix_operator____15) + opToken);
                    return false;
                }
            }
            this.push(new Value(this.fCounter));
            this.push(new Dup());
            this.storeInstruction();
            this.storeInstruction();
            this.push(new DupX1());
            this.storeInstruction();
            ITypeBinding typeBinding = this.resolveTypeBinding(operand);
            if (typeBinding == null) {
                return false;
            }
            this.unBoxing(typeBinding);
            this.storeInstruction();
            this.push(new PushInt(1));
            this.storeInstruction();
            this.storeInstruction();
            this.boxing(typeBinding, null);
            this.storeInstruction();
            this.storeInstruction();
            this.push(new Pop(assignmentInstruction.getSize() + 1));
            return false;
        }
        switch (char0) {
            case '+': {
                this.push(new PostfixPlusPlusOperator(expressionTypeId, this.fCounter));
                break;
            }
            case '-': {
                this.push(new PostfixMinusMinusOperator(expressionTypeId, this.fCounter));
                break;
            }
            default: {
                this.setHasError(true);
                this.addErrorMessage(String.valueOf(EvaluationEngineMessages.ASTInstructionCompiler_unrecognized_postfix_operator____15) + opToken);
                return false;
            }
        }
        return true;
    }

    public boolean visit(PrefixExpression node) {
        if (!this.isActive()) {
            return false;
        }
        Expression operand = node.getOperand();
        int expressionTypeId = this.getTypeId(operand);
        String opToken = node.getOperator().toString();
        int opTokenLength = opToken.length();
        char char0 = opToken.charAt(0);
        char char1 = '\u0000';
        if (opTokenLength > 1) {
            char1 = opToken.charAt(1);
        }
        boolean unrecognized = false;
        if (expressionTypeId == 1) {
            int expressionUnBoxedTypeId = this.getUnBoxedTypeId(operand);
            ITypeBinding typeBinding = this.resolveTypeBinding(operand);
            if (typeBinding == null) {
                return false;
            }
            if (char1 == '\u0000') {
                switch (char0) {
                    case '+': {
                        this.push(new UnaryPlusOperator(expressionUnBoxedTypeId, this.fCounter));
                        break;
                    }
                    case '-': {
                        this.push(new UnaryMinusOperator(expressionUnBoxedTypeId, this.fCounter));
                        break;
                    }
                    case '~': {
                        this.push(new TwiddleOperator(expressionUnBoxedTypeId, this.fCounter));
                        break;
                    }
                    case '!': {
                        this.push(new NotOperator(expressionUnBoxedTypeId, this.fCounter));
                        break;
                    }
                    default: {
                        this.setHasError(true);
                        this.addErrorMessage(String.valueOf(EvaluationEngineMessages.ASTInstructionCompiler_unrecognized_prefix_operator____16) + opToken);
                        return false;
                    }
                }
                this.unBoxing(typeBinding);
                operand.accept((ASTVisitor)this);
                this.storeInstruction();
            } else {
                this.push(new AssignmentOperator(1, 1, this.fCounter));
                operand.accept((ASTVisitor)this);
                this.boxing(typeBinding, null);
                switch (char1) {
                    case '+': {
                        this.push(new PlusOperator(expressionUnBoxedTypeId, expressionUnBoxedTypeId, expressionUnBoxedTypeId, this.fCounter));
                        break;
                    }
                    case '-': {
                        this.push(new MinusOperator(expressionUnBoxedTypeId, expressionUnBoxedTypeId, expressionUnBoxedTypeId, this.fCounter));
                        break;
                    }
                    default: {
                        this.setHasError(true);
                        this.addErrorMessage(String.valueOf(EvaluationEngineMessages.ASTInstructionCompiler_unrecognized_prefix_operator____16) + opToken);
                        return false;
                    }
                }
                this.unBoxing(typeBinding);
                this.push(new Dup());
                this.storeInstruction();
                this.storeInstruction();
                this.push(new PushInt(1));
                this.storeInstruction();
                this.storeInstruction();
                this.storeInstruction();
            }
            return false;
        }
        block10 : switch (char0) {
            case '+': {
                switch (char1) {
                    case '\u0000': {
                        this.push(new UnaryPlusOperator(expressionTypeId, this.fCounter));
                        break block10;
                    }
                    case '+': {
                        this.push(new PrefixPlusPlusOperator(expressionTypeId, this.fCounter));
                        break block10;
                    }
                }
                unrecognized = true;
                break;
            }
            case '-': {
                switch (char1) {
                    case '\u0000': {
                        this.push(new UnaryMinusOperator(expressionTypeId, this.fCounter));
                        break block10;
                    }
                    case '-': {
                        this.push(new PrefixMinusMinusOperator(expressionTypeId, this.fCounter));
                        break block10;
                    }
                }
                unrecognized = true;
                break;
            }
            case '~': {
                this.push(new TwiddleOperator(expressionTypeId, this.fCounter));
                break;
            }
            case '!': {
                this.push(new NotOperator(expressionTypeId, this.fCounter));
                break;
            }
            default: {
                unrecognized = true;
            }
        }
        if (unrecognized) {
            this.setHasError(true);
            this.addErrorMessage(String.valueOf(EvaluationEngineMessages.ASTInstructionCompiler_unrecognized_prefix_operator____16) + opToken);
            return false;
        }
        return true;
    }

    public boolean visit(PrimitiveType node) {
        if (!this.isActive()) {
            return false;
        }
        ITypeBinding typeBinding = this.resolveTypeBinding((Type)node);
        if (typeBinding != null) {
            this.push(new PushPrimitiveType(this.getTypeName(typeBinding)));
        }
        return false;
    }

    public boolean visit(QualifiedName node) {
        if (!this.isActive()) {
            return false;
        }
        if (this.hasErrors()) {
            return true;
        }
        IBinding binding = this.resolveBinding((Name)node);
        if (binding == null) {
            return false;
        }
        switch (binding.getKind()) {
            case 2: {
                node.getName().accept((ASTVisitor)this);
                break;
            }
            case 3: {
                SimpleName fieldName = node.getName();
                IVariableBinding fieldBinding = (IVariableBinding)this.resolveBinding((Name)fieldName);
                if (fieldBinding == null) {
                    return false;
                }
                ITypeBinding declaringTypeBinding = fieldBinding.getDeclaringClass();
                String fieldId = fieldName.getIdentifier();
                if (Modifier.isStatic((int)fieldBinding.getModifiers())) {
                    this.push(new PushStaticFieldVariable(fieldId, this.getTypeName(declaringTypeBinding), this.fCounter));
                } else {
                    if (declaringTypeBinding == null) {
                        this.push(new PushArrayLength(this.fCounter));
                    } else {
                        this.push(new PushFieldVariable(fieldId, this.getTypeSignature(declaringTypeBinding), this.fCounter));
                    }
                    node.getQualifier().accept((ASTVisitor)this);
                }
                this.storeInstruction();
            }
        }
        return false;
    }

    public boolean visit(QualifiedType node) {
        if (!this.isActive()) {
            return false;
        }
        ITypeBinding typeBinding = this.resolveTypeBinding((Type)node);
        if (typeBinding != null) {
            this.push(new PushType(this.getTypeName(typeBinding)));
        }
        return false;
    }

    public boolean visit(ReturnStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new ReturnInstruction(this.fCounter));
        return true;
    }

    public boolean visit(SimpleName node) {
        if (!this.isActive()) {
            return false;
        }
        if (this.hasErrors()) {
            return true;
        }
        IBinding binding = this.resolveBinding((Name)node);
        if (binding == null) {
            return true;
        }
        String variableId = node.getIdentifier();
        switch (binding.getKind()) {
            case 2: {
                ITypeBinding typeBinding = (ITypeBinding)binding;
                this.push(new PushType(this.getTypeName(typeBinding)));
                break;
            }
            case 3: {
                IVariableBinding variableBinding = (IVariableBinding)binding;
                ITypeBinding declaringTypeBinding = variableBinding.getDeclaringClass();
                if (variableBinding.isField()) {
                    if (Modifier.isStatic((int)variableBinding.getModifiers())) {
                        this.push(new PushStaticFieldVariable(variableId, this.getTypeName(declaringTypeBinding), this.fCounter));
                        break;
                    }
                    if (this.isALocalType(declaringTypeBinding)) {
                        this.setHasError(true);
                        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_36);
                        return false;
                    }
                    this.push(new PushFieldVariable(variableId, this.getTypeSignature(declaringTypeBinding), this.fCounter));
                    this.push(new PushThis(this.getEnclosingLevel((ASTNode)node, declaringTypeBinding)));
                    this.storeInstruction();
                    break;
                }
                this.push(new PushLocalVariable(variableId));
            }
        }
        return true;
    }

    public boolean visit(SimpleType node) {
        if (!this.isActive()) {
            return false;
        }
        ITypeBinding typeBinding = this.resolveTypeBinding((Type)node);
        if (typeBinding != null) {
            this.push(new PushType(this.getTypeName(typeBinding)));
        }
        return false;
    }

    public boolean visit(SingleMemberAnnotation node) {
        return false;
    }

    public boolean visit(SingleVariableDeclaration node) {
        if (!this.isActive()) {
            return false;
        }
        ITypeBinding typeBinding = this.resolveTypeBinding(node.getType());
        if (typeBinding != null) {
            int typeDimension = typeBinding.getDimensions();
            if (typeDimension != 0) {
                typeBinding = typeBinding.getElementType();
            }
            Expression initializer = node.getInitializer();
            this.push(new LocalVariableCreation(node.getName().getIdentifier(), this.getTypeSignature(typeBinding), typeDimension, typeBinding.isPrimitive(), initializer != null, this.fCounter));
            if (initializer != null) {
                initializer.accept((ASTVisitor)this);
            }
        }
        return false;
    }

    public boolean visit(StringLiteral node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new PushString(node.getLiteralValue()));
        return true;
    }

    public boolean visit(SuperConstructorInvocation node) {
        if (!this.isActive()) {
            return false;
        }
        this.setHasError(true);
        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_super_constructor_invocation_cannot_be_used_in_an_evaluation_expression_19);
        return false;
    }

    public boolean visit(SuperFieldAccess node) {
        if (!this.isActive()) {
            return false;
        }
        SimpleName fieldName = node.getName();
        IVariableBinding fieldBinding = (IVariableBinding)this.resolveBinding((Name)fieldName);
        if (fieldBinding == null) {
            return false;
        }
        ITypeBinding declaringTypeBinding = fieldBinding.getDeclaringClass();
        String fieldId = fieldName.getIdentifier();
        if (Modifier.isStatic((int)fieldBinding.getModifiers())) {
            this.push(new PushStaticFieldVariable(fieldId, this.getTypeName(declaringTypeBinding), this.fCounter));
        } else {
            Name qualifier = node.getQualifier();
            int superLevel = 1;
            int enclosingLevel = 0;
            if (qualifier != null) {
                ITypeBinding typeBinding = this.resolveTypeBinding(qualifier);
                if (typeBinding == null) {
                    return false;
                }
                superLevel = this.getSuperLevel(typeBinding, declaringTypeBinding);
                ITypeBinding binding = (ITypeBinding)this.resolveBinding(qualifier);
                if (binding == null) {
                    return false;
                }
                enclosingLevel = this.getEnclosingLevel((ASTNode)node, binding);
            }
            this.push(new PushFieldVariable(fieldId, superLevel, this.fCounter));
            this.push(new PushThis(enclosingLevel));
            this.storeInstruction();
        }
        return false;
    }

    public boolean visit(SuperMethodInvocation node) {
        if (!this.isActive()) {
            return false;
        }
        IMethodBinding methodBinding = (IMethodBinding)this.resolveBinding((Name)node.getName());
        if (methodBinding == null) {
            return false;
        }
        if (this.containsALocalType(methodBinding)) {
            this.setHasError(true);
            this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Method_which_contains_a_local_type_as_parameter_cannot_be_used_in_an_evaluation_expression_32);
            return false;
        }
        ITypeBinding[] parameterTypes = methodBinding.getParameterTypes();
        int paramCount = parameterTypes.length;
        String selector = methodBinding.getName();
        String signature = this.getMethodSignature(methodBinding, null);
        Name qualifier = node.getQualifier();
        if (Modifier.isStatic((int)methodBinding.getModifiers())) {
            this.push(new SendStaticMessage(this.getTypeName(methodBinding.getDeclaringClass()), selector, signature, paramCount, this.fCounter));
        } else {
            this.push(new SendMessage(selector, signature, paramCount, this.getTypeSignature(methodBinding.getDeclaringClass()), this.fCounter));
            int enclosingLevel = 0;
            if (qualifier != null) {
                ITypeBinding typeBinding = (ITypeBinding)this.resolveBinding(qualifier);
                if (typeBinding == null) {
                    return false;
                }
                enclosingLevel = this.getEnclosingLevel((ASTNode)node, typeBinding);
            }
            this.push(new PushThis(enclosingLevel));
            this.storeInstruction();
        }
        List arguments = node.arguments();
        int argCount = arguments.size();
        ITypeBinding lastArgBinding = null;
        if (methodBinding.isVarargs() && (lastArgBinding = this.resolveTypeBinding((Expression)arguments.get(argCount - 1))) == null) {
            return false;
        }
        if (methodBinding.isVarargs() && (paramCount != argCount || parameterTypes[paramCount - 1].getDimensions() != lastArgBinding.getDimensions())) {
            Iterator iterator = arguments.iterator();
            int i = 0;
            while (i < paramCount - 1) {
                Expression argument = (Expression)iterator.next();
                boolean storeRequired = this.checkAutoBoxing(argument.resolveTypeBinding(), parameterTypes[i]);
                argument.accept((ASTVisitor)this);
                if (storeRequired) {
                    this.storeInstruction();
                }
                ++i;
            }
            ITypeBinding varargsParameterType = parameterTypes[paramCount - 1];
            ITypeBinding varargsElementType = varargsParameterType.getElementType();
            this.push(new ArrayInitializerInstruction(this.getTypeSignature(varargsElementType), argCount - paramCount + 1, varargsParameterType.getDimensions(), this.fCounter));
            while (iterator.hasNext()) {
                Expression argument = (Expression)iterator.next();
                boolean storeRequired = this.checkAutoBoxing(argument.resolveTypeBinding(), varargsElementType);
                argument.accept((ASTVisitor)this);
                if (!storeRequired) continue;
                this.storeInstruction();
            }
            this.storeInstruction();
        } else {
            Iterator iterator = arguments.iterator();
            int i = 0;
            while (iterator.hasNext()) {
                Expression argument = (Expression)iterator.next();
                boolean storeRequired = this.checkAutoBoxing(argument.resolveTypeBinding(), parameterTypes[i++]);
                argument.accept((ASTVisitor)this);
                if (!storeRequired) continue;
                this.storeInstruction();
            }
        }
        return false;
    }

    public boolean visit(SwitchCase node) {
        return false;
    }

    public boolean visit(SwitchStatement node) {
        ConditionalJump condJump;
        if (!this.isActive()) {
            return false;
        }
        this.push(new NoOp(this.fCounter));
        int switchStart = this.fCounter;
        node.getExpression().accept((ASTVisitor)this);
        ArrayList<Statement> statementsDefault = null;
        Jump jumpDefault = null;
        ArrayList<ArrayList[]> jumpsStatements = new ArrayList<ArrayList[]>();
        ArrayList[] arrayListArray = new ArrayList[2];
        arrayListArray[0] = new ArrayList();
        ArrayList[] currentJumpsStatements = arrayListArray;
        jumpsStatements.add(currentJumpsStatements);
        Iterator iter = node.statements().iterator();
        while (iter.hasNext()) {
            Statement statement = (Statement)iter.next();
            if (statement instanceof SwitchCase) {
                SwitchCase switchCase = (SwitchCase)statement;
                if (switchCase.isDefault()) {
                    jumpDefault = new Jump();
                    this.push(jumpDefault);
                    this.storeInstruction();
                    statementsDefault = new ArrayList<Statement>();
                    continue;
                }
                if (switchCase.getExpression() instanceof StringLiteral) {
                    this.push(new SendMessage("equals", "(Ljava/lang/Object;)Z", 1, null, this.fCounter));
                } else {
                    this.push(new EqualEqualOperator(10, 10, true, this.fCounter));
                }
                this.push(new Dup());
                this.storeInstruction();
                switchCase.getExpression().accept((ASTVisitor)this);
                this.storeInstruction();
                condJump = new ConditionalJump(true);
                this.push(condJump);
                this.storeInstruction();
                if (currentJumpsStatements[1] != null) {
                    ArrayList[] arrayListArray2 = new ArrayList[2];
                    arrayListArray2[0] = new ArrayList();
                    currentJumpsStatements = arrayListArray2;
                    jumpsStatements.add(currentJumpsStatements);
                }
                currentJumpsStatements[0].add(condJump);
                continue;
            }
            if (statementsDefault != null) {
                statementsDefault.add(statement);
                continue;
            }
            if (currentJumpsStatements[1] == null) {
                currentJumpsStatements[1] = new ArrayList();
            }
            currentJumpsStatements[1].add(statement);
        }
        Jump jumpEnd = null;
        if (jumpDefault == null) {
            this.push(new Pop(0));
            this.storeInstruction();
            jumpEnd = new Jump();
            this.push(jumpEnd);
            this.storeInstruction();
        }
        Iterator iter2 = jumpsStatements.iterator();
        while (iter2.hasNext()) {
            currentJumpsStatements = (ArrayList[])iter2.next();
            Iterator iterator = currentJumpsStatements[0].iterator();
            while (iterator.hasNext()) {
                condJump = (ConditionalJump)iterator.next();
                condJump.setOffset(this.fCounter - this.fInstructions.indexOf(condJump) - 1);
            }
            if (currentJumpsStatements[1] == null) continue;
            this.push(new Pop(0));
            this.storeInstruction();
            iterator = currentJumpsStatements[1].iterator();
            while (iterator.hasNext()) {
                ((Statement)iterator.next()).accept((ASTVisitor)this);
            }
        }
        if (jumpDefault != null) {
            jumpDefault.setOffset(this.fCounter - this.fInstructions.indexOf(jumpDefault) - 1);
            this.push(new Pop(0));
            this.storeInstruction();
            Iterator iterator = statementsDefault.iterator();
            while (iterator.hasNext()) {
                ((Statement)iterator.next()).accept((ASTVisitor)this);
            }
        } else {
            jumpEnd.setOffset(this.fCounter - this.fInstructions.indexOf(jumpEnd) - 1);
        }
        String label = this.getLabel((Statement)node);
        Iterator iter3 = this.fCompleteInstructions.iterator();
        while (iter3.hasNext()) {
            CompleteInstruction instruction = (CompleteInstruction)iter3.next();
            Jump jumpInstruction = instruction.fInstruction;
            int instructionAddress = this.fInstructions.indexOf(jumpInstruction);
            if (instructionAddress <= switchStart || instruction.fLabel != null && !instruction.fLabel.equals(label)) continue;
            iter3.remove();
            if (!instruction.fIsBreak) continue;
            jumpInstruction.setOffset(this.fCounter - instructionAddress - 1);
        }
        return false;
    }

    public boolean visit(SynchronizedStatement node) {
        return this.isActive();
    }

    public boolean visit(TagElement node) {
        return false;
    }

    public boolean visit(TextElement node) {
        return false;
    }

    public boolean visit(ThisExpression node) {
        if (!this.isActive()) {
            return false;
        }
        Name qualifier = node.getQualifier();
        int enclosingLevel = 0;
        if (qualifier != null) {
            ITypeBinding binding = (ITypeBinding)this.resolveBinding(qualifier);
            if (binding == null) {
                return false;
            }
            enclosingLevel = this.getEnclosingLevel((ASTNode)node, binding);
        }
        this.push(new PushThis(enclosingLevel));
        return false;
    }

    public boolean visit(ThrowStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new ThrowInstruction(this.fCounter));
        return true;
    }

    public boolean visit(TryStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.setHasError(true);
        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Try_statement_cannot_be_used_in_an_evaluation_expression_23);
        return false;
    }

    public boolean visit(TypeDeclaration node) {
        if (!this.isActive()) {
            return true;
        }
        this.setHasError(true);
        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Type_declaration_cannot_be_used_in_an_evaluation_expression_24);
        return false;
    }

    public boolean visit(TypeDeclarationStatement node) {
        if (!this.isActive()) {
            return true;
        }
        this.setHasError(true);
        this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Type_declaration_statement_cannot_be_used_in_an_evaluation_expression_25);
        return false;
    }

    public boolean visit(TypeParameter node) {
        return false;
    }

    public boolean visit(TypeLiteral node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new PushClassLiteralValue(this.fCounter));
        return true;
    }

    public boolean visit(VariableDeclarationExpression node) {
        if (!this.isActive()) {
            return true;
        }
        Iterator iter = node.fragments().iterator();
        while (iter.hasNext()) {
            ((VariableDeclarationFragment)iter.next()).accept((ASTVisitor)this);
        }
        return false;
    }

    public boolean visit(VariableDeclarationFragment node) {
        ITypeBinding varTypeBinding;
        if (!this.isActive()) {
            return true;
        }
        ASTNode parent = node.getParent();
        switch (parent.getNodeType()) {
            case 58: {
                varTypeBinding = this.resolveTypeBinding(((VariableDeclarationExpression)parent).getType());
                break;
            }
            case 60: {
                varTypeBinding = this.resolveTypeBinding(((VariableDeclarationStatement)parent).getType());
                break;
            }
            default: {
                this.setHasError(true);
                this.addErrorMessage(EvaluationEngineMessages.ASTInstructionCompiler_Error_in_type_declaration_statement);
                return false;
            }
        }
        if (varTypeBinding == null) {
            return false;
        }
        int typeDimension = varTypeBinding.getDimensions();
        ITypeBinding elementBinding = varTypeBinding;
        if (typeDimension != 0) {
            elementBinding = elementBinding.getElementType();
        }
        Expression initializer = node.getInitializer();
        this.push(new LocalVariableCreation(node.getName().getIdentifier(), this.getTypeSignature(elementBinding), typeDimension, elementBinding.isPrimitive(), initializer != null, this.fCounter));
        if (initializer != null) {
            initializer.accept((ASTVisitor)this);
            ITypeBinding expBindnig = initializer.resolveTypeBinding();
            if (expBindnig != null && this.checkAutoBoxing(expBindnig, varTypeBinding)) {
                this.storeInstruction();
            }
        }
        return false;
    }

    public boolean visit(VariableDeclarationStatement node) {
        if (!this.isActive()) {
            return true;
        }
        Iterator iter = node.fragments().iterator();
        while (iter.hasNext()) {
            ((VariableDeclarationFragment)iter.next()).accept((ASTVisitor)this);
        }
        return false;
    }

    public boolean visit(WildcardType node) {
        return false;
    }

    public boolean visit(WhileStatement node) {
        if (!this.isActive()) {
            return false;
        }
        this.push(new NoOp(this.fCounter));
        return true;
    }

    private int getTypeId(Expression expression) {
        ITypeBinding typeBinding = expression.resolveTypeBinding();
        if (typeBinding == null) {
            return 0;
        }
        String typeName = typeBinding.getQualifiedName();
        if (typeBinding.isPrimitive()) {
            return this.getPrimitiveTypeId(typeName);
        }
        if ("java.lang.String".equals(typeName)) {
            return 11;
        }
        return 1;
    }

    private int getUnBoxedTypeId(Expression expression) {
        ITypeBinding typeBinding = expression.resolveTypeBinding();
        if (typeBinding == null) {
            return 0;
        }
        String typeName = typeBinding.getQualifiedName();
        if (typeBinding.isPrimitive()) {
            return this.getPrimitiveTypeId(typeName);
        }
        if ("java.lang.String".equals(typeName)) {
            return 11;
        }
        if ("java.lang.Integer".equals(typeName)) {
            return 10;
        }
        if ("java.lang.Character".equals(typeName)) {
            return 2;
        }
        if ("java.lang.Byte".equals(typeName)) {
            return 3;
        }
        if ("java.lang.Short".equals(typeName)) {
            return 4;
        }
        if ("java.lang.Long".equals(typeName)) {
            return 7;
        }
        if ("java.lang.Float".equals(typeName)) {
            return 9;
        }
        if ("java.lang.Double".equals(typeName)) {
            return 8;
        }
        if ("java.lang.Boolean".equals(typeName)) {
            return 5;
        }
        return 1;
    }

    private int getTypeId(Type type) {
        if (type.isPrimitiveType()) {
            return this.getPrimitiveTypeId(((PrimitiveType)type).getPrimitiveTypeCode().toString());
        }
        if (type.isSimpleType()) {
            SimpleType simpleType = (SimpleType)type;
            if ("java.lang.String".equals(simpleType.getName().getFullyQualifiedName())) {
                return 11;
            }
            return 1;
        }
        if (type.isArrayType()) {
            return 1;
        }
        return 0;
    }

    public static String removePrefixZerosAndUnderscores(String tokenString, boolean isLong) {
        char[] token = tokenString.toCharArray();
        int max = token.length;
        int start = 0;
        int end = max - 1;
        if (isLong) {
            --end;
        }
        if (max > 1 && token[0] == '0') {
            start = max > 2 && (token[1] == 'x' || token[1] == 'X') ? 2 : (max > 2 && (token[1] == 'b' || token[1] == 'B') ? 2 : 1);
        }
        boolean modified = false;
        boolean ignore = true;
        int i = start;
        block8: while (i < max) {
            char currentChar = token[i];
            switch (currentChar) {
                case '0': {
                    if (!ignore || modified || i >= end) break;
                    modified = true;
                    break;
                }
                case '_': {
                    modified = true;
                    break block8;
                }
                default: {
                    ignore = false;
                }
            }
            ++i;
        }
        if (!modified) {
            return tokenString;
        }
        ignore = true;
        StringBuffer buffer = new StringBuffer();
        buffer.append(token, 0, start);
        int i2 = start;
        while (i2 < max) {
            block13: {
                char currentChar = token[i2];
                switch (currentChar) {
                    case '0': {
                        if (!ignore || i2 >= end) break;
                        break block13;
                    }
                    case '_': {
                        break block13;
                    }
                    default: {
                        ignore = false;
                    }
                }
                buffer.append(currentChar);
            }
            ++i2;
        }
        return buffer.toString();
    }

    private String getMethodSignature(IMethodBinding methodBinding, String enclosingTypeSignature) {
        String[] parameterSignatures;
        int argCount;
        methodBinding = methodBinding.getMethodDeclaration();
        ITypeBinding[] parameterTypes = methodBinding.getParameterTypes();
        int offset = 0;
        if (enclosingTypeSignature == null) {
            argCount = parameterTypes.length;
            parameterSignatures = new String[argCount];
        } else {
            offset = 1;
            argCount = parameterTypes.length + 1;
            parameterSignatures = new String[argCount];
            parameterSignatures[0] = enclosingTypeSignature;
        }
        int i = 0;
        while (i < parameterTypes.length) {
            parameterSignatures[i + offset] = this.getTypeSignature(parameterTypes[i]);
            ++i;
        }
        String signature = Signature.createMethodSignature((String[])parameterSignatures, (String)this.getTypeSignature(methodBinding.getReturnType()));
        return signature;
    }

    private int getPrimitiveTypeId(String typeName) {
        switch (typeName.charAt(0)) {
            case 'b': {
                switch (typeName.charAt(1)) {
                    case 'o': {
                        return 5;
                    }
                    case 'y': {
                        return 3;
                    }
                }
                break;
            }
            case 'c': {
                return 2;
            }
            case 'd': {
                return 8;
            }
            case 'f': {
                return 9;
            }
            case 'i': {
                return 10;
            }
            case 'l': {
                return 7;
            }
            case 'n': {
                return 12;
            }
            case 's': {
                return 4;
            }
            case 'v': {
                return 6;
            }
        }
        return 0;
    }

    private ITypeBinding resolveTypeBinding(Expression expression) {
        ITypeBinding typeBinding = expression.resolveTypeBinding();
        if (typeBinding == null) {
            this.setHasError(true);
            this.addErrorMessage(MessageFormat.format((String)EvaluationEngineMessages.ASTInstructionCompiler_3, (Object[])new String[]{expression.toString()}));
        }
        return typeBinding;
    }

    private ITypeBinding resolveTypeBinding(Type type) {
        ITypeBinding typeBinding = type.resolveBinding();
        if (typeBinding == null) {
            this.setHasError(true);
            this.addErrorMessage(MessageFormat.format((String)EvaluationEngineMessages.ASTInstructionCompiler_3, (Object[])new String[]{type.toString()}));
        }
        return typeBinding;
    }

    private IBinding resolveBinding(Name name) {
        IBinding binding = name.resolveBinding();
        if (binding == null) {
            this.setHasError(true);
            this.addErrorMessage(MessageFormat.format((String)EvaluationEngineMessages.ASTInstructionCompiler_5, (Object[])new String[]{name.getFullyQualifiedName()}));
        }
        return binding;
    }

    private ITypeBinding resolveTypeBinding(Name name) {
        ITypeBinding typeBinding = name.resolveTypeBinding();
        if (typeBinding == null) {
            this.setHasError(true);
            this.addErrorMessage(MessageFormat.format((String)EvaluationEngineMessages.ASTInstructionCompiler_3, (Object[])new String[]{name.getFullyQualifiedName()}));
        }
        return typeBinding;
    }

    class CompleteInstruction {
        Jump fInstruction;
        String fLabel;
        boolean fIsBreak;

        public CompleteInstruction(Jump instruction, String label, boolean isBreak) {
            this.fInstruction = instruction;
            this.fLabel = label;
            this.fIsBreak = isBreak;
        }
    }
}

