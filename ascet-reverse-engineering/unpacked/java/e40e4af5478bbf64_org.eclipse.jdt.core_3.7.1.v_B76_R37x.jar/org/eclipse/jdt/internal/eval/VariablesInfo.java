/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.eval.GlobalVariable;

public class VariablesInfo {
    GlobalVariable[] variables;
    int variableCount;
    char[] packageName;
    char[] className;
    ClassFile[] classFiles;

    public VariablesInfo(char[] packageName, char[] className, ClassFile[] classFiles, GlobalVariable[] variables, int variableCount) {
        this.packageName = packageName;
        this.className = className;
        this.classFiles = classFiles;
        this.variables = variables;
        this.variableCount = variableCount;
    }

    int indexOf(GlobalVariable var) {
        int i = 0;
        while (i < this.variableCount) {
            if (var.equals(this.variables[i])) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    GlobalVariable varNamed(char[] name) {
        GlobalVariable[] vars = this.variables;
        int i = 0;
        while (i < this.variableCount) {
            GlobalVariable var = vars[i];
            if (CharOperation.equals(name, var.name)) {
                return var;
            }
            ++i;
        }
        return null;
    }
}

