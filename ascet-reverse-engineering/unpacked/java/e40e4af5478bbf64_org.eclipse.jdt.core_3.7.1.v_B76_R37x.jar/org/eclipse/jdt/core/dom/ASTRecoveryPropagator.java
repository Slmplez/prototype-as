/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.List;
import java.util.Vector;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.DefaultASTVisitor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToIntArray;

class ASTRecoveryPropagator
extends DefaultASTVisitor {
    private static final int NOTHING = -1;
    HashtableOfObjectToIntArray endingTokens = new HashtableOfObjectToIntArray();
    private CategorizedProblem[] problems;
    private boolean[] usedOrIrrelevantProblems;
    private RecoveryScannerData data;
    private int blockDepth;
    private int lastEnd;
    private int[] insertedTokensKind;
    private int[] insertedTokensPosition;
    private boolean[] insertedTokensFlagged;
    private boolean[] removedTokensFlagged;
    private boolean[] replacedTokensFlagged;
    private Vector stack;
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

    ASTRecoveryPropagator(CategorizedProblem[] problems, RecoveryScannerData data) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnonymousClassDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz, new int[]{31});
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.ArrayAccess");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz2, new int[]{70});
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.jdt.core.dom.ArrayCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz3, new int[]{-1, 70});
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.jdt.core.dom.ArrayInitializer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz4, new int[]{31});
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("org.eclipse.jdt.core.dom.ArrayType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz5, new int[]{70});
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("org.eclipse.jdt.core.dom.AssertStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz6, new int[]{27});
        Class<?> clazz7 = class$6;
        if (clazz7 == null) {
            try {
                clazz7 = class$6 = Class.forName("org.eclipse.jdt.core.dom.Block");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz7, new int[]{31});
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("org.eclipse.jdt.core.dom.BooleanLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz8, new int[]{44, 46});
        Class<?> clazz9 = class$8;
        if (clazz9 == null) {
            try {
                clazz9 = class$8 = Class.forName("org.eclipse.jdt.core.dom.BreakStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz9, new int[]{27});
        Class<?> clazz10 = class$9;
        if (clazz10 == null) {
            try {
                clazz10 = class$9 = Class.forName("org.eclipse.jdt.core.dom.CharacterLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz10, new int[]{51});
        Class<?> clazz11 = class$10;
        if (clazz11 == null) {
            try {
                clazz11 = class$10 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz11, new int[]{31, 28});
        Class<?> clazz12 = class$11;
        if (clazz12 == null) {
            try {
                clazz12 = class$11 = Class.forName("org.eclipse.jdt.core.dom.ConstructorInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz12, new int[]{27});
        Class<?> clazz13 = class$12;
        if (clazz13 == null) {
            try {
                clazz13 = class$12 = Class.forName("org.eclipse.jdt.core.dom.ContinueStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz13, new int[]{27});
        Class<?> clazz14 = class$13;
        if (clazz14 == null) {
            try {
                clazz14 = class$13 = Class.forName("org.eclipse.jdt.core.dom.DoStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz14, new int[]{28});
        Class<?> clazz15 = class$14;
        if (clazz15 == null) {
            try {
                clazz15 = class$14 = Class.forName("org.eclipse.jdt.core.dom.EmptyStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz15, new int[]{27});
        Class<?> clazz16 = class$15;
        if (clazz16 == null) {
            try {
                clazz16 = class$15 = Class.forName("org.eclipse.jdt.core.dom.ExpressionStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz16, new int[]{27});
        Class<?> clazz17 = class$16;
        if (clazz17 == null) {
            try {
                clazz17 = class$16 = Class.forName("org.eclipse.jdt.core.dom.FieldDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz17, new int[]{27});
        Class<?> clazz18 = class$17;
        if (clazz18 == null) {
            try {
                clazz18 = class$17 = Class.forName("org.eclipse.jdt.core.dom.ImportDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz18, new int[]{27});
        Class<?> clazz19 = class$18;
        if (clazz19 == null) {
            try {
                clazz19 = class$18 = Class.forName("org.eclipse.jdt.core.dom.Initializer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz19, new int[]{31});
        Class<?> clazz20 = class$19;
        if (clazz20 == null) {
            try {
                clazz20 = class$19 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz20, new int[]{-1, 27});
        Class<?> clazz21 = class$20;
        if (clazz21 == null) {
            try {
                clazz21 = class$20 = Class.forName("org.eclipse.jdt.core.dom.MethodInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz21, new int[]{28});
        Class<?> clazz22 = class$21;
        if (clazz22 == null) {
            try {
                clazz22 = class$21 = Class.forName("org.eclipse.jdt.core.dom.NullLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz22, new int[]{45});
        Class<?> clazz23 = class$22;
        if (clazz23 == null) {
            try {
                clazz23 = class$22 = Class.forName("org.eclipse.jdt.core.dom.NumberLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz23, new int[]{47, 48, 49, 50});
        Class<?> clazz24 = class$23;
        if (clazz24 == null) {
            try {
                clazz24 = class$23 = Class.forName("org.eclipse.jdt.core.dom.PackageDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz24, new int[]{27});
        Class<?> clazz25 = class$24;
        if (clazz25 == null) {
            try {
                clazz25 = class$24 = Class.forName("org.eclipse.jdt.core.dom.ParenthesizedExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz25, new int[]{28});
        Class<?> clazz26 = class$25;
        if (clazz26 == null) {
            try {
                clazz26 = class$25 = Class.forName("org.eclipse.jdt.core.dom.PostfixExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz26, new int[]{8, 9});
        Class<?> clazz27 = class$26;
        if (clazz27 == null) {
            try {
                clazz27 = class$26 = Class.forName("org.eclipse.jdt.core.dom.PrimitiveType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz27, new int[]{33, 39, 34, 37, 38, 36, 32, 35, 40});
        Class<?> clazz28 = class$27;
        if (clazz28 == null) {
            try {
                clazz28 = class$27 = Class.forName("org.eclipse.jdt.core.dom.ReturnStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz28, new int[]{27});
        Class<?> clazz29 = class$28;
        if (clazz29 == null) {
            try {
                clazz29 = class$28 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz29, new int[]{26});
        Class<?> clazz30 = class$29;
        if (clazz30 == null) {
            try {
                clazz30 = class$29 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz30, new int[]{27});
        Class<?> clazz31 = class$30;
        if (clazz31 == null) {
            try {
                clazz31 = class$30 = Class.forName("org.eclipse.jdt.core.dom.StringLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz31, new int[]{52});
        Class<?> clazz32 = class$31;
        if (clazz32 == null) {
            try {
                clazz32 = class$31 = Class.forName("org.eclipse.jdt.core.dom.SuperConstructorInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz32, new int[]{27});
        Class<?> clazz33 = class$32;
        if (clazz33 == null) {
            try {
                clazz33 = class$32 = Class.forName("org.eclipse.jdt.core.dom.SuperMethodInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz33, new int[]{28});
        Class<?> clazz34 = class$33;
        if (clazz34 == null) {
            try {
                clazz34 = class$33 = Class.forName("org.eclipse.jdt.core.dom.SwitchCase");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz34, new int[]{65});
        Class<?> clazz35 = class$34;
        if (clazz35 == null) {
            try {
                clazz35 = class$34 = Class.forName("org.eclipse.jdt.core.dom.SwitchStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz35, new int[]{31});
        Class<?> clazz36 = class$35;
        if (clazz36 == null) {
            try {
                clazz36 = class$35 = Class.forName("org.eclipse.jdt.core.dom.SynchronizedStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz36, new int[]{31});
        Class<?> clazz37 = class$36;
        if (clazz37 == null) {
            try {
                clazz37 = class$36 = Class.forName("org.eclipse.jdt.core.dom.ThisExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz37, new int[]{42});
        Class<?> clazz38 = class$37;
        if (clazz38 == null) {
            try {
                clazz38 = class$37 = Class.forName("org.eclipse.jdt.core.dom.ThrowStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz38, new int[]{27});
        Class<?> clazz39 = class$38;
        if (clazz39 == null) {
            try {
                clazz39 = class$38 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz39, new int[]{31});
        Class<?> clazz40 = class$39;
        if (clazz40 == null) {
            try {
                clazz40 = class$39 = Class.forName("org.eclipse.jdt.core.dom.TypeLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz40, new int[]{72});
        Class<?> clazz41 = class$40;
        if (clazz41 == null) {
            try {
                clazz41 = class$40 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.endingTokens.put(clazz41, new int[]{27});
        this.blockDepth = 0;
        this.stack = new Vector();
        this.problems = problems;
        this.usedOrIrrelevantProblems = new boolean[problems.length];
        this.data = data;
        if (this.data != null) {
            int length = 0;
            int i = 0;
            while (i < data.insertedTokensPtr + 1) {
                length += data.insertedTokens[i].length;
                ++i;
            }
            this.insertedTokensKind = new int[length];
            this.insertedTokensPosition = new int[length];
            this.insertedTokensFlagged = new boolean[length];
            int tokenCount = 0;
            int i2 = 0;
            while (i2 < data.insertedTokensPtr + 1) {
                int j = 0;
                while (j < data.insertedTokens[i2].length) {
                    this.insertedTokensKind[tokenCount] = data.insertedTokens[i2][j];
                    this.insertedTokensPosition[tokenCount] = data.insertedTokensPosition[i2];
                    ++tokenCount;
                    ++j;
                }
                ++i2;
            }
            if (data.removedTokensPtr != -1) {
                this.removedTokensFlagged = new boolean[data.removedTokensPtr + 1];
            }
            if (data.replacedTokensPtr != -1) {
                this.replacedTokensFlagged = new boolean[data.replacedTokensPtr + 1];
            }
        }
    }

    public void endVisit(Block node) {
        --this.blockDepth;
        if (this.blockDepth <= 0) {
            this.flagNodeWithInsertedTokens();
        }
        super.endVisit(node);
    }

    public boolean visit(Block node) {
        boolean visitChildren = super.visit(node);
        ++this.blockDepth;
        return visitChildren;
    }

    protected boolean visitNode(ASTNode node) {
        if (this.blockDepth > 0) {
            int i;
            int start = node.getStartPosition();
            int end = start + node.getLength() - 1;
            if (this.insertedTokensFlagged != null) {
                i = 0;
                while (i < this.insertedTokensFlagged.length) {
                    if (this.insertedTokensPosition[i] >= start && this.insertedTokensPosition[i] <= end) {
                        return true;
                    }
                    ++i;
                }
            }
            if (this.removedTokensFlagged != null) {
                i = 0;
                while (i <= this.data.removedTokensPtr) {
                    if (this.data.removedTokensStart[i] >= start && this.data.removedTokensEnd[i] <= end) {
                        return true;
                    }
                    ++i;
                }
            }
            if (this.replacedTokensFlagged != null) {
                i = 0;
                while (i <= this.data.replacedTokensPtr) {
                    if (this.data.replacedTokensStart[i] >= start && this.data.replacedTokensEnd[i] <= end) {
                        return true;
                    }
                    ++i;
                }
            }
            return false;
        }
        return true;
    }

    protected void endVisitNode(ASTNode node) {
        int end;
        block12: {
            int i;
            int start;
            block11: {
                start = node.getStartPosition();
                end = start + node.getLength() - 1;
                if (this.blockDepth >= 1) break block11;
                switch (node.getNodeType()) {
                    case 8: 
                    case 15: 
                    case 23: 
                    case 26: 
                    case 28: 
                    case 31: 
                    case 35: 
                    case 55: 
                    case 71: 
                    case 77: 
                    case 78: 
                    case 79: 
                    case 81: {
                        if (!this.markIncludedProblems(start, end)) break block12;
                        node.setFlags(node.getFlags() | 8);
                    }
                }
                break block12;
            }
            this.markIncludedProblems(start, end);
            if (this.insertedTokensFlagged != null) {
                if (this.lastEnd != end) {
                    this.flagNodeWithInsertedTokens();
                }
                this.stack.add(node);
            }
            if (this.removedTokensFlagged != null) {
                i = 0;
                while (i <= this.data.removedTokensPtr) {
                    if (!this.removedTokensFlagged[i] && this.data.removedTokensStart[i] >= start && this.data.removedTokensEnd[i] <= end) {
                        node.setFlags(node.getFlags() | 8);
                        this.removedTokensFlagged[i] = true;
                    }
                    ++i;
                }
            }
            if (this.replacedTokensFlagged != null) {
                i = 0;
                while (i <= this.data.replacedTokensPtr) {
                    if (!this.replacedTokensFlagged[i] && this.data.replacedTokensStart[i] >= start && this.data.replacedTokensEnd[i] <= end) {
                        node.setFlags(node.getFlags() | 8);
                        this.replacedTokensFlagged[i] = true;
                    }
                    ++i;
                }
            }
        }
        this.lastEnd = end;
    }

    private void flagNodeWithInsertedTokens() {
        if (this.insertedTokensKind != null && this.insertedTokensKind.length > 0) {
            int s = this.stack.size();
            int i = s - 1;
            while (i > -1) {
                this.flagNodesWithInsertedTokensAtEnd((ASTNode)this.stack.get(i));
                --i;
            }
            i = 0;
            while (i < s) {
                this.flagNodesWithInsertedTokensInside((ASTNode)this.stack.get(i));
                ++i;
            }
            this.stack = new Vector();
        }
    }

    private boolean flagNodesWithInsertedTokensAtEnd(ASTNode node) {
        int[] expectedEndingToken = this.endingTokens.get(node.getClass());
        if (expectedEndingToken != null) {
            int start = node.getStartPosition();
            int end = start + node.getLength() - 1;
            boolean flagParent = false;
            int i = this.insertedTokensKind.length - 1;
            block0: while (i > -1) {
                if (!this.insertedTokensFlagged[i] && this.insertedTokensPosition[i] == end) {
                    this.insertedTokensFlagged[i] = true;
                    int j = 0;
                    while (j < expectedEndingToken.length) {
                        if (expectedEndingToken[j] == this.insertedTokensKind[i]) {
                            node.setFlags(node.getFlags() | 8);
                            break block0;
                        }
                        ++j;
                    }
                    flagParent = true;
                }
                --i;
            }
            if (flagParent) {
                ASTNode parent = node.getParent();
                while (parent != null) {
                    parent.setFlags(node.getFlags() | 8);
                    parent = parent.getStartPosition() + parent.getLength() - 1 != end ? null : parent.getParent();
                }
            }
        }
        return true;
    }

    private boolean flagNodesWithInsertedTokensInside(ASTNode node) {
        int start = node.getStartPosition();
        int end = start + node.getLength() - 1;
        int i = 0;
        while (i < this.insertedTokensKind.length) {
            if (!this.insertedTokensFlagged[i] && start <= this.insertedTokensPosition[i] && this.insertedTokensPosition[i] < end) {
                node.setFlags(node.getFlags() | 8);
                this.insertedTokensFlagged[i] = true;
            }
            ++i;
        }
        return true;
    }

    private boolean markIncludedProblems(int start, int end) {
        boolean foundProblems = false;
        int i = 0;
        int max = this.problems.length;
        while (i < max) {
            block6: {
                CategorizedProblem problem = this.problems[i];
                if (!this.usedOrIrrelevantProblems[i]) {
                    switch (problem.getID()) {
                        case 0x600000CC: 
                        case 1610612941: 
                        case 1610612945: 
                        case 1610612946: 
                        case 0x600000E6: 
                        case 1610612967: 
                        case 1610612968: 
                        case 1610612969: 
                        case 1610612970: 
                        case 1610612971: 
                        case 1610612972: 
                        case 1610612973: 
                        case 0x600000EE: 
                        case 1610612975: 
                        case 0x600000F0: 
                        case 1610612977: 
                        case 1610612978: 
                        case 1610612986: 
                        case 1610612987: 
                        case 1610612988: 
                        case 1610612989: 
                        case 1610612990: 
                        case 0x600000FF: 
                        case 0x60000100: 
                        case 0x60000101: 
                        case 1610612994: 
                        case 1610612995: 
                        case 1610612996: 
                        case 0x60000106: {
                            break;
                        }
                        default: {
                            this.usedOrIrrelevantProblems[i] = true;
                            break block6;
                        }
                    }
                    int problemStart = problem.getSourceStart();
                    int problemEnd = problem.getSourceEnd();
                    if (start <= problemStart && problemStart <= end || start <= problemEnd && problemEnd <= end) {
                        this.usedOrIrrelevantProblems[i] = true;
                        foundProblems = true;
                    }
                }
            }
            ++i;
        }
        return foundProblems;
    }

    public void endVisit(ExpressionStatement node) {
        SimpleName simpleName;
        Assignment assignment;
        Expression rightHandSide;
        this.endVisitNode(node);
        if ((node.getFlags() & 8) == 0) {
            return;
        }
        Expression expression = node.getExpression();
        if (expression.getNodeType() == 7 && (rightHandSide = (assignment = (Assignment)expression).getRightHandSide()).getNodeType() == 42 && CharOperation.equals(RecoveryScanner.FAKE_IDENTIFIER, (simpleName = (SimpleName)rightHandSide).getIdentifier().toCharArray())) {
            Expression expression2 = assignment.getLeftHandSide();
            expression2.setParent(null, null);
            expression2.setFlags(expression2.getFlags() | 8);
            node.setExpression(expression2);
        }
    }

    public void endVisit(ForStatement node) {
        Expression expression;
        this.endVisitNode(node);
        List initializers = node.initializers();
        if (initializers.size() == 1 && (expression = (Expression)initializers.get(0)).getNodeType() == 58) {
            VariableDeclarationExpression variableDeclarationExpression = (VariableDeclarationExpression)expression;
            List fragments = variableDeclarationExpression.fragments();
            int i = 0;
            int max = fragments.size();
            while (i < max) {
                VariableDeclarationFragment fragment = (VariableDeclarationFragment)fragments.get(i);
                SimpleName simpleName = fragment.getName();
                if (CharOperation.equals(RecoveryScanner.FAKE_IDENTIFIER, simpleName.getIdentifier().toCharArray())) {
                    fragments.remove(fragment);
                    variableDeclarationExpression.setFlags(variableDeclarationExpression.getFlags() | 8);
                }
                ++i;
            }
        }
    }

    public void endVisit(VariableDeclarationStatement node) {
        this.endVisitNode(node);
        List fragments = node.fragments();
        int i = 0;
        int max = fragments.size();
        while (i < max) {
            SimpleName simpleName;
            VariableDeclarationFragment fragment = (VariableDeclarationFragment)fragments.get(i);
            Expression expression = fragment.getInitializer();
            if (expression != null && (expression.getFlags() & 8) != 0 && expression.getNodeType() == 42 && CharOperation.equals(RecoveryScanner.FAKE_IDENTIFIER, (simpleName = (SimpleName)expression).getIdentifier().toCharArray())) {
                fragment.setInitializer(null);
                fragment.setFlags(fragment.getFlags() | 8);
            }
            ++i;
        }
    }

    public void endVisit(NormalAnnotation node) {
        List values;
        int size;
        this.endVisitNode(node);
        if (this.blockDepth < 1 && (size = (values = node.values()).size()) > 0) {
            int lastMemberValuePairEnd;
            MemberValuePair lastMemberValuePair = (MemberValuePair)values.get(size - 1);
            int annotationEnd = node.getStartPosition() + node.getLength();
            if (annotationEnd == (lastMemberValuePairEnd = lastMemberValuePair.getStartPosition() + lastMemberValuePair.getLength())) {
                node.setFlags(node.getFlags() | 8);
            }
        }
    }

    public void endVisit(SingleMemberAnnotation node) {
        this.endVisitNode(node);
        if (this.blockDepth < 1) {
            int valueEnd;
            Expression value = node.getValue();
            int annotationEnd = node.getStartPosition() + node.getLength();
            if (annotationEnd == (valueEnd = value.getStartPosition() + value.getLength())) {
                node.setFlags(node.getFlags() | 8);
            }
        }
    }
}

