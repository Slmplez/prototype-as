/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.codegen;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel;
import org.eclipse.jdt.internal.compiler.codegen.VerificationTypeInfo;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;

public class StackMapFrameCodeStream
extends CodeStream {
    public int[] stateIndexes;
    public int stateIndexesCounter;
    private HashMap framePositions;
    public Set exceptionMarkers;
    public ArrayList stackDepthMarkers;
    public ArrayList stackMarkers;

    public StackMapFrameCodeStream(ClassFile givenClassFile) {
        super(givenClassFile);
        this.generateAttributes |= 0x10;
    }

    public void addDefinitelyAssignedVariables(Scope scope, int initStateIndex) {
        int i = 0;
        while (i < this.visibleLocalsCount) {
            LocalVariableBinding localBinding = this.visibleLocals[i];
            if (localBinding != null) {
                boolean isDefinitelyAssigned = this.isDefinitelyAssigned(scope, initStateIndex, localBinding);
                if (!isDefinitelyAssigned) {
                    if (this.stateIndexes != null) {
                        int j = 0;
                        int max = this.stateIndexesCounter;
                        while (j < max) {
                            if (this.isDefinitelyAssigned(scope, this.stateIndexes[j], localBinding)) {
                                if (localBinding.initializationCount == 0 || localBinding.initializationPCs[(localBinding.initializationCount - 1 << 1) + 1] != -1) {
                                    localBinding.recordInitializationStartPC(this.position);
                                }
                                break;
                            }
                            ++j;
                        }
                    }
                } else if (localBinding.initializationCount == 0 || localBinding.initializationPCs[(localBinding.initializationCount - 1 << 1) + 1] != -1) {
                    localBinding.recordInitializationStartPC(this.position);
                }
            }
            ++i;
        }
    }

    public void addExceptionMarker(int pc, TypeBinding typeBinding) {
        if (this.exceptionMarkers == null) {
            this.exceptionMarkers = new HashSet();
        }
        if (typeBinding == null) {
            this.exceptionMarkers.add(new ExceptionMarker(pc, ConstantPool.JavaLangThrowableConstantPoolName));
        } else {
            switch (typeBinding.id) {
                case 12: {
                    this.exceptionMarkers.add(new ExceptionMarker(pc, ConstantPool.JavaLangClassNotFoundExceptionConstantPoolName));
                    break;
                }
                case 7: {
                    this.exceptionMarkers.add(new ExceptionMarker(pc, ConstantPool.JavaLangNoSuchFieldErrorConstantPoolName));
                    break;
                }
                default: {
                    this.exceptionMarkers.add(new ExceptionMarker(pc, typeBinding.constantPoolName()));
                }
            }
        }
    }

    public void addFramePosition(int pc) {
        Integer newEntry = new Integer(pc);
        FramePosition value = (FramePosition)this.framePositions.get(newEntry);
        if (value != null) {
            ++value.counter;
        } else {
            this.framePositions.put(newEntry, new FramePosition());
        }
    }

    public void optimizeBranch(int oldPosition, BranchLabel lbl) {
        super.optimizeBranch(oldPosition, lbl);
        this.removeFramePosition(oldPosition);
    }

    public void removeFramePosition(int pc) {
        Integer entry = new Integer(pc);
        FramePosition value = (FramePosition)this.framePositions.get(entry);
        if (value != null) {
            --value.counter;
            if (value.counter <= 0) {
                this.framePositions.remove(entry);
            }
        }
    }

    public void addVariable(LocalVariableBinding localBinding) {
        if (localBinding.initializationPCs == null) {
            this.record(localBinding);
        }
        localBinding.recordInitializationStartPC(this.position);
    }

    private void addStackMarker(int pc, int destinationPC) {
        if (this.stackMarkers == null) {
            this.stackMarkers = new ArrayList();
            this.stackMarkers.add(new StackMarker(pc, destinationPC));
        } else {
            int size = this.stackMarkers.size();
            if (size == 0 || ((StackMarker)this.stackMarkers.get((int)(size - 1))).pc != this.position) {
                this.stackMarkers.add(new StackMarker(pc, destinationPC));
            }
        }
    }

    private void addStackDepthMarker(int pc, int delta, TypeBinding typeBinding) {
        if (this.stackDepthMarkers == null) {
            this.stackDepthMarkers = new ArrayList();
            this.stackDepthMarkers.add(new StackDepthMarker(pc, delta, typeBinding));
        } else {
            int size = this.stackDepthMarkers.size();
            if (size == 0 || ((StackDepthMarker)this.stackDepthMarkers.get((int)(size - 1))).pc != this.position) {
                this.stackDepthMarkers.add(new StackDepthMarker(pc, delta, typeBinding));
            }
        }
    }

    public void decrStackSize(int offset) {
        super.decrStackSize(offset);
        this.addStackDepthMarker(this.position, -1, null);
    }

    public void recordExpressionType(TypeBinding typeBinding) {
        this.addStackDepthMarker(this.position, 0, typeBinding);
    }

    public void generateClassLiteralAccessForType(TypeBinding accessedType, FieldBinding syntheticFieldBinding) {
        if (accessedType.isBaseType() && accessedType != TypeBinding.NULL) {
            this.getTYPE(accessedType.id);
            return;
        }
        if (this.targetLevel >= 0x310000L) {
            this.ldc(accessedType);
        } else {
            BranchLabel endLabel = new BranchLabel(this);
            if (syntheticFieldBinding != null) {
                this.fieldAccess((byte)-78, syntheticFieldBinding, null);
                this.dup();
                this.ifnonnull(endLabel);
                this.pop();
            }
            ExceptionLabel classNotFoundExceptionHandler = new ExceptionLabel(this, TypeBinding.NULL);
            classNotFoundExceptionHandler.placeStart();
            this.ldc(accessedType == TypeBinding.NULL ? "java.lang.Object" : String.valueOf(accessedType.constantPoolName()).replace('/', '.'));
            this.invokeClassForName();
            classNotFoundExceptionHandler.placeEnd();
            if (syntheticFieldBinding != null) {
                this.dup();
                this.fieldAccess((byte)-77, syntheticFieldBinding, null);
            }
            int fromPC = this.position;
            this.goto_(endLabel);
            int savedStackDepth = this.stackDepth;
            this.pushExceptionOnStack(TypeBinding.NULL);
            classNotFoundExceptionHandler.place();
            this.newNoClassDefFoundError();
            this.dup_x1();
            this.swap();
            this.invokeThrowableGetMessage();
            this.invokeNoClassDefFoundErrorStringConstructor();
            this.athrow();
            endLabel.place();
            this.addStackMarker(fromPC, this.position);
            this.stackDepth = savedStackDepth;
        }
    }

    public void generateOuterAccess(Object[] mappingSequence, ASTNode invocationSite, Binding target, Scope scope) {
        int currentPosition = this.position;
        super.generateOuterAccess(mappingSequence, invocationSite, target, scope);
        if (currentPosition == this.position) {
            throw new AbortMethod(scope.referenceCompilationUnit().compilationResult, null);
        }
    }

    public ExceptionMarker[] getExceptionMarkers() {
        Set exceptionMarkerSet = this.exceptionMarkers;
        if (this.exceptionMarkers == null) {
            return null;
        }
        int size = exceptionMarkerSet.size();
        Object[] markers = new ExceptionMarker[size];
        int n = 0;
        Iterator iterator = exceptionMarkerSet.iterator();
        while (iterator.hasNext()) {
            markers[n++] = (ExceptionMarker)iterator.next();
        }
        Arrays.sort(markers);
        return markers;
    }

    public int[] getFramePositions() {
        Set set = this.framePositions.keySet();
        int size = set.size();
        int[] positions = new int[size];
        int n = 0;
        Iterator iterator = set.iterator();
        while (iterator.hasNext()) {
            positions[n++] = (Integer)iterator.next();
        }
        Arrays.sort(positions);
        return positions;
    }

    public StackDepthMarker[] getStackDepthMarkers() {
        if (this.stackDepthMarkers == null) {
            return null;
        }
        int length = this.stackDepthMarkers.size();
        if (length == 0) {
            return null;
        }
        StackDepthMarker[] result = new StackDepthMarker[length];
        this.stackDepthMarkers.toArray(result);
        return result;
    }

    public StackMarker[] getStackMarkers() {
        if (this.stackMarkers == null) {
            return null;
        }
        int length = this.stackMarkers.size();
        if (length == 0) {
            return null;
        }
        StackMarker[] result = new StackMarker[length];
        this.stackMarkers.toArray(result);
        return result;
    }

    public boolean hasFramePositions() {
        return this.framePositions.size() != 0;
    }

    public void init(ClassFile targetClassFile) {
        super.init(targetClassFile);
        this.stateIndexesCounter = 0;
        if (this.framePositions != null) {
            this.framePositions.clear();
        }
        if (this.exceptionMarkers != null) {
            this.exceptionMarkers.clear();
        }
        if (this.stackDepthMarkers != null) {
            this.stackDepthMarkers.clear();
        }
        if (this.stackMarkers != null) {
            this.stackMarkers.clear();
        }
    }

    public void initializeMaxLocals(MethodBinding methodBinding) {
        super.initializeMaxLocals(methodBinding);
        if (this.framePositions == null) {
            this.framePositions = new HashMap();
        } else {
            this.framePositions.clear();
        }
    }

    public void popStateIndex() {
        --this.stateIndexesCounter;
    }

    public void pushStateIndex(int naturalExitMergeInitStateIndex) {
        int length;
        if (this.stateIndexes == null) {
            this.stateIndexes = new int[3];
        }
        if ((length = this.stateIndexes.length) == this.stateIndexesCounter) {
            this.stateIndexes = new int[length * 2];
            System.arraycopy(this.stateIndexes, 0, this.stateIndexes, 0, length);
        }
        this.stateIndexes[this.stateIndexesCounter++] = naturalExitMergeInitStateIndex;
    }

    public void removeNotDefinitelyAssignedVariables(Scope scope, int initStateIndex) {
        int index = this.visibleLocalsCount;
        int i = 0;
        while (i < index) {
            boolean isDefinitelyAssigned;
            LocalVariableBinding localBinding = this.visibleLocals[i];
            if (localBinding != null && localBinding.initializationCount > 0 && !(isDefinitelyAssigned = this.isDefinitelyAssigned(scope, initStateIndex, localBinding))) {
                if (this.stateIndexes != null) {
                    int j = 0;
                    int max = this.stateIndexesCounter;
                    while (j < max) {
                        if (!this.isDefinitelyAssigned(scope, this.stateIndexes[j], localBinding)) {
                            ++j;
                            continue;
                        }
                        break;
                    }
                } else {
                    localBinding.recordInitializationEndPC(this.position);
                }
            }
            ++i;
        }
    }

    public void reset(ClassFile givenClassFile) {
        super.reset(givenClassFile);
        this.stateIndexesCounter = 0;
        if (this.framePositions != null) {
            this.framePositions.clear();
        }
        if (this.exceptionMarkers != null) {
            this.exceptionMarkers.clear();
        }
        if (this.stackDepthMarkers != null) {
            this.stackDepthMarkers.clear();
        }
        if (this.stackMarkers != null) {
            this.stackMarkers.clear();
        }
    }

    protected void writePosition(BranchLabel label) {
        super.writePosition(label);
        this.addFramePosition(label.position);
    }

    protected void writePosition(BranchLabel label, int forwardReference) {
        super.writePosition(label, forwardReference);
        this.addFramePosition(label.position);
    }

    protected void writeSignedWord(int pos, int value) {
        super.writeSignedWord(pos, value);
        this.addFramePosition(this.position);
    }

    protected void writeWidePosition(BranchLabel label) {
        super.writeWidePosition(label);
        this.addFramePosition(label.position);
    }

    public void areturn() {
        super.areturn();
        this.addFramePosition(this.position);
    }

    public void ireturn() {
        super.ireturn();
        this.addFramePosition(this.position);
    }

    public void lreturn() {
        super.lreturn();
        this.addFramePosition(this.position);
    }

    public void freturn() {
        super.freturn();
        this.addFramePosition(this.position);
    }

    public void dreturn() {
        super.dreturn();
        this.addFramePosition(this.position);
    }

    public void return_() {
        super.return_();
        this.addFramePosition(this.position);
    }

    public void athrow() {
        super.athrow();
        this.addFramePosition(this.position);
    }

    public void pushOnStack(TypeBinding binding) {
        super.pushOnStack(binding);
        this.addStackDepthMarker(this.position, 1, binding);
    }

    public void pushExceptionOnStack(TypeBinding binding) {
        super.pushExceptionOnStack(binding);
        this.addExceptionMarker(this.position, binding);
    }

    public void goto_(BranchLabel label) {
        super.goto_(label);
        this.addFramePosition(this.position);
    }

    public void goto_w(BranchLabel label) {
        super.goto_w(label);
        this.addFramePosition(this.position);
    }

    public void resetInWideMode() {
        this.resetSecretLocals();
        super.resetInWideMode();
    }

    public void resetForCodeGenUnusedLocals() {
        this.resetSecretLocals();
        super.resetForCodeGenUnusedLocals();
    }

    public void resetSecretLocals() {
        int i = 0;
        int max = this.locals.length;
        while (i < max) {
            LocalVariableBinding localVariableBinding = this.locals[i];
            if (localVariableBinding != null && localVariableBinding.isSecret()) {
                localVariableBinding.resetInitializations();
            }
            ++i;
        }
    }

    public static class ExceptionMarker
    implements Comparable {
        public char[] constantPoolName;
        public int pc;

        public ExceptionMarker(int pc, char[] constantPoolName) {
            this.pc = pc;
            this.constantPoolName = constantPoolName;
        }

        public int compareTo(Object o) {
            if (o instanceof ExceptionMarker) {
                return this.pc - ((ExceptionMarker)o).pc;
            }
            return 0;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ExceptionMarker) {
                ExceptionMarker marker = (ExceptionMarker)obj;
                return this.pc == marker.pc && CharOperation.equals(this.constantPoolName, marker.constantPoolName);
            }
            return false;
        }

        public int hashCode() {
            return this.pc + this.constantPoolName.hashCode();
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append('(').append(this.pc).append(',').append(this.constantPoolName).append(')');
            return String.valueOf(buffer);
        }
    }

    static class FramePosition {
        int counter;

        FramePosition() {
        }
    }

    public static class StackDepthMarker {
        public int pc;
        public int delta;
        public TypeBinding typeBinding;

        public StackDepthMarker(int pc, int delta, TypeBinding typeBinding) {
            this.pc = pc;
            this.typeBinding = typeBinding;
            this.delta = delta;
        }

        public StackDepthMarker(int pc, int delta) {
            this.pc = pc;
            this.delta = delta;
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append('(').append(this.pc).append(',').append(this.delta);
            if (this.typeBinding != null) {
                buffer.append(',').append(this.typeBinding.qualifiedPackageName()).append(this.typeBinding.qualifiedSourceName());
            }
            buffer.append(')');
            return String.valueOf(buffer);
        }
    }

    public static class StackMarker {
        public int pc;
        public int destinationPC;
        public VerificationTypeInfo[] infos;

        public StackMarker(int pc, int destinationPC) {
            this.pc = pc;
            this.destinationPC = destinationPC;
        }

        public void setInfos(VerificationTypeInfo[] infos) {
            this.infos = infos;
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append("[copy stack items from ").append(this.pc).append(" to ").append(this.destinationPC);
            if (this.infos != null) {
                int i = 0;
                int max = this.infos.length;
                while (i < max) {
                    if (i > 0) {
                        buffer.append(',');
                    }
                    buffer.append(this.infos[i]);
                    ++i;
                }
            }
            buffer.append(']');
            return String.valueOf(buffer);
        }
    }
}

