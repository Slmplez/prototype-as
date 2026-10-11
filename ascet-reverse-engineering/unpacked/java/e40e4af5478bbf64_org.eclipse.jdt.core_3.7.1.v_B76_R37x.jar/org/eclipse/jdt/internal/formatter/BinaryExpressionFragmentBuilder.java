/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import java.util.ArrayList;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CharLiteral;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.CombinedBinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.DoubleLiteral;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ExtendedStringLiteral;
import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.FloatLiteral;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.LongLiteral;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.OR_OR_Expression;
import org.eclipse.jdt.internal.compiler.ast.PostfixExpression;
import org.eclipse.jdt.internal.compiler.ast.PrefixExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedThisReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.ast.StringLiteralConcatenation;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;

class BinaryExpressionFragmentBuilder
extends ASTVisitor {
    ArrayList fragmentsList = new ArrayList();
    ArrayList operatorsList = new ArrayList();
    private int realFragmentsSize = 0;

    BinaryExpressionFragmentBuilder() {
    }

    private final void addRealFragment(ASTNode node) {
        this.fragmentsList.add(node);
        ++this.realFragmentsSize;
    }

    private final void addSmallFragment(ASTNode node) {
        this.fragmentsList.add(node);
    }

    private boolean buildFragments(Expression expression) {
        if ((expression.bits & 0x1FE00000) >> 21 != 0) {
            this.addRealFragment(expression);
            return false;
        }
        return true;
    }

    public ASTNode[] fragments() {
        ASTNode[] fragments = new ASTNode[this.fragmentsList.size()];
        this.fragmentsList.toArray(fragments);
        return fragments;
    }

    public int[] operators() {
        int length = this.operatorsList.size();
        int[] tab = new int[length];
        int i = 0;
        while (i < length) {
            tab[i] = (Integer)this.operatorsList.get(i);
            ++i;
        }
        return tab;
    }

    public int realFragmentsSize() {
        return this.realFragmentsSize;
    }

    public boolean visit(AllocationExpression allocationExpression, BlockScope scope) {
        this.addRealFragment(allocationExpression);
        return false;
    }

    public boolean visit(AND_AND_Expression and_and_Expression, BlockScope scope) {
        if ((and_and_Expression.bits & 0x1FE00000) >> 21 != 0) {
            this.addRealFragment(and_and_Expression);
        } else {
            and_and_Expression.left.traverse((ASTVisitor)this, scope);
            this.operatorsList.add(new Integer(24));
            and_and_Expression.right.traverse((ASTVisitor)this, scope);
        }
        return false;
    }

    public boolean visit(ArrayAllocationExpression arrayAllocationExpression, BlockScope scope) {
        this.addRealFragment(arrayAllocationExpression);
        return false;
    }

    public boolean visit(ArrayInitializer arrayInitializer, BlockScope scope) {
        this.addRealFragment(arrayInitializer);
        return false;
    }

    public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, BlockScope scope) {
        this.addRealFragment(arrayQualifiedTypeReference);
        return false;
    }

    public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, ClassScope scope) {
        this.addRealFragment(arrayQualifiedTypeReference);
        return false;
    }

    public boolean visit(ArrayReference arrayReference, BlockScope scope) {
        this.addRealFragment(arrayReference);
        return false;
    }

    public boolean visit(ArrayTypeReference arrayTypeReference, BlockScope scope) {
        this.addRealFragment(arrayTypeReference);
        return false;
    }

    public boolean visit(ArrayTypeReference arrayTypeReference, ClassScope scope) {
        this.addRealFragment(arrayTypeReference);
        return false;
    }

    public boolean visit(Assignment assignment, BlockScope scope) {
        this.addRealFragment(assignment);
        return false;
    }

    public boolean visit(BinaryExpression binaryExpression, BlockScope scope) {
        int numberOfParens;
        if (binaryExpression instanceof CombinedBinaryExpression) {
            CombinedBinaryExpression expression = (CombinedBinaryExpression)binaryExpression;
            if (expression.referencesTable != null) {
                return this.visit(expression, scope);
            }
        }
        if ((numberOfParens = (binaryExpression.bits & 0x1FE00000) >> 21) > 0) {
            this.addRealFragment(binaryExpression);
        } else {
            switch ((binaryExpression.bits & 0xFC0) >> 6) {
                case 14: {
                    if (this.buildFragments(binaryExpression)) {
                        binaryExpression.left.traverse((ASTVisitor)this, scope);
                        this.operatorsList.add(new Integer(1));
                        binaryExpression.right.traverse((ASTVisitor)this, scope);
                    }
                    return false;
                }
                case 13: {
                    if (this.buildFragments(binaryExpression)) {
                        binaryExpression.left.traverse((ASTVisitor)this, scope);
                        this.operatorsList.add(new Integer(2));
                        binaryExpression.right.traverse((ASTVisitor)this, scope);
                    }
                    return false;
                }
                case 15: {
                    if (this.buildFragments(binaryExpression)) {
                        binaryExpression.left.traverse((ASTVisitor)this, scope);
                        this.operatorsList.add(new Integer(4));
                        binaryExpression.right.traverse((ASTVisitor)this, scope);
                    }
                    return false;
                }
                case 16: {
                    if (this.buildFragments(binaryExpression)) {
                        binaryExpression.left.traverse((ASTVisitor)this, scope);
                        this.operatorsList.add(new Integer(5));
                        binaryExpression.right.traverse((ASTVisitor)this, scope);
                    }
                    return false;
                }
                case 8: {
                    if (this.buildFragments(binaryExpression)) {
                        binaryExpression.left.traverse((ASTVisitor)this, scope);
                        this.operatorsList.add(new Integer(21));
                        binaryExpression.right.traverse((ASTVisitor)this, scope);
                    }
                    return false;
                }
                case 9: {
                    if (this.buildFragments(binaryExpression)) {
                        binaryExpression.left.traverse((ASTVisitor)this, scope);
                        this.operatorsList.add(new Integer(6));
                        binaryExpression.right.traverse((ASTVisitor)this, scope);
                    }
                    return false;
                }
                case 3: {
                    if (this.buildFragments(binaryExpression)) {
                        binaryExpression.left.traverse((ASTVisitor)this, scope);
                        this.operatorsList.add(new Integer(22));
                        binaryExpression.right.traverse((ASTVisitor)this, scope);
                    }
                    return false;
                }
                case 2: {
                    if (this.buildFragments(binaryExpression)) {
                        binaryExpression.left.traverse((ASTVisitor)this, scope);
                        this.operatorsList.add(new Integer(20));
                        binaryExpression.right.traverse((ASTVisitor)this, scope);
                    }
                    return false;
                }
            }
            this.addRealFragment(binaryExpression);
        }
        return false;
    }

    public boolean visit(CombinedBinaryExpression combinedBinaryExpression, BlockScope scope) {
        if (combinedBinaryExpression.referencesTable == null) {
            this.addRealFragment(combinedBinaryExpression.left);
            this.operatorsList.add(new Integer(1));
            this.addRealFragment(combinedBinaryExpression.right);
            return false;
        }
        BinaryExpression cursor = combinedBinaryExpression.referencesTable[0];
        if (cursor.left instanceof CombinedBinaryExpression) {
            this.visit((CombinedBinaryExpression)cursor.left, scope);
        } else {
            this.addRealFragment(cursor.left);
        }
        int i = 0;
        int end = combinedBinaryExpression.arity;
        while (i < end) {
            this.operatorsList.add(new Integer(1));
            this.addRealFragment(combinedBinaryExpression.referencesTable[i].right);
            ++i;
        }
        this.operatorsList.add(new Integer(1));
        this.addRealFragment(combinedBinaryExpression.right);
        return false;
    }

    public boolean visit(CastExpression castExpression, BlockScope scope) {
        this.addRealFragment(castExpression);
        return false;
    }

    public boolean visit(CharLiteral charLiteral, BlockScope scope) {
        this.addSmallFragment(charLiteral);
        return false;
    }

    public boolean visit(ClassLiteralAccess classLiteralAccess, BlockScope scope) {
        this.addRealFragment(classLiteralAccess);
        return false;
    }

    public boolean visit(CompoundAssignment compoundAssignment, BlockScope scope) {
        this.addRealFragment(compoundAssignment);
        return false;
    }

    public boolean visit(ConditionalExpression conditionalExpression, BlockScope scope) {
        this.addRealFragment(conditionalExpression);
        return false;
    }

    public boolean visit(DoubleLiteral doubleLiteral, BlockScope scope) {
        this.addSmallFragment(doubleLiteral);
        return false;
    }

    public boolean visit(EqualExpression equalExpression, BlockScope scope) {
        this.addRealFragment(equalExpression);
        return false;
    }

    public boolean visit(ExtendedStringLiteral extendedStringLiteral, BlockScope scope) {
        this.addRealFragment(extendedStringLiteral);
        return false;
    }

    public boolean visit(FalseLiteral falseLiteral, BlockScope scope) {
        this.addSmallFragment(falseLiteral);
        return false;
    }

    public boolean visit(FieldReference fieldReference, BlockScope scope) {
        this.addRealFragment(fieldReference);
        return false;
    }

    public boolean visit(FloatLiteral floatLiteral, BlockScope scope) {
        this.addSmallFragment(floatLiteral);
        return false;
    }

    public boolean visit(InstanceOfExpression instanceOfExpression, BlockScope scope) {
        this.addRealFragment(instanceOfExpression);
        return false;
    }

    public boolean visit(IntLiteral intLiteral, BlockScope scope) {
        this.addSmallFragment(intLiteral);
        return false;
    }

    public boolean visit(LongLiteral longLiteral, BlockScope scope) {
        this.addSmallFragment(longLiteral);
        return false;
    }

    public boolean visit(MessageSend messageSend, BlockScope scope) {
        this.addRealFragment(messageSend);
        return false;
    }

    public boolean visit(StringLiteralConcatenation stringLiteral, BlockScope scope) {
        if ((stringLiteral.bits & 0x1FE00000) >> 21 != 0) {
            this.addRealFragment(stringLiteral);
        } else {
            int i = 0;
            int max = stringLiteral.counter;
            while (i < max) {
                this.addRealFragment(stringLiteral.literals[i]);
                if (i < max - 1) {
                    this.operatorsList.add(new Integer(1));
                }
                ++i;
            }
        }
        return false;
    }

    public boolean visit(NullLiteral nullLiteral, BlockScope scope) {
        this.addRealFragment(nullLiteral);
        return false;
    }

    public boolean visit(OR_OR_Expression or_or_Expression, BlockScope scope) {
        if ((or_or_Expression.bits & 0x1FE00000) >> 21 != 0) {
            this.addRealFragment(or_or_Expression);
        } else {
            or_or_Expression.left.traverse((ASTVisitor)this, scope);
            this.operatorsList.add(new Integer(25));
            or_or_Expression.right.traverse((ASTVisitor)this, scope);
        }
        return false;
    }

    public boolean visit(PostfixExpression postfixExpression, BlockScope scope) {
        this.addRealFragment(postfixExpression);
        return false;
    }

    public boolean visit(PrefixExpression prefixExpression, BlockScope scope) {
        this.addRealFragment(prefixExpression);
        return false;
    }

    public boolean visit(QualifiedAllocationExpression qualifiedAllocationExpression, BlockScope scope) {
        this.addRealFragment(qualifiedAllocationExpression);
        return false;
    }

    public boolean visit(QualifiedNameReference qualifiedNameReference, BlockScope scope) {
        this.addRealFragment(qualifiedNameReference);
        return false;
    }

    public boolean visit(QualifiedSuperReference qualifiedSuperReference, BlockScope scope) {
        this.addRealFragment(qualifiedSuperReference);
        return false;
    }

    public boolean visit(QualifiedThisReference qualifiedThisReference, BlockScope scope) {
        this.addRealFragment(qualifiedThisReference);
        return false;
    }

    public boolean visit(SingleNameReference singleNameReference, BlockScope scope) {
        this.addRealFragment(singleNameReference);
        return false;
    }

    public boolean visit(StringLiteral stringLiteral, BlockScope scope) {
        this.addRealFragment(stringLiteral);
        return false;
    }

    public boolean visit(SuperReference superReference, BlockScope scope) {
        this.addRealFragment(superReference);
        return false;
    }

    public boolean visit(ThisReference thisReference, BlockScope scope) {
        this.addRealFragment(thisReference);
        return false;
    }

    public boolean visit(TrueLiteral trueLiteral, BlockScope scope) {
        this.addSmallFragment(trueLiteral);
        return false;
    }

    public boolean visit(UnaryExpression unaryExpression, BlockScope scope) {
        this.addRealFragment(unaryExpression);
        return false;
    }

    public int size() {
        return this.fragmentsList.size();
    }
}

