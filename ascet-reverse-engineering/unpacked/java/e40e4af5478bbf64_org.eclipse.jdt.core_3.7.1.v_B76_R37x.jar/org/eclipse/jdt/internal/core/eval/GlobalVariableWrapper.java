/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.eval;

import org.eclipse.jdt.core.eval.IGlobalVariable;
import org.eclipse.jdt.internal.eval.GlobalVariable;

class GlobalVariableWrapper
implements IGlobalVariable {
    GlobalVariable variable;

    GlobalVariableWrapper(GlobalVariable variable) {
        this.variable = variable;
    }

    public String getInitializer() {
        char[] initializer = this.variable.getInitializer();
        if (initializer != null) {
            return new String(initializer);
        }
        return null;
    }

    public String getName() {
        return new String(this.variable.getName());
    }

    public String getTypeName() {
        return new String(this.variable.getTypeName());
    }
}

