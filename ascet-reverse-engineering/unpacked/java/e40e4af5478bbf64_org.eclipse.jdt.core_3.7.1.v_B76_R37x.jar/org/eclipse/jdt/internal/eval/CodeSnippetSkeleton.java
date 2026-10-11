/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.eval.EvaluationConstants;

public class CodeSnippetSkeleton
implements IBinaryType,
EvaluationConstants {
    IBinaryMethod[] methods = new IBinaryMethod[]{new BinaryMethodSkeleton("<init>".toCharArray(), "()V".toCharArray(), new char[0][], true), new BinaryMethodSkeleton("run".toCharArray(), "()V".toCharArray(), new char[][]{"java/lang/Throwable".toCharArray()}, false), new BinaryMethodSkeleton("setResult".toCharArray(), "(Ljava/lang/Object;Ljava/lang/Class;)V".toCharArray(), new char[0][], false)};

    public IBinaryAnnotation[] getAnnotations() {
        return null;
    }

    public char[] getEnclosingMethod() {
        return null;
    }

    public char[] getEnclosingTypeName() {
        return null;
    }

    public IBinaryField[] getFields() {
        return null;
    }

    public char[] getFileName() {
        return CharOperation.concat(CODE_SNIPPET_NAME, Util.defaultJavaExtension().toCharArray());
    }

    public char[] getGenericSignature() {
        return null;
    }

    public char[][] getInterfaceNames() {
        return null;
    }

    public String getJavadocContents() {
        return null;
    }

    public String getJavadocContents(IProgressMonitor monitor, String defaultEncoding) throws JavaModelException {
        return null;
    }

    public IBinaryNestedType[] getMemberTypes() {
        return null;
    }

    public IBinaryMethod[] getMethods() {
        return this.methods;
    }

    public int getModifiers() {
        return 1;
    }

    public char[][][] getMissingTypeNames() {
        return null;
    }

    public char[] getName() {
        return CODE_SNIPPET_NAME;
    }

    public char[] getSourceName() {
        return ROOT_CLASS_NAME;
    }

    public char[] getSuperclassName() {
        return null;
    }

    public long getTagBits() {
        return 0L;
    }

    public String getURLContents(String docUrlValue, String defaultEncoding) {
        return null;
    }

    public boolean isAnonymous() {
        return false;
    }

    public boolean isBinaryType() {
        return true;
    }

    public boolean isLocal() {
        return false;
    }

    public boolean isMember() {
        return false;
    }

    public char[] sourceFileName() {
        return null;
    }

    public static class BinaryMethodSkeleton
    implements IBinaryMethod {
        char[][] exceptionTypeNames;
        char[] methodDescriptor;
        char[] selector;
        boolean isConstructor;

        public BinaryMethodSkeleton(char[] selector, char[] methodDescriptor, char[][] exceptionTypeNames, boolean isConstructor) {
            this.selector = selector;
            this.methodDescriptor = methodDescriptor;
            this.exceptionTypeNames = exceptionTypeNames;
            this.isConstructor = isConstructor;
        }

        public IBinaryAnnotation[] getAnnotations() {
            return null;
        }

        public char[][] getArgumentNames() {
            return null;
        }

        public Object getDefaultValue() {
            return null;
        }

        public char[][] getExceptionTypeNames() {
            return this.exceptionTypeNames;
        }

        public char[] getGenericSignature() {
            return null;
        }

        public char[] getMethodDescriptor() {
            return this.methodDescriptor;
        }

        public int getModifiers() {
            return 1;
        }

        public IBinaryAnnotation[] getParameterAnnotations(int index) {
            return null;
        }

        public char[] getSelector() {
            return this.selector;
        }

        public long getTagBits() {
            return 0L;
        }

        public boolean isClinit() {
            return false;
        }

        public boolean isConstructor() {
            return this.isConstructor;
        }
    }
}

