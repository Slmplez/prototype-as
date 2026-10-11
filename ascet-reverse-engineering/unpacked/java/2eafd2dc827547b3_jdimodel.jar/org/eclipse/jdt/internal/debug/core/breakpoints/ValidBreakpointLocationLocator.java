/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
 *  org.eclipse.jdt.core.dom.BodyDeclaration
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
 *  org.eclipse.jdt.core.dom.PrefixExpression$Operator
 *  org.eclipse.jdt.core.dom.PrimitiveType
 *  org.eclipse.jdt.core.dom.QualifiedName
 *  org.eclipse.jdt.core.dom.QualifiedType
 *  org.eclipse.jdt.core.dom.ReturnStatement
 *  org.eclipse.jdt.core.dom.SimpleName
 *  org.eclipse.jdt.core.dom.SimpleType
 *  org.eclipse.jdt.core.dom.SingleMemberAnnotation
 *  org.eclipse.jdt.core.dom.SingleVariableDeclaration
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
 *  org.eclipse.jdt.core.dom.TypeDeclaration
 *  org.eclipse.jdt.core.dom.TypeDeclarationStatement
 *  org.eclipse.jdt.core.dom.TypeLiteral
 *  org.eclipse.jdt.core.dom.TypeParameter
 *  org.eclipse.jdt.core.dom.UnionType
 *  org.eclipse.jdt.core.dom.VariableDeclarationExpression
 *  org.eclipse.jdt.core.dom.VariableDeclarationFragment
 *  org.eclipse.jdt.core.dom.VariableDeclarationStatement
 *  org.eclipse.jdt.core.dom.WhileStatement
 *  org.eclipse.jdt.core.dom.WildcardType
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
import org.eclipse.jdt.core.dom.BodyDeclaration;
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

public class ValidBreakpointLocationLocator
extends ASTVisitor {
    public static final int LOCATION_NOT_FOUND = 0;
    public static final int LOCATION_LINE = 1;
    public static final int LOCATION_METHOD = 2;
    public static final int LOCATION_FIELD = 3;
    private CompilationUnit fCompilationUnit;
    private int fLineNumber;
    private boolean fBindingsResolved;
    private boolean fNeedBindings = false;
    private boolean fBestMatch;
    private int fLocationType;
    private boolean fLocationFound;
    private String fTypeName;
    private int fLineLocation;
    private int fMemberOffset;
    private List fLabels;

    public ValidBreakpointLocationLocator(CompilationUnit compilationUnit, int lineNumber, boolean bindingsResolved, boolean bestMatch) {
        this.fCompilationUnit = compilationUnit;
        this.fLineNumber = lineNumber;
        this.fBindingsResolved = bindingsResolved;
        this.fBestMatch = bestMatch;
        this.fLocationFound = false;
    }

    public boolean isBindingsRequired() {
        return this.fNeedBindings;
    }

    public int getLocationType() {
        return this.fLocationType;
    }

    public String getFullyQualifiedTypeName() {
        return this.fTypeName;
    }

    public int getLineLocation() {
        if (this.fLocationType == 1) {
            return this.fLineLocation;
        }
        return -1;
    }

    public int getMemberOffset() {
        return this.fMemberOffset;
    }

    private String computeTypeName(ASTNode node) {
        ITypeBinding binding;
        AbstractTypeDeclaration type = null;
        while (!(node instanceof CompilationUnit)) {
            if (node instanceof AbstractTypeDeclaration) {
                type = (AbstractTypeDeclaration)node;
                break;
            }
            node = node.getParent();
        }
        if (type != null && (binding = type.resolveBinding()) != null) {
            return binding.getBinaryName();
        }
        return this.computeTypeName0(node);
    }

    String computeTypeName0(ASTNode node) {
        String typeName = null;
        while (!(node instanceof CompilationUnit)) {
            if (node instanceof AbstractTypeDeclaration) {
                String identifier = ((AbstractTypeDeclaration)node).getName().getIdentifier();
                typeName = typeName == null ? identifier : String.valueOf(identifier) + "$" + typeName;
            }
            node = node.getParent();
        }
        PackageDeclaration packageDecl = ((CompilationUnit)node).getPackage();
        String packageIdentifier = "";
        if (packageDecl != null) {
            Name packageName = packageDecl.getName();
            while (packageName.isQualifiedName()) {
                QualifiedName qualifiedName = (QualifiedName)packageName;
                packageIdentifier = String.valueOf(qualifiedName.getName().getIdentifier()) + "." + packageIdentifier;
                packageName = qualifiedName.getQualifier();
            }
            packageIdentifier = String.valueOf(((SimpleName)packageName).getIdentifier()) + "." + packageIdentifier;
        }
        return String.valueOf(packageIdentifier) + typeName;
    }

    private boolean visit(ASTNode node, boolean isCode) {
        if (this.fLocationFound) {
            return false;
        }
        int startPosition = node.getStartPosition();
        int endLine = this.lineNumber(startPosition + node.getLength() - 1);
        if (endLine < this.fLineNumber) {
            return false;
        }
        int startLine = this.lineNumber(startPosition);
        if (isCode && this.fLineNumber <= startLine) {
            this.fLineLocation = startLine;
            this.fLocationFound = true;
            this.fLocationType = 1;
            this.fTypeName = this.computeTypeName(node);
            return false;
        }
        return true;
    }

    private boolean isReplacedByConstantValue(Expression node) {
        switch (node.getNodeType()) {
            case 9: 
            case 13: 
            case 34: 
            case 45: {
                return true;
            }
            case 40: 
            case 42: {
                return this.isReplacedByConstantValue((Name)node);
            }
            case 22: {
                return this.isReplacedByConstantValue((FieldAccess)node);
            }
            case 47: {
                return this.isReplacedByConstantValue((SuperFieldAccess)node);
            }
            case 27: {
                return this.isReplacedByConstantValue((InfixExpression)node);
            }
            case 38: {
                return this.isReplacedByConstantValue((PrefixExpression)node);
            }
            case 11: {
                return this.isReplacedByConstantValue(((CastExpression)node).getExpression());
            }
        }
        return false;
    }

    private boolean isReplacedByConstantValue(InfixExpression node) {
        if (!this.isReplacedByConstantValue(node.getLeftOperand()) || !this.isReplacedByConstantValue(node.getRightOperand())) {
            return false;
        }
        if (node.hasExtendedOperands()) {
            Iterator iter = node.extendedOperands().iterator();
            while (iter.hasNext()) {
                if (this.isReplacedByConstantValue((Expression)iter.next())) continue;
                return false;
            }
        }
        return true;
    }

    private boolean isReplacedByConstantValue(PrefixExpression node) {
        PrefixExpression.Operator operator = node.getOperator();
        if (operator != PrefixExpression.Operator.INCREMENT && operator != PrefixExpression.Operator.DECREMENT) {
            return this.isReplacedByConstantValue(node.getOperand());
        }
        return false;
    }

    private boolean isReplacedByConstantValue(Name node) {
        if (!this.fBindingsResolved) {
            this.fNeedBindings = true;
            return false;
        }
        IBinding binding = node.resolveBinding();
        if (binding != null && binding.getKind() == 3) {
            return ((IVariableBinding)binding).getConstantValue() != null;
        }
        return false;
    }

    private boolean isReplacedByConstantValue(FieldAccess node) {
        if (!this.fBindingsResolved) {
            this.fNeedBindings = true;
            return false;
        }
        Expression expression = node.getExpression();
        IVariableBinding binding = node.resolveFieldBinding();
        if (binding != null && expression.getNodeType() == 52) {
            return binding.getConstantValue() != null;
        }
        return false;
    }

    private boolean isReplacedByConstantValue(SuperFieldAccess node) {
        if (!this.fBindingsResolved) {
            this.fNeedBindings = true;
            return false;
        }
        IVariableBinding binding = node.resolveFieldBinding();
        if (binding != null) {
            return binding.getConstantValue() != null;
        }
        return false;
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        if (this.visit((ASTNode)node, false)) {
            List bodyDeclaration = node.bodyDeclarations();
            Iterator iter = bodyDeclaration.iterator();
            while (iter.hasNext()) {
                ((BodyDeclaration)iter.next()).accept((ASTVisitor)this);
            }
        }
        return false;
    }

    public boolean visit(AnnotationTypeMemberDeclaration node) {
        return false;
    }

    public boolean visit(AnonymousClassDeclaration node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(ArrayAccess node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(ArrayCreation node) {
        return this.visit((ASTNode)node, node.getInitializer() == null);
    }

    public boolean visit(ArrayInitializer node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(ArrayType node) {
        return false;
    }

    public boolean visit(AssertStatement node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(Assignment node) {
        if (this.visit((ASTNode)node, false)) {
            int startLine;
            Expression leftHandSide = node.getLeftHandSide();
            if (leftHandSide instanceof Name && this.fLineNumber < (startLine = this.lineNumber(node.getStartPosition()))) {
                if (this.fBindingsResolved) {
                    IVariableBinding binding = (IVariableBinding)((Name)leftHandSide).resolveBinding();
                    if (binding != null && (!binding.isField() || Modifier.isStatic((int)binding.getModifiers()))) {
                        node.getRightHandSide().accept((ASTVisitor)this);
                    }
                } else {
                    this.fNeedBindings = true;
                }
            }
            return true;
        }
        return false;
    }

    public boolean visit(Block node) {
        if (this.visit((ASTNode)node, false)) {
            if (node.statements().isEmpty() && node.getParent().getNodeType() == 31) {
                this.fLineLocation = this.lineNumber(node.getStartPosition() + node.getLength() - 1);
                this.fLocationFound = true;
                this.fLocationType = 1;
                this.fTypeName = this.computeTypeName((ASTNode)node);
                return false;
            }
            return true;
        }
        return false;
    }

    public boolean visit(BlockComment node) {
        return false;
    }

    public boolean visit(BooleanLiteral node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(BreakStatement node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(CastExpression node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(CatchClause node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(CharacterLiteral node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(ClassInstanceCreation node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(CompilationUnit node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(ConditionalExpression node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(ConstructorInvocation node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(ContinueStatement node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(DoStatement node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(EmptyStatement node) {
        return false;
    }

    public boolean visit(EnhancedForStatement node) {
        if (this.visit((ASTNode)node, false)) {
            node.getExpression().accept((ASTVisitor)this);
            node.getBody().accept((ASTVisitor)this);
        }
        return false;
    }

    public boolean visit(EnumConstantDeclaration node) {
        if (this.visit((ASTNode)node, false)) {
            List arguments = node.arguments();
            Iterator iter = arguments.iterator();
            while (iter.hasNext()) {
                ((Expression)iter.next()).accept((ASTVisitor)this);
            }
            AnonymousClassDeclaration decl = node.getAnonymousClassDeclaration();
            if (decl != null) {
                decl.accept((ASTVisitor)this);
            }
        }
        return false;
    }

    public boolean visit(EnumDeclaration node) {
        if (this.visit((ASTNode)node, false)) {
            List enumConstants = node.enumConstants();
            Iterator iter = enumConstants.iterator();
            while (iter.hasNext()) {
                ((EnumConstantDeclaration)iter.next()).accept((ASTVisitor)this);
            }
            List bodyDeclaration = node.bodyDeclarations();
            Iterator iter2 = bodyDeclaration.iterator();
            while (iter2.hasNext()) {
                ((BodyDeclaration)iter2.next()).accept((ASTVisitor)this);
            }
        }
        return false;
    }

    public boolean visit(ExpressionStatement node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(FieldAccess node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(FieldDeclaration node) {
        if (this.visit((ASTNode)node, false)) {
            int offset;
            List fragments;
            if (this.fBestMatch && (fragments = node.fragments()).size() == 1 && this.lineNumber(offset = ((VariableDeclarationFragment)fragments.get(0)).getName().getStartPosition()) == this.fLineNumber) {
                this.fMemberOffset = offset;
                this.fLocationType = 3;
                this.fLocationFound = true;
                return false;
            }
            fragments = node.fragments();
            Iterator iter = fragments.iterator();
            while (iter.hasNext()) {
                ((VariableDeclarationFragment)iter.next()).accept((ASTVisitor)this);
            }
        }
        return false;
    }

    public boolean visit(ForStatement node) {
        return this.visit((ASTNode)node, node.initializers().isEmpty() && node.getExpression() == null && node.updaters().isEmpty());
    }

    public boolean visit(IfStatement node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(ImportDeclaration node) {
        return false;
    }

    public boolean visit(InfixExpression node) {
        if (this.visit((ASTNode)node, false)) {
            Expression rightOperand;
            Expression leftOperand = node.getLeftOperand();
            Expression firstConstant = null;
            if (this.visit((ASTNode)leftOperand, false)) {
                leftOperand.accept((ASTVisitor)this);
                return false;
            }
            if (this.isReplacedByConstantValue(leftOperand)) {
                firstConstant = leftOperand;
            }
            if (this.visit((ASTNode)(rightOperand = node.getRightOperand()), false)) {
                if (firstConstant == null || !this.isReplacedByConstantValue(rightOperand)) {
                    rightOperand.accept((ASTVisitor)this);
                    return false;
                }
            } else {
                if (this.isReplacedByConstantValue(rightOperand)) {
                    if (firstConstant == null) {
                        firstConstant = rightOperand;
                    }
                } else {
                    firstConstant = null;
                }
                List extendedOperands = node.extendedOperands();
                Iterator iter = extendedOperands.iterator();
                while (iter.hasNext()) {
                    Expression operand = (Expression)iter.next();
                    if (this.visit((ASTNode)operand, false)) {
                        if (firstConstant != null && this.isReplacedByConstantValue(operand)) break;
                        operand.accept((ASTVisitor)this);
                        return false;
                    }
                    if (this.isReplacedByConstantValue(operand)) {
                        if (firstConstant != null) continue;
                        firstConstant = operand;
                        continue;
                    }
                    firstConstant = null;
                }
            }
            if (firstConstant != null) {
                this.fLineLocation = this.lineNumber(firstConstant.getStartPosition());
                this.fLocationFound = true;
                this.fLocationType = 1;
                this.fTypeName = this.computeTypeName((ASTNode)firstConstant);
            }
        }
        return false;
    }

    public boolean visit(Initializer node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(InstanceofExpression node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(Javadoc node) {
        return false;
    }

    public boolean visit(LabeledStatement node) {
        this.nestLabel(node.getLabel().getFullyQualifiedName());
        return this.visit((ASTNode)node, false);
    }

    public void endVisit(LabeledStatement node) {
        this.popLabel();
        super.endVisit(node);
    }

    private String getLabel() {
        if (this.fLabels == null || this.fLabels.isEmpty()) {
            return null;
        }
        return (String)this.fLabels.get(this.fLabels.size() - 1);
    }

    private void nestLabel(String label) {
        if (this.fLabels == null) {
            this.fLabels = new ArrayList();
        }
        this.fLabels.add(label);
    }

    private void popLabel() {
        if (this.fLabels == null || this.fLabels.isEmpty()) {
            return;
        }
        this.fLabels.remove(this.fLabels.size() - 1);
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
        if (this.visit((ASTNode)node, false)) {
            int nameOffset;
            if (this.fBestMatch && this.lineNumber(nameOffset = node.getName().getStartPosition()) == this.fLineNumber) {
                this.fMemberOffset = nameOffset;
                this.fLocationType = 2;
                this.fLocationFound = true;
                return false;
            }
            Block body = node.getBody();
            if (body != null) {
                body.accept((ASTVisitor)this);
            }
        }
        return false;
    }

    public boolean visit(MethodInvocation node) {
        return this.visit((ASTNode)node, true);
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
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(NumberLiteral node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(PackageDeclaration node) {
        return false;
    }

    public boolean visit(ParameterizedType node) {
        return false;
    }

    public boolean visit(ParenthesizedExpression node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(PostfixExpression node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(PrefixExpression node) {
        if (this.visit((ASTNode)node, false)) {
            if (this.isReplacedByConstantValue(node)) {
                this.fLineLocation = this.lineNumber(node.getStartPosition());
                this.fLocationFound = true;
                this.fLocationType = 1;
                this.fTypeName = this.computeTypeName((ASTNode)node);
                return false;
            }
            return true;
        }
        return false;
    }

    public boolean visit(PrimitiveType node) {
        return false;
    }

    public boolean visit(QualifiedName node) {
        this.visit((ASTNode)node, true);
        return false;
    }

    public boolean visit(QualifiedType node) {
        return false;
    }

    public boolean visit(ReturnStatement node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(SimpleName node) {
        return this.visit((ASTNode)node, !node.getFullyQualifiedName().equals(this.getLabel()));
    }

    public boolean visit(SimpleType node) {
        return false;
    }

    public boolean visit(SingleMemberAnnotation node) {
        return false;
    }

    public boolean visit(SingleVariableDeclaration node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(StringLiteral node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(SuperConstructorInvocation node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(SuperFieldAccess node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(SuperMethodInvocation node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(SwitchCase node) {
        return false;
    }

    public boolean visit(SwitchStatement node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(SynchronizedStatement node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(TagElement node) {
        return false;
    }

    public boolean visit(TextElement node) {
        return false;
    }

    public boolean visit(ThisExpression node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(ThrowStatement node) {
        return this.visit((ASTNode)node, true);
    }

    public boolean visit(TryStatement node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(UnionType node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(TypeDeclaration node) {
        if (this.visit((ASTNode)node, false)) {
            List bodyDeclaration = node.bodyDeclarations();
            Iterator iter = bodyDeclaration.iterator();
            while (iter.hasNext()) {
                ((BodyDeclaration)iter.next()).accept((ASTVisitor)this);
            }
        }
        return false;
    }

    public boolean visit(TypeDeclarationStatement node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(TypeParameter node) {
        return false;
    }

    public boolean visit(TypeLiteral node) {
        return false;
    }

    public boolean visit(VariableDeclarationExpression node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(VariableDeclarationFragment node) {
        Expression initializer = node.getInitializer();
        if (this.visit((ASTNode)node, false)) {
            int startLine = this.lineNumber(node.getName().getStartPosition());
            if (initializer != null) {
                if (this.fLineNumber == startLine) {
                    this.fLineLocation = startLine;
                    this.fLocationFound = true;
                    this.fLocationType = 1;
                    this.fTypeName = this.computeTypeName((ASTNode)node);
                    return false;
                }
                initializer.accept((ASTVisitor)this);
            } else {
                int offset = node.getName().getStartPosition();
                if (this.lineNumber(offset) == this.fLineNumber) {
                    this.fMemberOffset = offset;
                    this.fLocationType = 3;
                    this.fLocationFound = true;
                    return false;
                }
            }
        }
        return false;
    }

    private int lineNumber(int offset) {
        int lineNumber = this.fCompilationUnit.getLineNumber(offset);
        return lineNumber < 1 ? 1 : lineNumber;
    }

    public boolean visit(WildcardType node) {
        return false;
    }

    public boolean visit(VariableDeclarationStatement node) {
        return this.visit((ASTNode)node, false);
    }

    public boolean visit(WhileStatement node) {
        return this.visit((ASTNode)node, false);
    }
}

