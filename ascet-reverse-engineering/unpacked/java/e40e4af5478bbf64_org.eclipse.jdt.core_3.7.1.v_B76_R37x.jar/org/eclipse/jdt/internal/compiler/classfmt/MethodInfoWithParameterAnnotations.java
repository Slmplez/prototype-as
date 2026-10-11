/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.classfmt.AnnotationInfo;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfo;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfoWithAnnotations;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.util.Util;

class MethodInfoWithParameterAnnotations
extends MethodInfoWithAnnotations {
    private AnnotationInfo[][] parameterAnnotations;

    MethodInfoWithParameterAnnotations(MethodInfo methodInfo, AnnotationInfo[] annotations, AnnotationInfo[][] parameterAnnotations) {
        super(methodInfo, annotations);
        if (methodInfo.isConstructor()) {
            int parametersCount = Util.getParameterCount(methodInfo.getMethodDescriptor());
            if (parameterAnnotations.length < parametersCount) {
                AnnotationInfo[][] temp = new AnnotationInfo[parametersCount][];
                System.arraycopy(parameterAnnotations, 0, temp, 1, parameterAnnotations.length);
                this.parameterAnnotations = temp;
            } else {
                this.parameterAnnotations = parameterAnnotations;
            }
        } else {
            this.parameterAnnotations = parameterAnnotations;
        }
    }

    public IBinaryAnnotation[] getParameterAnnotations(int index) {
        return this.parameterAnnotations[index];
    }

    protected void initialize() {
        int i = 0;
        int l = this.parameterAnnotations == null ? 0 : this.parameterAnnotations.length;
        while (i < l) {
            AnnotationInfo[] infos = this.parameterAnnotations[i];
            int j = 0;
            int k = infos == null ? 0 : infos.length;
            while (j < k) {
                infos[j].initialize();
                ++j;
            }
            ++i;
        }
        super.initialize();
    }

    protected void reset() {
        int i = 0;
        int l = this.parameterAnnotations == null ? 0 : this.parameterAnnotations.length;
        while (i < l) {
            AnnotationInfo[] infos = this.parameterAnnotations[i];
            int j = 0;
            int k = infos == null ? 0 : infos.length;
            while (j < k) {
                infos[j].reset();
                ++j;
            }
            ++i;
        }
        super.reset();
    }

    protected void toStringContent(StringBuffer buffer) {
        super.toStringContent(buffer);
        int i = 0;
        int l = this.parameterAnnotations == null ? 0 : this.parameterAnnotations.length;
        while (i < l) {
            buffer.append("param" + (i - 1));
            buffer.append('\n');
            AnnotationInfo[] infos = this.parameterAnnotations[i];
            int j = 0;
            int k = infos == null ? 0 : infos.length;
            while (j < k) {
                buffer.append(infos[j]);
                buffer.append('\n');
                ++j;
            }
            ++i;
        }
    }
}

