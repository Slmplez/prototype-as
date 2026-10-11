/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CaseLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.SwitchFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SwitchStatement
extends Statement {
    public Expression expression;
    public Statement[] statements;
    public BlockScope scope;
    public int explicitDeclarations;
    public BranchLabel breakLabel;
    public CaseStatement[] cases;
    public CaseStatement defaultCase;
    public int blockStart;
    public int caseCount;
    int[] constants;
    String[] stringConstants;
    public static final int CASE = 0;
    public static final int FALLTHROUGH = 1;
    public static final int ESCAPING = 2;
    private static final char[] SecretStringVariableName = " switchDispatchString".toCharArray();
    public SyntheticMethodBinding synthetic;
    int preSwitchInitStateIndex = -1;
    int mergedInitStateIndex = -1;
    CaseStatement[] duplicateCaseStatements = null;
    int duplicateCaseStatementsCounter = 0;
    private LocalVariableBinding dispatchStringCopy = null;

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        try {
            TypeBinding resolvedTypeBinding;
            flowInfo = this.expression.analyseCode(currentScope, flowContext, flowInfo);
            if ((this.expression.implicitConversion & 0x400) != 0 || this.expression.resolvedType != null && this.expression.resolvedType.id == 11) {
                this.expression.checkNPE(currentScope, flowContext, flowInfo);
            }
            this.breakLabel = new BranchLabel();
            SwitchFlowContext switchContext = new SwitchFlowContext(flowContext, this, this.breakLabel);
            FlowInfo caseInits = FlowInfo.DEAD_END;
            this.preSwitchInitStateIndex = currentScope.methodScope().recordInitializationStates(flowInfo);
            int caseIndex = 0;
            if (this.statements != null) {
                int initialComplaintLevel;
                int complaintLevel = initialComplaintLevel = (flowInfo.reachMode() & 3) != 0 ? 1 : 0;
                int fallThroughState = 0;
                int i = 0;
                int max = this.statements.length;
                while (i < max) {
                    Statement statement = this.statements[i];
                    if (caseIndex < this.caseCount && statement == this.cases[caseIndex]) {
                        this.scope.enclosingCase = this.cases[caseIndex];
                        ++caseIndex;
                        if (fallThroughState == 1 && (statement.bits & 0x20000000) == 0) {
                            this.scope.problemReporter().possibleFallThroughCase(this.scope.enclosingCase);
                        }
                        caseInits = ((FlowInfo)caseInits).mergedWith(flowInfo.unconditionalInits());
                        complaintLevel = initialComplaintLevel;
                        fallThroughState = 0;
                    } else if (statement == this.defaultCase) {
                        this.scope.enclosingCase = this.defaultCase;
                        if (fallThroughState == 1 && (statement.bits & 0x20000000) == 0) {
                            this.scope.problemReporter().possibleFallThroughCase(this.scope.enclosingCase);
                        }
                        caseInits = ((FlowInfo)caseInits).mergedWith(flowInfo.unconditionalInits());
                        complaintLevel = initialComplaintLevel;
                        fallThroughState = 0;
                    } else {
                        fallThroughState = 1;
                    }
                    complaintLevel = statement.complainIfUnreachable(caseInits, this.scope, complaintLevel);
                    if (complaintLevel < 2 && (caseInits = statement.analyseCode(this.scope, switchContext, caseInits)) == FlowInfo.DEAD_END) {
                        fallThroughState = 2;
                    }
                    ++i;
                }
            }
            if ((resolvedTypeBinding = this.expression.resolvedType).isEnum()) {
                SourceTypeBinding sourceTypeBinding = currentScope.classScope().referenceContext.binding;
                this.synthetic = sourceTypeBinding.addSyntheticMethodForSwitchEnum(resolvedTypeBinding);
            }
            if (this.defaultCase == null) {
                flowInfo.addPotentialInitializationsFrom(((FlowInfo)caseInits).mergedWith(switchContext.initsOnBreak));
                this.mergedInitStateIndex = currentScope.methodScope().recordInitializationStates(flowInfo);
                FlowInfo flowInfo2 = flowInfo;
                return flowInfo2;
            }
            UnconditionalFlowInfo mergedInfo = ((FlowInfo)caseInits).mergedWith(switchContext.initsOnBreak);
            this.mergedInitStateIndex = currentScope.methodScope().recordInitializationStates(mergedInfo);
            UnconditionalFlowInfo unconditionalFlowInfo = mergedInfo;
            return unconditionalFlowInfo;
        }
        finally {
            if (this.scope != null) {
                this.scope.enclosingCase = null;
            }
        }
    }

    public void generateCodeForStringSwitch(BlockScope currentScope, CodeStream codeStream) {
        try {
            if ((this.bits & Integer.MIN_VALUE) == 0) {
                return;
            }
            try {
                int pc = codeStream.position;
                boolean hasCases = this.caseCount != 0;
                class StringSwitchCase
                implements Comparable {
                    int hashCode;
                    String string;
                    BranchLabel label;
                    final /* synthetic */ SwitchStatement this$0;

                    public StringSwitchCase(SwitchStatement switchStatement, int hashCode, String string, BranchLabel label) {
                        this.this$0 = switchStatement;
                        this.hashCode = hashCode;
                        this.string = string;
                        this.label = label;
                    }

                    public int compareTo(Object o) {
                        StringSwitchCase that = (StringSwitchCase)o;
                        if (this.hashCode == that.hashCode) {
                            return 0;
                        }
                        if (this.hashCode > that.hashCode) {
                            return 1;
                        }
                        return -1;
                    }

                    public String toString() {
                        return "StringSwitchCase :\ncase " + this.hashCode + ":(" + this.string + ")\n";
                    }
                }
                Object[] stringCases = new StringSwitchCase[this.caseCount];
                BranchLabel[] sourceCaseLabels = new BranchLabel[this.caseCount];
                CaseLabel[] hashCodeCaseLabels = new CaseLabel[this.caseCount];
                this.constants = new int[this.caseCount];
                int i = 0;
                int max = this.caseCount;
                while (i < max) {
                    this.cases[i].targetLabel = sourceCaseLabels[i] = new BranchLabel(codeStream);
                    sourceCaseLabels[i].tagBits |= 2;
                    stringCases[i] = new StringSwitchCase(this, this.stringConstants[i].hashCode(), this.stringConstants[i], sourceCaseLabels[i]);
                    hashCodeCaseLabels[i] = new CaseLabel(codeStream);
                    hashCodeCaseLabels[i].tagBits |= 2;
                    ++i;
                }
                Arrays.sort(stringCases);
                int uniqHashCount = 0;
                int lastHashCode = 0;
                int i2 = 0;
                int length = this.caseCount;
                while (i2 < length) {
                    int hashCode = ((StringSwitchCase)stringCases[i2]).hashCode;
                    if (i2 == 0 || hashCode != lastHashCode) {
                        int n = uniqHashCount++;
                        int n2 = hashCode;
                        this.constants[n] = n2;
                        lastHashCode = n2;
                    }
                    ++i2;
                }
                if (uniqHashCount != this.caseCount) {
                    this.constants = new int[uniqHashCount];
                    System.arraycopy(this.constants, 0, this.constants, 0, uniqHashCount);
                    CaseLabel[] caseLabelArray = hashCodeCaseLabels;
                    hashCodeCaseLabels = new CaseLabel[uniqHashCount];
                    System.arraycopy(caseLabelArray, 0, hashCodeCaseLabels, 0, uniqHashCount);
                }
                int[] sortedIndexes = new int[uniqHashCount];
                int i3 = 0;
                while (i3 < uniqHashCount) {
                    sortedIndexes[i3] = i3;
                    ++i3;
                }
                CaseLabel defaultCaseLabel = new CaseLabel(codeStream);
                defaultCaseLabel.tagBits |= 2;
                this.breakLabel.initialize(codeStream);
                BranchLabel defaultBranchLabel = new BranchLabel(codeStream);
                if (hasCases) {
                    defaultBranchLabel.tagBits |= 2;
                }
                if (this.defaultCase != null) {
                    this.defaultCase.targetLabel = defaultBranchLabel;
                }
                this.expression.generateCode(currentScope, codeStream, true);
                codeStream.store(this.dispatchStringCopy, true);
                codeStream.addVariable(this.dispatchStringCopy);
                codeStream.invokeStringHashCode();
                if (hasCases) {
                    codeStream.lookupswitch(defaultCaseLabel, this.constants, sortedIndexes, hashCodeCaseLabels);
                    int i4 = 0;
                    int j = 0;
                    int max2 = this.caseCount;
                    while (i4 < max2) {
                        int hashCode = ((StringSwitchCase)stringCases[i4]).hashCode;
                        if (i4 == 0 || hashCode != lastHashCode) {
                            lastHashCode = hashCode;
                            if (i4 != 0) {
                                codeStream.goto_(defaultBranchLabel);
                            }
                            hashCodeCaseLabels[j++].place();
                        }
                        codeStream.load(this.dispatchStringCopy);
                        codeStream.ldc(((StringSwitchCase)stringCases[i4]).string);
                        codeStream.invokeStringEquals();
                        codeStream.ifne(((StringSwitchCase)stringCases[i4]).label);
                        ++i4;
                    }
                    codeStream.goto_(defaultBranchLabel);
                } else {
                    codeStream.pop();
                }
                int caseIndex = 0;
                if (this.statements != null) {
                    int i5 = 0;
                    int maxCases = this.statements.length;
                    while (i5 < maxCases) {
                        Statement statement = this.statements[i5];
                        if (caseIndex < this.caseCount && statement == this.cases[caseIndex]) {
                            this.scope.enclosingCase = this.cases[caseIndex];
                            if (this.preSwitchInitStateIndex != -1) {
                                codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.preSwitchInitStateIndex);
                            }
                            ++caseIndex;
                        } else if (statement == this.defaultCase) {
                            defaultCaseLabel.place();
                            this.scope.enclosingCase = this.defaultCase;
                            if (this.preSwitchInitStateIndex != -1) {
                                codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.preSwitchInitStateIndex);
                            }
                        }
                        statement.generateCode(this.scope, codeStream);
                        ++i5;
                    }
                }
                if (this.mergedInitStateIndex != -1) {
                    codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
                    codeStream.addDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
                }
                codeStream.removeVariable(this.dispatchStringCopy);
                if (this.scope != currentScope) {
                    codeStream.exitUserScope(this.scope);
                }
                this.breakLabel.place();
                if (this.defaultCase == null) {
                    codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd, true);
                    defaultCaseLabel.place();
                    defaultBranchLabel.place();
                }
                codeStream.recordPositionsFrom(pc, this.sourceStart);
            }
            catch (Throwable e) {
                e.printStackTrace();
            }
        }
        finally {
            if (this.scope != null) {
                this.scope.enclosingCase = null;
            }
        }
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream) {
        if (this.expression.resolvedType.id == 11) {
            this.generateCodeForStringSwitch(currentScope, codeStream);
            return;
        }
        try {
            boolean hasCases;
            if ((this.bits & Integer.MIN_VALUE) == 0) {
                return;
            }
            int pc = codeStream.position;
            this.breakLabel.initialize(codeStream);
            CaseLabel[] caseLabels = new CaseLabel[this.caseCount];
            int i = 0;
            int max = this.caseCount;
            while (i < max) {
                caseLabels[i] = new CaseLabel(codeStream);
                this.cases[i].targetLabel = caseLabels[i];
                caseLabels[i].tagBits |= 2;
                ++i;
            }
            CaseLabel defaultLabel = new CaseLabel(codeStream);
            boolean bl = hasCases = this.caseCount != 0;
            if (hasCases) {
                defaultLabel.tagBits |= 2;
            }
            if (this.defaultCase != null) {
                this.defaultCase.targetLabel = defaultLabel;
            }
            TypeBinding resolvedType = this.expression.resolvedType;
            boolean valueRequired = false;
            if (resolvedType.isEnum()) {
                codeStream.invoke((byte)-72, this.synthetic, null);
                this.expression.generateCode(currentScope, codeStream, true);
                codeStream.invokeEnumOrdinal(resolvedType.constantPoolName());
                codeStream.iaload();
                if (!hasCases) {
                    codeStream.pop();
                }
            } else {
                valueRequired = this.expression.constant == Constant.NotAConstant || hasCases;
                this.expression.generateCode(currentScope, codeStream, valueRequired);
            }
            if (hasCases) {
                int[] sortedIndexes = new int[this.caseCount];
                int i2 = 0;
                while (i2 < this.caseCount) {
                    sortedIndexes[i2] = i2;
                    ++i2;
                }
                int[] localKeysCopy = new int[this.caseCount];
                System.arraycopy(this.constants, 0, localKeysCopy, 0, this.caseCount);
                CodeStream.sort(localKeysCopy, 0, this.caseCount - 1, sortedIndexes);
                int max2 = localKeysCopy[this.caseCount - 1];
                int min = localKeysCopy[0];
                if ((long)((double)this.caseCount * 2.5) > (long)max2 - (long)min) {
                    if (max2 > 0x7FFF0000 && currentScope.compilerOptions().complianceLevel < 0x300000L) {
                        codeStream.lookupswitch(defaultLabel, this.constants, sortedIndexes, caseLabels);
                    } else {
                        codeStream.tableswitch(defaultLabel, min, max2, this.constants, sortedIndexes, caseLabels);
                    }
                } else {
                    codeStream.lookupswitch(defaultLabel, this.constants, sortedIndexes, caseLabels);
                }
                codeStream.updateLastRecordedEndPC(this.scope, codeStream.position);
            } else if (valueRequired) {
                codeStream.pop();
            }
            int caseIndex = 0;
            if (this.statements != null) {
                int i3 = 0;
                int maxCases = this.statements.length;
                while (i3 < maxCases) {
                    Statement statement = this.statements[i3];
                    if (caseIndex < this.caseCount && statement == this.cases[caseIndex]) {
                        this.scope.enclosingCase = this.cases[caseIndex];
                        if (this.preSwitchInitStateIndex != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.preSwitchInitStateIndex);
                        }
                        ++caseIndex;
                    } else if (statement == this.defaultCase) {
                        this.scope.enclosingCase = this.defaultCase;
                        if (this.preSwitchInitStateIndex != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.preSwitchInitStateIndex);
                        }
                    }
                    statement.generateCode(this.scope, codeStream);
                    ++i3;
                }
            }
            if (this.mergedInitStateIndex != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
                codeStream.addDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
            }
            if (this.scope != currentScope) {
                codeStream.exitUserScope(this.scope);
            }
            this.breakLabel.place();
            if (this.defaultCase == null) {
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd, true);
                defaultLabel.place();
            }
            codeStream.recordPositionsFrom(pc, this.sourceStart);
        }
        finally {
            if (this.scope != null) {
                this.scope.enclosingCase = null;
            }
        }
    }

    public StringBuffer printStatement(int indent, StringBuffer output) {
        SwitchStatement.printIndent(indent, output).append("switch (");
        this.expression.printExpression(0, output).append(") {");
        if (this.statements != null) {
            int i = 0;
            while (i < this.statements.length) {
                output.append('\n');
                if (this.statements[i] instanceof CaseStatement) {
                    this.statements[i].printStatement(indent, output);
                } else {
                    this.statements[i].printStatement(indent + 2, output);
                }
                ++i;
            }
        }
        output.append("\n");
        return SwitchStatement.printIndent(indent, output).append('}');
    }

    /*
     * Unable to fully structure code
     */
    public void resolve(BlockScope upperScope) {
        block31: {
            try {
                block33: {
                    block35: {
                        block34: {
                            isEnumSwitch = false;
                            isStringSwitch = false;
                            expressionType = this.expression.resolveType(upperScope);
                            if (expressionType == null) break block33;
                            this.expression.computeConversion(upperScope, expressionType, expressionType);
                            if (expressionType.isValidBinding()) break block34;
                            expressionType = null;
                            break block33;
                        }
                        if (!expressionType.isBaseType()) break block35;
                        if (!this.expression.isConstantValueOfTypeAssignableToType(expressionType, TypeBinding.INT) && !expressionType.isCompatibleWith(TypeBinding.INT)) ** GOTO lbl-1000
                        break block33;
                    }
                    if (expressionType.isEnum()) {
                        isEnumSwitch = true;
                    } else if (upperScope.isBoxingCompatibleWith(expressionType, TypeBinding.INT)) {
                        this.expression.computeConversion(upperScope, TypeBinding.INT, expressionType);
                    } else if (upperScope.compilerOptions().complianceLevel >= 0x330000L && expressionType.id == 11) {
                        isStringSwitch = true;
                    } else lbl-1000:
                    // 2 sources

                    {
                        upperScope.problemReporter().incorrectSwitchType(this.expression, expressionType);
                        expressionType = null;
                    }
                }
                if (isStringSwitch) {
                    this.dispatchStringCopy = new LocalVariableBinding(SwitchStatement.SecretStringVariableName, (TypeBinding)upperScope.getJavaLangString(), 0, false);
                    upperScope.addLocalVariable(this.dispatchStringCopy);
                    this.dispatchStringCopy.setConstant(Constant.NotAConstant);
                    this.dispatchStringCopy.useFlag = 1;
                }
                if (this.statements != null) {
                    this.scope = new BlockScope(upperScope);
                    length = this.statements.length;
                    this.cases = new CaseStatement[length];
                    if (!isStringSwitch) {
                        this.constants = new int[length];
                    } else {
                        this.stringConstants = new String[length];
                    }
                    counter = 0;
                    i = 0;
                    while (i < length) {
                        statement = this.statements[i];
                        constant = statement.resolveCase(this.scope, expressionType, this);
                        if (constant != Constant.NotAConstant) {
                            if (!isStringSwitch) {
                                key = constant.intValue();
                                j = 0;
                                while (j < counter) {
                                    if (this.constants[j] == key) {
                                        this.reportDuplicateCase((CaseStatement)statement, this.cases[j], length);
                                    }
                                    ++j;
                                }
                                this.constants[counter++] = key;
                            } else {
                                key = constant.stringValue();
                                j = 0;
                                while (j < counter) {
                                    if (this.stringConstants[j].equals(key)) {
                                        this.reportDuplicateCase((CaseStatement)statement, this.cases[j], length);
                                    }
                                    ++j;
                                }
                                this.stringConstants[counter++] = key;
                            }
                        }
                        ++i;
                    }
                    if (length != counter) {
                        if (!isStringSwitch) {
                            this.constants = new int[counter];
                            System.arraycopy(this.constants, 0, this.constants, 0, counter);
                        } else {
                            this.stringConstants = new String[counter];
                            System.arraycopy(this.stringConstants, 0, this.stringConstants, 0, counter);
                        }
                    }
                } else if ((this.bits & 8) != 0) {
                    upperScope.problemReporter().undocumentedEmptyBlock(this.blockStart, this.sourceEnd);
                }
                if (!isEnumSwitch || this.defaultCase != null || upperScope.compilerOptions().getSeverity(0x20001000) == 256) break block31;
                v0 = constantCount = this.constants == null ? 0 : this.constants.length;
                if (constantCount != this.caseCount || this.caseCount == ((ReferenceBinding)expressionType).enumConstantCount()) break block31;
                enumFields = ((ReferenceBinding)expressionType.erasure()).fields();
                i = 0;
                max = enumFields.length;
                while (i < max) {
                    block32: {
                        enumConstant = enumFields[i];
                        if ((enumConstant.modifiers & 16384) != 0) {
                            j = 0;
                            while (j < this.caseCount) {
                                if (enumConstant.id + 1 != this.constants[j]) {
                                    ++j;
                                    continue;
                                }
                                break block32;
                            }
                            upperScope.problemReporter().missingEnumConstantCase(this, enumConstant);
                        }
                    }
                    ++i;
                }
            }
            finally {
                if (this.scope != null) {
                    this.scope.enclosingCase = null;
                }
            }
        }
    }

    private void reportDuplicateCase(CaseStatement duplicate, CaseStatement original, int length) {
        if (this.duplicateCaseStatements == null) {
            this.scope.problemReporter().duplicateCase(original);
            this.scope.problemReporter().duplicateCase(duplicate);
            this.duplicateCaseStatements = new CaseStatement[length];
            this.duplicateCaseStatements[this.duplicateCaseStatementsCounter++] = original;
            this.duplicateCaseStatements[this.duplicateCaseStatementsCounter++] = duplicate;
        } else {
            boolean found = false;
            int k = 2;
            while (k < this.duplicateCaseStatementsCounter) {
                if (this.duplicateCaseStatements[k] == duplicate) {
                    found = true;
                    break;
                }
                ++k;
            }
            if (!found) {
                this.scope.problemReporter().duplicateCase(duplicate);
                this.duplicateCaseStatements[this.duplicateCaseStatementsCounter++] = duplicate;
            }
        }
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        if (visitor.visit(this, blockScope)) {
            this.expression.traverse(visitor, blockScope);
            if (this.statements != null) {
                int statementsLength = this.statements.length;
                int i = 0;
                while (i < statementsLength) {
                    this.statements[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
        }
        visitor.endVisit(this, blockScope);
    }

    public void branchChainTo(BranchLabel label) {
        if (this.breakLabel.forwardReferenceCount() > 0) {
            label.becomeDelegateFor(this.breakLabel);
        }
    }
}

