/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;

public class NestedTypeBinding
extends SourceTypeBinding {
    public SourceTypeBinding enclosingType;
    public SyntheticArgumentBinding[] enclosingInstances;
    private ReferenceBinding[] enclosingTypes = Binding.UNINITIALIZED_REFERENCE_TYPES;
    public SyntheticArgumentBinding[] outerLocalVariables;
    private int outerLocalVariablesSlotSize = -1;

    public NestedTypeBinding(char[][] typeName, ClassScope scope, SourceTypeBinding enclosingType) {
        super(typeName, enclosingType.fPackage, scope);
        this.tagBits |= 0x804L;
        this.enclosingType = enclosingType;
    }

    public SyntheticArgumentBinding addSyntheticArgument(LocalVariableBinding actualOuterLocalVariable) {
        SyntheticArgumentBinding synthLocal = null;
        if (this.outerLocalVariables == null) {
            synthLocal = new SyntheticArgumentBinding(actualOuterLocalVariable);
            this.outerLocalVariables = new SyntheticArgumentBinding[]{synthLocal};
        } else {
            int size;
            int newArgIndex = size = this.outerLocalVariables.length;
            int i = size;
            while (--i >= 0) {
                if (this.outerLocalVariables[i].actualOuterLocalVariable == actualOuterLocalVariable) {
                    return this.outerLocalVariables[i];
                }
                if (this.outerLocalVariables[i].id <= actualOuterLocalVariable.id) continue;
                newArgIndex = i;
            }
            SyntheticArgumentBinding[] synthLocals = new SyntheticArgumentBinding[size + 1];
            System.arraycopy(this.outerLocalVariables, 0, synthLocals, 0, newArgIndex);
            synthLocals[newArgIndex] = synthLocal = new SyntheticArgumentBinding(actualOuterLocalVariable);
            System.arraycopy(this.outerLocalVariables, newArgIndex, synthLocals, newArgIndex + 1, size - newArgIndex);
            this.outerLocalVariables = synthLocals;
        }
        if (this.scope.referenceCompilationUnit().isPropagatingInnerClassEmulation) {
            this.updateInnerEmulationDependents();
        }
        return synthLocal;
    }

    public SyntheticArgumentBinding addSyntheticArgument(ReferenceBinding targetEnclosingType) {
        SyntheticArgumentBinding synthLocal = null;
        if (this.enclosingInstances == null) {
            synthLocal = new SyntheticArgumentBinding(targetEnclosingType);
            this.enclosingInstances = new SyntheticArgumentBinding[]{synthLocal};
        } else {
            int size;
            int newArgIndex = size = this.enclosingInstances.length;
            int i = size;
            while (--i >= 0) {
                if (this.enclosingInstances[i].type == targetEnclosingType) {
                    return this.enclosingInstances[i];
                }
                if (this.enclosingType() != targetEnclosingType) continue;
                newArgIndex = 0;
            }
            SyntheticArgumentBinding[] newInstances = new SyntheticArgumentBinding[size + 1];
            System.arraycopy(this.enclosingInstances, 0, newInstances, newArgIndex == 0 ? 1 : 0, size);
            newInstances[newArgIndex] = synthLocal = new SyntheticArgumentBinding(targetEnclosingType);
            this.enclosingInstances = newInstances;
        }
        if (this.scope.referenceCompilationUnit().isPropagatingInnerClassEmulation) {
            this.updateInnerEmulationDependents();
        }
        return synthLocal;
    }

    public SyntheticArgumentBinding addSyntheticArgumentAndField(LocalVariableBinding actualOuterLocalVariable) {
        SyntheticArgumentBinding synthLocal = this.addSyntheticArgument(actualOuterLocalVariable);
        if (synthLocal == null) {
            return null;
        }
        if (synthLocal.matchingField == null) {
            synthLocal.matchingField = this.addSyntheticFieldForInnerclass(actualOuterLocalVariable);
        }
        return synthLocal;
    }

    public SyntheticArgumentBinding addSyntheticArgumentAndField(ReferenceBinding targetEnclosingType) {
        SyntheticArgumentBinding synthLocal = this.addSyntheticArgument(targetEnclosingType);
        if (synthLocal == null) {
            return null;
        }
        if (synthLocal.matchingField == null) {
            synthLocal.matchingField = this.addSyntheticFieldForInnerclass(targetEnclosingType);
        }
        return synthLocal;
    }

    public ReferenceBinding enclosingType() {
        return this.enclosingType;
    }

    public int getEnclosingInstancesSlotSize() {
        return this.enclosingInstances == null ? 0 : this.enclosingInstances.length;
    }

    public int getOuterLocalVariablesSlotSize() {
        if (this.outerLocalVariablesSlotSize < 0) {
            this.outerLocalVariablesSlotSize = 0;
            int outerLocalsCount = this.outerLocalVariables == null ? 0 : this.outerLocalVariables.length;
            int i = 0;
            while (i < outerLocalsCount) {
                SyntheticArgumentBinding argument = this.outerLocalVariables[i];
                switch (argument.type.id) {
                    case 7: 
                    case 8: {
                        this.outerLocalVariablesSlotSize += 2;
                        break;
                    }
                    default: {
                        ++this.outerLocalVariablesSlotSize;
                    }
                }
                ++i;
            }
        }
        return this.outerLocalVariablesSlotSize;
    }

    public SyntheticArgumentBinding getSyntheticArgument(LocalVariableBinding actualOuterLocalVariable) {
        if (this.outerLocalVariables == null) {
            return null;
        }
        int i = this.outerLocalVariables.length;
        while (--i >= 0) {
            if (this.outerLocalVariables[i].actualOuterLocalVariable != actualOuterLocalVariable) continue;
            return this.outerLocalVariables[i];
        }
        return null;
    }

    public SyntheticArgumentBinding getSyntheticArgument(ReferenceBinding targetEnclosingType, boolean onlyExactMatch) {
        if (this.enclosingInstances == null) {
            return null;
        }
        int i = this.enclosingInstances.length;
        while (--i >= 0) {
            if (this.enclosingInstances[i].type != targetEnclosingType || this.enclosingInstances[i].actualOuterLocalVariable != null) continue;
            return this.enclosingInstances[i];
        }
        if (!onlyExactMatch) {
            i = this.enclosingInstances.length;
            while (--i >= 0) {
                if (this.enclosingInstances[i].actualOuterLocalVariable != null || this.enclosingInstances[i].type.findSuperTypeOriginatingFrom(targetEnclosingType) == null) continue;
                return this.enclosingInstances[i];
            }
        }
        return null;
    }

    public SyntheticArgumentBinding[] syntheticEnclosingInstances() {
        return this.enclosingInstances;
    }

    public ReferenceBinding[] syntheticEnclosingInstanceTypes() {
        if (this.enclosingTypes == UNINITIALIZED_REFERENCE_TYPES) {
            if (this.enclosingInstances == null) {
                this.enclosingTypes = null;
            } else {
                int length = this.enclosingInstances.length;
                this.enclosingTypes = new ReferenceBinding[length];
                int i = 0;
                while (i < length) {
                    this.enclosingTypes[i] = (ReferenceBinding)this.enclosingInstances[i].type;
                    ++i;
                }
            }
        }
        return this.enclosingTypes;
    }

    public SyntheticArgumentBinding[] syntheticOuterLocalVariables() {
        return this.outerLocalVariables;
    }

    public void updateInnerEmulationDependents() {
    }
}

