/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding;

public class UnresolvedAnnotationBinding
extends AnnotationBinding {
    private LookupEnvironment env;
    private boolean typeUnresolved = true;

    UnresolvedAnnotationBinding(ReferenceBinding type, ElementValuePair[] pairs, LookupEnvironment env) {
        super(type, pairs);
        this.env = env;
    }

    public ReferenceBinding getAnnotationType() {
        if (this.typeUnresolved) {
            this.type = (ReferenceBinding)BinaryTypeBinding.resolveType(this.type, this.env, false);
            this.typeUnresolved = false;
        }
        return this.type;
    }

    public ElementValuePair[] getElementValuePairs() {
        if (this.env != null) {
            if (this.typeUnresolved) {
                this.getAnnotationType();
            }
            int i = this.pairs.length;
            while (--i >= 0) {
                Object value;
                ElementValuePair pair = this.pairs[i];
                MethodBinding[] methods = this.type.getMethods(pair.getName());
                if (methods != null && methods.length == 1) {
                    pair.setMethodBinding(methods[0]);
                }
                if (!((value = pair.getValue()) instanceof UnresolvedReferenceBinding)) continue;
                pair.setValue(((UnresolvedReferenceBinding)value).resolve(this.env, false));
            }
            this.env = null;
        }
        return this.pairs;
    }
}

