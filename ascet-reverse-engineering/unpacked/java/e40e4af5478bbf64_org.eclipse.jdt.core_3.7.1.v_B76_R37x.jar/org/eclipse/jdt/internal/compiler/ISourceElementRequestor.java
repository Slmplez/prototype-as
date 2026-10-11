/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler;

import java.util.HashMap;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;

public interface ISourceElementRequestor {
    public void acceptAnnotationTypeReference(char[][] var1, int var2, int var3);

    public void acceptAnnotationTypeReference(char[] var1, int var2);

    public void acceptConstructorReference(char[] var1, int var2, int var3);

    public void acceptFieldReference(char[] var1, int var2);

    public void acceptImport(int var1, int var2, int var3, int var4, char[][] var5, boolean var6, int var7);

    public void acceptLineSeparatorPositions(int[] var1);

    public void acceptMethodReference(char[] var1, int var2, int var3);

    public void acceptPackage(ImportReference var1);

    public void acceptProblem(CategorizedProblem var1);

    public void acceptTypeReference(char[][] var1, int var2, int var3);

    public void acceptTypeReference(char[] var1, int var2);

    public void acceptUnknownReference(char[][] var1, int var2, int var3);

    public void acceptUnknownReference(char[] var1, int var2);

    public void enterCompilationUnit();

    public void enterConstructor(MethodInfo var1);

    public void enterField(FieldInfo var1);

    public void enterInitializer(int var1, int var2);

    public void enterMethod(MethodInfo var1);

    public void enterType(TypeInfo var1);

    public void exitCompilationUnit(int var1);

    public void exitConstructor(int var1);

    public void exitField(int var1, int var2, int var3);

    public void exitInitializer(int var1);

    public void exitMethod(int var1, Expression var2);

    public void exitType(int var1);

    public static class FieldInfo {
        public int declarationStart;
        public int modifiers;
        public char[] type;
        public char[] name;
        public int nameSourceStart;
        public int nameSourceEnd;
        public char[][] categories;
        public Annotation[] annotations;
        public FieldDeclaration node;
    }

    public static class MethodInfo {
        public boolean isConstructor;
        public boolean isAnnotation;
        public int declarationStart;
        public int modifiers;
        public char[] returnType;
        public char[] name;
        public int nameSourceStart;
        public int nameSourceEnd;
        public char[][] parameterTypes;
        public char[][] parameterNames;
        public char[][] exceptionTypes;
        public TypeParameterInfo[] typeParameters;
        public char[][] categories;
        public Annotation[] annotations;
        public char[] declaringPackageName;
        public int declaringTypeModifiers;
        public int extraFlags;
        public AbstractMethodDeclaration node;
        public ParameterInfo[] parameterInfos;
    }

    public static class ParameterInfo {
        public int modifiers;
        public int declarationStart;
        public int declarationEnd;
        public int nameSourceStart;
        public int nameSourceEnd;
        public char[] name;
    }

    public static class TypeInfo {
        public int declarationStart;
        public int modifiers;
        public char[] name;
        public int nameSourceStart;
        public int nameSourceEnd;
        public char[] superclass;
        public char[][] superinterfaces;
        public TypeParameterInfo[] typeParameters;
        public char[][] categories;
        public boolean secondary;
        public boolean anonymousMember;
        public Annotation[] annotations;
        public int extraFlags;
        public TypeDeclaration node;
        public HashMap childrenCategories = new HashMap();
    }

    public static class TypeParameterInfo {
        public int declarationStart;
        public int declarationEnd;
        public char[] name;
        public int nameSourceStart;
        public int nameSourceEnd;
        public char[][] bounds;
    }
}

