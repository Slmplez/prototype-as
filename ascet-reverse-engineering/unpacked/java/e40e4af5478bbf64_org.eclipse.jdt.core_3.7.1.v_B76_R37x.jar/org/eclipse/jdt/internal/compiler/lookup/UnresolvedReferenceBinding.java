/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class UnresolvedReferenceBinding
extends ReferenceBinding {
    ReferenceBinding resolvedType;
    TypeBinding[] wrappers;

    UnresolvedReferenceBinding(char[][] compoundName, PackageBinding packageBinding) {
        this.compoundName = compoundName;
        this.sourceName = compoundName[compoundName.length - 1];
        this.fPackage = packageBinding;
        this.wrappers = null;
    }

    void addWrapper(TypeBinding wrapper, LookupEnvironment environment) {
        if (this.resolvedType != null) {
            wrapper.swapUnresolved(this, this.resolvedType, environment);
            return;
        }
        if (this.wrappers == null) {
            this.wrappers = new TypeBinding[]{wrapper};
        } else {
            int length = this.wrappers.length;
            this.wrappers = new TypeBinding[length + 1];
            System.arraycopy(this.wrappers, 0, this.wrappers, 0, length);
            this.wrappers[length] = wrapper;
        }
    }

    public String debugName() {
        return this.toString();
    }

    ReferenceBinding resolve(LookupEnvironment environment, boolean convertGenericToRawType) {
        ReferenceBinding targetType = this.resolvedType;
        if (targetType == null) {
            targetType = this.fPackage.getType0(this.compoundName[this.compoundName.length - 1]);
            if (targetType == this) {
                targetType = environment.askForType(this.compoundName);
            }
            if (targetType == null || targetType == this) {
                if ((this.tagBits & 0x80L) == 0L) {
                    environment.problemReporter.isClassPathCorrect(this.compoundName, environment.unitBeingCompleted, environment.missingClassFileLocation);
                }
                targetType = environment.createMissingType(null, this.compoundName);
            }
            this.setResolvedType(targetType, environment);
        }
        if (convertGenericToRawType) {
            targetType = (ReferenceBinding)environment.convertUnresolvedBinaryToRawType(targetType);
        }
        return targetType;
    }

    void setResolvedType(ReferenceBinding targetType, LookupEnvironment environment) {
        if (this.resolvedType == targetType) {
            return;
        }
        this.resolvedType = targetType;
        if (this.wrappers != null) {
            int i = 0;
            int l = this.wrappers.length;
            while (i < l) {
                this.wrappers[i].swapUnresolved(this, targetType, environment);
                ++i;
            }
        }
        environment.updateCaches(this, targetType);
    }

    public String toString() {
        return "Unresolved type " + (this.compoundName != null ? CharOperation.toString(this.compoundName) : "UNNAMED");
    }
}

