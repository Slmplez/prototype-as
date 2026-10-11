/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.codeassist.complete.CompletionScanner;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;
import org.eclipse.jdt.internal.compiler.util.Util;

public class UnresolvedReferenceNameFinder
extends ASTVisitor {
    private static final int MAX_LINE_COUNT = 100;
    private static final int FAKE_BLOCKS_COUNT = 20;
    private UnresolvedReferenceNameRequestor requestor;
    private CompletionEngine completionEngine;
    private CompletionParser parser;
    private CompletionScanner completionScanner;
    private int parentsPtr;
    private ASTNode[] parents;
    private int potentialVariableNamesPtr;
    private char[][] potentialVariableNames;
    private int[] potentialVariableNameStarts;
    private SimpleSetOfCharArray acceptedNames = new SimpleSetOfCharArray();

    public UnresolvedReferenceNameFinder(CompletionEngine completionEngine) {
        this.completionEngine = completionEngine;
        this.parser = completionEngine.parser;
        this.completionScanner = (CompletionScanner)this.parser.scanner;
    }

    private void acceptName(char[] name) {
        if (name == null) {
            return;
        }
        if (!(CharOperation.prefixEquals(this.completionEngine.completionToken, name, false) || this.completionEngine.options.camelCaseMatch && CharOperation.camelCaseMatch(this.completionEngine.completionToken, name))) {
            return;
        }
        if (this.acceptedNames.includes(name)) {
            return;
        }
        this.acceptedNames.add(name);
        this.requestor.acceptName(name);
    }

    public void find(char[] startWith, Initializer initializer, ClassScope scope, int from, char[][] discouragedNames, UnresolvedReferenceNameRequestor nameRequestor) {
        MethodDeclaration fakeMethod = this.findAfter(startWith, scope, from, initializer.bodyEnd, 100, false, discouragedNames, nameRequestor);
        if (fakeMethod != null) {
            fakeMethod.traverse((ASTVisitor)this, scope);
        }
    }

    public void find(char[] startWith, AbstractMethodDeclaration methodDeclaration, int from, char[][] discouragedNames, UnresolvedReferenceNameRequestor nameRequestor) {
        MethodDeclaration fakeMethod = this.findAfter(startWith, methodDeclaration.scope, from, methodDeclaration.bodyEnd, 100, false, discouragedNames, nameRequestor);
        if (fakeMethod != null) {
            fakeMethod.traverse((ASTVisitor)this, methodDeclaration.scope.classScope());
        }
    }

    public void findAfter(char[] startWith, Scope scope, ClassScope classScope, int from, int to, char[][] discouragedNames, UnresolvedReferenceNameRequestor nameRequestor) {
        MethodDeclaration fakeMethod = this.findAfter(startWith, scope, from, to, 50, true, discouragedNames, nameRequestor);
        if (fakeMethod != null) {
            fakeMethod.traverse((ASTVisitor)this, classScope);
        }
    }

    private MethodDeclaration findAfter(char[] startWith, Scope s, int from, int to, int maxLineCount, boolean outsideEnclosingBlock, char[][] discouragedNames, UnresolvedReferenceNameRequestor nameRequestor) {
        int maxEnd;
        this.requestor = nameRequestor;
        this.completionScanner.cursorLocation = 0;
        if (!outsideEnclosingBlock) {
            this.completionScanner.resetTo(from + 1, to);
            this.completionScanner.jumpOverBlock();
            to = this.completionScanner.startPosition - 1;
        }
        int end = (maxEnd = this.completionScanner.getLineEnd(Util.getLineNumber(from, this.completionScanner.lineEnds, 0, this.completionScanner.linePtr) + maxLineCount)) < 0 ? to : (maxEnd < to ? maxEnd : to);
        this.parser.startRecordingIdentifiers(from, end);
        MethodDeclaration fakeMethod = this.parser.parseSomeStatements(from, end, outsideEnclosingBlock ? 20 : 0, s.compilationUnitScope().referenceContext);
        this.parser.stopRecordingIdentifiers();
        if (!this.initPotentialNamesTables(discouragedNames)) {
            return null;
        }
        this.parentsPtr = -1;
        this.parents = new ASTNode[10];
        return fakeMethod;
    }

    public void findBefore(char[] startWith, Scope scope, ClassScope classScope, int from, int recordTo, int parseTo, char[][] discouragedNames, UnresolvedReferenceNameRequestor nameRequestor) {
        MethodDeclaration fakeMethod = this.findBefore(startWith, scope, from, recordTo, parseTo, 50, discouragedNames, nameRequestor);
        if (fakeMethod != null) {
            fakeMethod.traverse((ASTVisitor)this, classScope);
        }
    }

    private MethodDeclaration findBefore(char[] startWith, Scope s, int from, int recordTo, int parseTo, int maxLineCount, char[][] discouragedNames, UnresolvedReferenceNameRequestor nameRequestor) {
        int fakeBlocksCount;
        int start;
        this.requestor = nameRequestor;
        this.completionScanner.cursorLocation = 0;
        int minStart = this.completionScanner.getLineStart(Util.getLineNumber(recordTo, this.completionScanner.lineEnds, 0, this.completionScanner.linePtr) - maxLineCount);
        if (minStart <= from) {
            start = from;
            fakeBlocksCount = 0;
        } else {
            start = minStart;
            fakeBlocksCount = 20;
        }
        this.parser.startRecordingIdentifiers(start, recordTo);
        MethodDeclaration fakeMethod = this.parser.parseSomeStatements(start, parseTo, fakeBlocksCount, s.compilationUnitScope().referenceContext);
        this.parser.stopRecordingIdentifiers();
        if (!this.initPotentialNamesTables(discouragedNames)) {
            return null;
        }
        this.parentsPtr = -1;
        this.parents = new ASTNode[10];
        return fakeMethod;
    }

    private boolean initPotentialNamesTables(char[][] discouragedNames) {
        char[][] pvns = this.parser.potentialVariableNames;
        int[] pvnss = this.parser.potentialVariableNameStarts;
        int pvnsPtr = this.parser.potentialVariableNamesPtr;
        if (pvnsPtr < 0) {
            return false;
        }
        int discouragedNamesCount = discouragedNames == null ? 0 : discouragedNames.length;
        int j = -1;
        int i = 0;
        while (i <= pvnsPtr) {
            block6: {
                char[] temp = pvns[i];
                if (temp != null) {
                    int k = 0;
                    while (k < discouragedNamesCount) {
                        if (!CharOperation.equals(temp, discouragedNames[k], false)) {
                            ++k;
                            continue;
                        }
                        break block6;
                    }
                    pvns[i] = null;
                    pvns[++j] = temp;
                    pvnss[j] = pvnss[i];
                }
            }
            ++i;
        }
        pvnsPtr = j;
        if (pvnsPtr < 0) {
            return false;
        }
        this.potentialVariableNames = pvns;
        this.potentialVariableNameStarts = pvnss;
        this.potentialVariableNamesPtr = pvnsPtr;
        return true;
    }

    private void popParent() {
        --this.parentsPtr;
    }

    private void pushParent(ASTNode parent) {
        int length = this.parents.length;
        if (this.parentsPtr >= length - 1) {
            this.parents = new ASTNode[length * 2];
            System.arraycopy(this.parents, 0, this.parents, 0, length);
        }
        this.parents[++this.parentsPtr] = parent;
    }

    private ASTNode getEnclosingDeclaration() {
        int i = this.parentsPtr;
        while (i > -1) {
            ASTNode parent = this.parents[i];
            if (parent instanceof AbstractMethodDeclaration) {
                return parent;
            }
            if (parent instanceof Initializer) {
                return parent;
            }
            if (parent instanceof FieldDeclaration) {
                return parent;
            }
            if (parent instanceof TypeDeclaration) {
                return parent;
            }
            --i;
        }
        return null;
    }

    public boolean visit(Block block, BlockScope blockScope) {
        ASTNode enclosingDeclaration = this.getEnclosingDeclaration();
        this.removeLocals(block.statements, enclosingDeclaration.sourceStart, block.sourceEnd);
        this.pushParent(block);
        return true;
    }

    public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
        if ((constructorDeclaration.bits & 0x80) == 0 && !constructorDeclaration.isClinit()) {
            this.removeLocals(constructorDeclaration.arguments, constructorDeclaration.declarationSourceStart, constructorDeclaration.declarationSourceEnd);
            this.removeLocals(constructorDeclaration.statements, constructorDeclaration.declarationSourceStart, constructorDeclaration.declarationSourceEnd);
        }
        this.pushParent(constructorDeclaration);
        return true;
    }

    public boolean visit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
        this.pushParent(fieldDeclaration);
        return true;
    }

    public boolean visit(Initializer initializer, MethodScope methodScope) {
        this.pushParent(initializer);
        return true;
    }

    public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
        this.removeLocals(methodDeclaration.arguments, methodDeclaration.declarationSourceStart, methodDeclaration.declarationSourceEnd);
        this.removeLocals(methodDeclaration.statements, methodDeclaration.declarationSourceStart, methodDeclaration.declarationSourceEnd);
        this.pushParent(methodDeclaration);
        return true;
    }

    public boolean visit(TypeDeclaration localTypeDeclaration, BlockScope blockScope) {
        this.removeFields(localTypeDeclaration);
        this.pushParent(localTypeDeclaration);
        return true;
    }

    public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope classScope) {
        this.removeFields(memberTypeDeclaration);
        this.pushParent(memberTypeDeclaration);
        return true;
    }

    public void endVisit(Block block, BlockScope blockScope) {
        this.popParent();
    }

    public void endVisit(Argument argument, BlockScope blockScope) {
        this.endVisitRemoved(argument.declarationSourceStart, argument.sourceEnd);
    }

    public void endVisit(Argument argument, ClassScope classScope) {
        this.endVisitRemoved(argument.declarationSourceStart, argument.sourceEnd);
    }

    public void endVisit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
        if ((constructorDeclaration.bits & 0x80) == 0 && !constructorDeclaration.isClinit()) {
            this.endVisitPreserved(constructorDeclaration.bodyStart, constructorDeclaration.bodyEnd);
        }
        this.popParent();
    }

    public void endVisit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
        this.endVisitRemoved(fieldDeclaration.declarationSourceStart, fieldDeclaration.sourceEnd);
        this.endVisitPreserved(fieldDeclaration.sourceEnd, fieldDeclaration.declarationEnd);
        this.popParent();
    }

    public void endVisit(Initializer initializer, MethodScope methodScope) {
        this.endVisitPreserved(initializer.bodyStart, initializer.bodyEnd);
        this.popParent();
    }

    public void endVisit(LocalDeclaration localDeclaration, BlockScope blockScope) {
        this.endVisitRemoved(localDeclaration.declarationSourceStart, localDeclaration.sourceEnd);
    }

    public void endVisit(MethodDeclaration methodDeclaration, ClassScope classScope) {
        this.endVisitPreserved(methodDeclaration.bodyStart, methodDeclaration.bodyEnd);
        this.popParent();
    }

    public void endVisit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
        this.endVisitRemoved(typeDeclaration.sourceStart, typeDeclaration.declarationSourceEnd);
        this.popParent();
    }

    public void endVisit(TypeDeclaration typeDeclaration, ClassScope classScope) {
        this.endVisitRemoved(typeDeclaration.sourceStart, typeDeclaration.declarationSourceEnd);
        this.popParent();
    }

    private int indexOfFisrtNameAfter(int position) {
        int midPosition;
        int mid;
        int left = 0;
        int right = this.potentialVariableNamesPtr;
        while (true) {
            if (right < left) {
                return -1;
            }
            mid = left + (right - left) / 2;
            midPosition = this.potentialVariableNameStarts[mid];
            if (midPosition < 0) {
                int nextMid = this.indexOfNextName(mid);
                if (nextMid < 0 || right < nextMid) {
                    right = mid - 1;
                    continue;
                }
                mid = nextMid;
                midPosition = this.potentialVariableNameStarts[nextMid];
                if (mid == right) {
                    int leftPosition = this.potentialVariableNameStarts[left];
                    if (leftPosition < 0 || leftPosition < position) {
                        int nextLeft = this.indexOfNextName(left);
                        if (nextLeft < 0) {
                            return -1;
                        }
                        left = nextLeft;
                        continue;
                    }
                    return left;
                }
            }
            if (left == right) break;
            if (midPosition < position) {
                left = mid + 1;
                continue;
            }
            right = mid;
        }
        if (midPosition < position) {
            return -1;
        }
        return mid;
    }

    private int indexOfNextName(int index) {
        int nextIndex = index + 1;
        while (nextIndex <= this.potentialVariableNamesPtr && this.potentialVariableNames[nextIndex] == null) {
            int jumpIndex = -this.potentialVariableNameStarts[nextIndex];
            if (jumpIndex > 0) {
                nextIndex = jumpIndex;
                continue;
            }
            ++nextIndex;
        }
        if (this.potentialVariableNamesPtr < nextIndex) {
            if (index < this.potentialVariableNamesPtr) {
                this.potentialVariableNamesPtr = index;
            }
            return -1;
        }
        if (index + 1 < nextIndex) {
            this.potentialVariableNameStarts[index + 1] = -nextIndex;
        }
        return nextIndex;
    }

    private void removeNameAt(int index) {
        this.potentialVariableNames[index] = null;
        int nextIndex = this.indexOfNextName(index);
        if (nextIndex != -1) {
            this.potentialVariableNameStarts[index] = -nextIndex;
        } else {
            this.potentialVariableNamesPtr = index - 1;
        }
    }

    private void endVisitPreserved(int start, int end) {
        int i = this.indexOfFisrtNameAfter(start);
        while (i != -1) {
            int nameStart = this.potentialVariableNameStarts[i];
            if (start < nameStart && nameStart < end) {
                this.acceptName(this.potentialVariableNames[i]);
                this.removeNameAt(i);
            }
            if (end < nameStart) break;
            i = this.indexOfNextName(i);
        }
    }

    private void endVisitRemoved(int start, int end) {
        int i = this.indexOfFisrtNameAfter(start);
        while (i != -1) {
            int nameStart = this.potentialVariableNameStarts[i];
            if (start < nameStart && nameStart < end) {
                this.removeNameAt(i);
            }
            if (end < nameStart) break;
            i = this.indexOfNextName(i);
        }
    }

    private void removeLocals(Statement[] statements, int start, int end) {
        if (statements != null) {
            int i = 0;
            while (i < statements.length) {
                if (statements[i] instanceof LocalDeclaration) {
                    LocalDeclaration localDeclaration = (LocalDeclaration)statements[i];
                    int j = this.indexOfFisrtNameAfter(start);
                    while (j != -1) {
                        int nameStart = this.potentialVariableNameStarts[j];
                        if (start <= nameStart && nameStart <= end && CharOperation.equals(this.potentialVariableNames[j], localDeclaration.name, false)) {
                            this.removeNameAt(j);
                        }
                        if (end < nameStart) break;
                        j = this.indexOfNextName(j);
                    }
                }
                ++i;
            }
        }
    }

    private void removeFields(TypeDeclaration typeDeclaration) {
        int start = typeDeclaration.declarationSourceStart;
        int end = typeDeclaration.declarationSourceEnd;
        FieldDeclaration[] fieldDeclarations = typeDeclaration.fields;
        if (fieldDeclarations != null) {
            int i = 0;
            while (i < fieldDeclarations.length) {
                int j = this.indexOfFisrtNameAfter(start);
                while (j != -1) {
                    int nameStart = this.potentialVariableNameStarts[j];
                    if (start <= nameStart && nameStart <= end && CharOperation.equals(this.potentialVariableNames[j], fieldDeclarations[i].name, false)) {
                        this.removeNameAt(j);
                    }
                    if (end < nameStart) break;
                    j = this.indexOfNextName(j);
                }
                ++i;
            }
        }
    }

    public static interface UnresolvedReferenceNameRequestor {
        public void acceptName(char[] var1);
    }
}

