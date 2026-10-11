/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.CompilationUnitResolver;
import org.eclipse.jdt.core.dom.IBinding;

public abstract class FileASTRequestor {
    CompilationUnitResolver compilationUnitResolver = null;

    public void acceptAST(String sourceFilePath, CompilationUnit ast) {
    }

    public void acceptBinding(String bindingKey, IBinding binding) {
    }

    public final IBinding[] createBindings(String[] bindingKeys) {
        int length = bindingKeys.length;
        IBinding[] result = new IBinding[length];
        int i = 0;
        while (i < length) {
            result[i] = null;
            if (this.compilationUnitResolver != null) {
                result[i] = this.compilationUnitResolver.createBinding(bindingKeys[i]);
            }
            ++i;
        }
        return result;
    }
}

