/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.internal.compiler.env.AccessRule;

public class ClasspathAccessRule
extends AccessRule
implements IAccessRule {
    public ClasspathAccessRule(IPath pattern, int kind) {
        this(pattern.toString().toCharArray(), ClasspathAccessRule.toProblemId(kind));
    }

    public ClasspathAccessRule(char[] pattern, int problemId) {
        super(pattern, problemId);
    }

    private static int toProblemId(int kind) {
        boolean ignoreIfBetter = (kind & 0x100) != 0;
        switch (kind & 0xFFFFFEFF) {
            case 1: {
                return ignoreIfBetter ? 0x3000133 : 0x1000133;
            }
            case 2: {
                return ignoreIfBetter ? 50331928 : 0x1000118;
            }
        }
        return ignoreIfBetter ? 0x2000000 : 0;
    }

    public IPath getPattern() {
        return new Path(new String(this.pattern));
    }

    public int getKind() {
        switch (this.getProblemId()) {
            case 0x1000133: {
                return 1;
            }
            case 0x1000118: {
                return 2;
            }
        }
        return 0;
    }
}

