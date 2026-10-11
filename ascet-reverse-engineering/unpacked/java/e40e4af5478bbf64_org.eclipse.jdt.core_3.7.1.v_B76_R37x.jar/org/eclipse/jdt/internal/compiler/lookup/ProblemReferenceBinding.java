/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.lang.reflect.Field;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ProblemReferenceBinding
extends ReferenceBinding {
    ReferenceBinding closestMatch;
    private int problemReason;
    static /* synthetic */ Class class$0;

    public ProblemReferenceBinding(char[][] compoundName, ReferenceBinding closestMatch, int problemReason) {
        this.compoundName = compoundName;
        this.closestMatch = closestMatch;
        this.problemReason = problemReason;
    }

    public TypeBinding closestMatch() {
        return this.closestMatch;
    }

    public ReferenceBinding closestReferenceMatch() {
        return this.closestMatch;
    }

    public int problemId() {
        return this.problemReason;
    }

    public static String problemReasonString(int problemReason) {
        try {
            Class<?> reasons;
            String simpleName;
            int lastDot;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.lookup.ProblemReasons");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((lastDot = (simpleName = (reasons = clazz).getName()).lastIndexOf(46)) >= 0) {
                simpleName = simpleName.substring(lastDot + 1);
            }
            Field[] fields = reasons.getFields();
            int i = 0;
            int length = fields.length;
            while (i < length) {
                Field field = fields[i];
                if (field.getType().equals(Integer.TYPE) && field.getInt(reasons) == problemReason) {
                    return String.valueOf(simpleName) + '.' + field.getName();
                }
                ++i;
            }
        }
        catch (IllegalAccessException illegalAccessException) {}
        return "unknown";
    }

    public char[] shortReadableName() {
        return this.readableName();
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(10);
        buffer.append("ProblemType:[compoundName=");
        buffer.append(this.compoundName == null ? "<null>" : new String(CharOperation.concatWith(this.compoundName, '.')));
        buffer.append("][problemID=").append(ProblemReferenceBinding.problemReasonString(this.problemReason));
        buffer.append("][closestMatch=");
        buffer.append(this.closestMatch == null ? "<null>" : this.closestMatch.toString());
        buffer.append("]");
        return buffer.toString();
    }
}

