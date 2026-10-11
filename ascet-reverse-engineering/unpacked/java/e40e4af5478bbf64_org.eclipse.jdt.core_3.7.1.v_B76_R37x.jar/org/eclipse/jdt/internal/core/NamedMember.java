/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.BindingKey;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.ISelectionRequestor;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Member;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.NamedMember;
import org.eclipse.jdt.internal.core.SearchableEnvironment;

public abstract class NamedMember
extends Member {
    protected String name;

    public NamedMember(JavaElement parent, String name) {
        super(parent);
        this.name = name;
    }

    private void appendTypeParameters(StringBuffer buffer) throws JavaModelException {
        ITypeParameter[] typeParameters = this.getTypeParameters();
        int length = typeParameters.length;
        if (length == 0) {
            return;
        }
        buffer.append('<');
        int i = 0;
        while (i < length) {
            ITypeParameter typeParameter = typeParameters[i];
            buffer.append(typeParameter.getElementName());
            String[] bounds = typeParameter.getBounds();
            int boundsLength = bounds.length;
            if (boundsLength > 0) {
                buffer.append(" extends ");
                int j = 0;
                while (j < boundsLength) {
                    buffer.append(bounds[j]);
                    if (j < boundsLength - 1) {
                        buffer.append(" & ");
                    }
                    ++j;
                }
            }
            if (i < length - 1) {
                buffer.append(", ");
            }
            ++i;
        }
        buffer.append('>');
    }

    public String getElementName() {
        return this.name;
    }

    protected String getKey(IField field, boolean forceOpen) throws JavaModelException {
        StringBuffer key = new StringBuffer();
        String declaringKey = this.getKey((IType)field.getParent(), forceOpen);
        key.append(declaringKey);
        key.append('.');
        key.append(field.getElementName());
        return key.toString();
    }

    protected String getKey(IMethod method, boolean forceOpen) throws JavaModelException {
        ITypeParameter[] typeParameters;
        int length;
        StringBuffer key = new StringBuffer();
        String declaringKey = this.getKey((IType)method.getParent(), forceOpen);
        key.append(declaringKey);
        key.append('.');
        String selector = method.getElementName();
        key.append(selector);
        if (forceOpen && (length = (typeParameters = method.getTypeParameters()).length) > 0) {
            key.append('<');
            int i = 0;
            while (i < length) {
                ITypeParameter typeParameter = typeParameters[i];
                String[] bounds = typeParameter.getBounds();
                int boundsLength = bounds.length;
                char[][] boundSignatures = new char[boundsLength][];
                int j = 0;
                while (j < boundsLength) {
                    boundSignatures[j] = Signature.createCharArrayTypeSignature(bounds[j].toCharArray(), method.isBinary());
                    CharOperation.replace(boundSignatures[j], '.', '/');
                    ++j;
                }
                char[] sig = Signature.createTypeParameterSignature(typeParameter.getElementName().toCharArray(), boundSignatures);
                key.append(sig);
                ++i;
            }
            key.append('>');
        }
        key.append('(');
        String[] parameters = method.getParameterTypes();
        int i = 0;
        int length2 = parameters.length;
        while (i < length2) {
            key.append(parameters[i].replace('.', '/'));
            ++i;
        }
        key.append(')');
        if (forceOpen) {
            key.append(method.getReturnType().replace('.', '/'));
        } else {
            key.append('V');
        }
        return key.toString();
    }

    protected String getKey(IType type, boolean forceOpen) throws JavaModelException {
        StringBuffer key = new StringBuffer();
        key.append('L');
        String packageName = type.getPackageFragment().getElementName();
        key.append(packageName.replace('.', '/'));
        if (packageName.length() > 0) {
            key.append('/');
        }
        String typeQualifiedName = type.getTypeQualifiedName('$');
        ICompilationUnit cu = (ICompilationUnit)type.getAncestor(5);
        if (cu != null) {
            String topLevelTypeName;
            String cuName = cu.getElementName();
            String mainTypeName = cuName.substring(0, cuName.lastIndexOf(46));
            int end = typeQualifiedName.indexOf(36);
            if (end == -1) {
                end = typeQualifiedName.length();
            }
            if (!mainTypeName.equals(topLevelTypeName = typeQualifiedName.substring(0, end))) {
                key.append(mainTypeName);
                key.append('~');
            }
        }
        key.append(typeQualifiedName);
        key.append(';');
        return key.toString();
    }

    protected String getFullyQualifiedParameterizedName(String fullyQualifiedName, String uniqueKey) throws JavaModelException {
        String[] typeArguments = new BindingKey(uniqueKey).getTypeArguments();
        int length = typeArguments.length;
        if (length == 0) {
            return fullyQualifiedName;
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append(fullyQualifiedName);
        buffer.append('<');
        int i = 0;
        while (i < length) {
            String typeArgument = typeArguments[i];
            buffer.append(Signature.toString(typeArgument));
            if (i < length - 1) {
                buffer.append(',');
            }
            ++i;
        }
        buffer.append('>');
        return buffer.toString();
    }

    protected IPackageFragment getPackageFragment() {
        return null;
    }

    public String getFullyQualifiedName(char enclosingTypeSeparator, boolean showParameters) throws JavaModelException {
        String packageName = this.getPackageFragment().getElementName();
        if (packageName.equals("")) {
            return this.getTypeQualifiedName(enclosingTypeSeparator, showParameters);
        }
        return String.valueOf(packageName) + '.' + this.getTypeQualifiedName(enclosingTypeSeparator, showParameters);
    }

    public String getTypeQualifiedName(char enclosingTypeSeparator, boolean showParameters) throws JavaModelException {
        NamedMember declaringType;
        switch (this.parent.getElementType()) {
            case 5: {
                if (showParameters) {
                    StringBuffer buffer = new StringBuffer(this.name);
                    this.appendTypeParameters(buffer);
                    return buffer.toString();
                }
                return this.name;
            }
            case 6: {
                String classFileName = this.parent.getElementName();
                String typeName = classFileName.indexOf(36) == -1 ? this.name : classFileName.substring(0, classFileName.lastIndexOf(46)).replace('$', enclosingTypeSeparator);
                if (showParameters) {
                    StringBuffer buffer = new StringBuffer(typeName);
                    this.appendTypeParameters(buffer);
                    return buffer.toString();
                }
                return typeName;
            }
            case 7: {
                declaringType = (NamedMember)this.parent;
                break;
            }
            case 8: 
            case 9: 
            case 10: {
                declaringType = (NamedMember)((Object)((IMember)((Object)this.parent)).getDeclaringType());
                break;
            }
            default: {
                return null;
            }
        }
        StringBuffer buffer = new StringBuffer(declaringType.getTypeQualifiedName(enclosingTypeSeparator, showParameters));
        buffer.append(enclosingTypeSeparator);
        String simpleName = this.name.length() == 0 ? Integer.toString(this.occurrenceCount) : this.name;
        buffer.append(simpleName);
        if (showParameters) {
            this.appendTypeParameters(buffer);
        }
        return buffer.toString();
    }

    protected ITypeParameter[] getTypeParameters() throws JavaModelException {
        return null;
    }

    public String[][] resolveType(String typeName) throws JavaModelException {
        return this.resolveType(typeName, DefaultWorkingCopyOwner.PRIMARY);
    }

    public String[][] resolveType(String typeName, WorkingCopyOwner owner) throws JavaModelException {
        JavaProject project = (JavaProject)this.getJavaProject();
        SearchableEnvironment environment = project.newSearchableNameEnvironment(owner);
        class TypeResolveRequestor
        implements ISelectionRequestor {
            String[][] answers;
            final /* synthetic */ NamedMember this$0;

            TypeResolveRequestor(NamedMember namedMember) {
                this.this$0 = namedMember;
                this.answers = null;
            }

            public void acceptType(char[] packageName, char[] tName, int modifiers, boolean isDeclaration, char[] uniqueKey, int start, int end) {
                String[] answer = new String[]{new String(packageName), new String(tName)};
                if (this.answers == null) {
                    this.answers = new String[][]{answer};
                } else {
                    int length = this.answers.length;
                    this.answers = new String[length + 1][];
                    System.arraycopy(this.answers, 0, this.answers, 0, length);
                    this.answers[length] = answer;
                }
            }

            public void acceptError(CategorizedProblem error) {
            }

            public void acceptField(char[] declaringTypePackageName, char[] declaringTypeName, char[] fieldName, boolean isDeclaration, char[] uniqueKey, int start, int end) {
            }

            public void acceptMethod(char[] declaringTypePackageName, char[] declaringTypeName, String enclosingDeclaringTypeSignature, char[] selector, char[][] parameterPackageNames, char[][] parameterTypeNames, String[] parameterSignatures, char[][] typeParameterNames, char[][][] typeParameterBoundNames, boolean isConstructor, boolean isDeclaration, char[] uniqueKey, int start, int end) {
            }

            public void acceptPackage(char[] packageName) {
            }

            public void acceptTypeParameter(char[] declaringTypePackageName, char[] declaringTypeName, char[] typeParameterName, boolean isDeclaration, int start, int end) {
            }

            public void acceptMethodTypeParameter(char[] declaringTypePackageName, char[] declaringTypeName, char[] selector, int selectorStart, int selcetorEnd, char[] typeParameterName, boolean isDeclaration, int start, int end) {
            }
        }
        TypeResolveRequestor requestor = new TypeResolveRequestor(this);
        SelectionEngine engine = new SelectionEngine(environment, requestor, project.getOptions(true), owner);
        engine.selectType(typeName.toCharArray(), (IType)((Object)this));
        if (NameLookup.VERBOSE) {
            System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + environment.nameLookup.timeSpentInSeekTypesInSourcePackage + "ms");
            System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + environment.nameLookup.timeSpentInSeekTypesInBinaryPackage + "ms");
        }
        return requestor.answers;
    }
}

