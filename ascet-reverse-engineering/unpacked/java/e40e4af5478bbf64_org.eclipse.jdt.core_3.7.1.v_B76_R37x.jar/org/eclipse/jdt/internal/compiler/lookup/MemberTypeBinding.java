/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.NestedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;

public final class MemberTypeBinding
extends NestedTypeBinding {
    public MemberTypeBinding(char[][] compoundName, ClassScope scope, SourceTypeBinding enclosingType) {
        super(compoundName, scope, enclosingType);
        this.tagBits |= 0x80CL;
    }

    void checkSyntheticArgsAndFields() {
        if (this.isStatic()) {
            return;
        }
        if (this.isInterface()) {
            return;
        }
        this.addSyntheticArgumentAndField(this.enclosingType);
    }

    public char[] constantPoolName() {
        if (this.constantPoolName != null) {
            return this.constantPoolName;
        }
        this.constantPoolName = CharOperation.concat(this.enclosingType().constantPoolName(), this.sourceName, '$');
        return this.constantPoolName;
    }

    public void initializeDeprecatedAnnotationTagBits() {
        if ((this.tagBits & 0x400000000L) == 0L) {
            super.initializeDeprecatedAnnotationTagBits();
            if ((this.tagBits & 0x400000000000L) == 0L) {
                ReferenceBinding enclosing = this.enclosingType();
                if ((enclosing.tagBits & 0x400000000L) == 0L) {
                    enclosing.initializeDeprecatedAnnotationTagBits();
                }
                if (enclosing.isViewedAsDeprecated()) {
                    this.modifiers |= 0x200000;
                }
            }
        }
    }

    public String toString() {
        return "Member type : " + new String(this.sourceName()) + " " + super.toString();
    }
}

