/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;
import org.eclipse.jdt.internal.eval.VariablesInfo;

public class CodeSnippetEnvironment
implements INameEnvironment,
EvaluationConstants {
    INameEnvironment env;
    EvaluationContext context;

    public CodeSnippetEnvironment(INameEnvironment env, EvaluationContext context) {
        this.env = env;
        this.context = context;
    }

    public NameEnvironmentAnswer findType(char[][] compoundTypeName) {
        NameEnvironmentAnswer result = this.env.findType(compoundTypeName);
        if (result != null) {
            return result;
        }
        if (CharOperation.equals(compoundTypeName, ROOT_COMPOUND_NAME)) {
            IBinaryType binary = this.context.getRootCodeSnippetBinary();
            if (binary == null) {
                return null;
            }
            return new NameEnvironmentAnswer(binary, null);
        }
        VariablesInfo installedVars = this.context.installedVars;
        ClassFile[] classFiles = installedVars.classFiles;
        int i = 0;
        while (i < classFiles.length) {
            ClassFile classFile = classFiles[i];
            if (CharOperation.equals(compoundTypeName, classFile.getCompoundName())) {
                ClassFileReader binary = null;
                try {
                    binary = new ClassFileReader(classFile.getBytes(), null);
                }
                catch (ClassFormatException e) {
                    e.printStackTrace();
                    return null;
                }
                return new NameEnvironmentAnswer(binary, null);
            }
            ++i;
        }
        return null;
    }

    public NameEnvironmentAnswer findType(char[] typeName, char[][] packageName) {
        NameEnvironmentAnswer result = this.env.findType(typeName, packageName);
        if (result != null) {
            return result;
        }
        return this.findType(CharOperation.arrayConcat(packageName, typeName));
    }

    public boolean isPackage(char[][] parentPackageName, char[] packageName) {
        return this.env.isPackage(parentPackageName, packageName);
    }

    public void cleanup() {
        this.env.cleanup();
    }
}

