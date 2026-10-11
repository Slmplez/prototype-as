/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.Flags
 *  org.eclipse.jdt.core.IType
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.core.SourceRange
 *  org.eclipse.jdt.core.dom.ASTNode
 *  org.eclipse.jdt.core.dom.ASTVisitor
 *  org.eclipse.jdt.core.dom.AbstractTypeDeclaration
 *  org.eclipse.jdt.core.dom.AnnotationTypeDeclaration
 *  org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration
 *  org.eclipse.jdt.core.dom.AnonymousClassDeclaration
 *  org.eclipse.jdt.core.dom.ArrayAccess
 *  org.eclipse.jdt.core.dom.ArrayCreation
 *  org.eclipse.jdt.core.dom.ArrayInitializer
 *  org.eclipse.jdt.core.dom.ArrayType
 *  org.eclipse.jdt.core.dom.AssertStatement
 *  org.eclipse.jdt.core.dom.Assignment
 *  org.eclipse.jdt.core.dom.Block
 *  org.eclipse.jdt.core.dom.BlockComment
 *  org.eclipse.jdt.core.dom.BodyDeclaration
 *  org.eclipse.jdt.core.dom.BooleanLiteral
 *  org.eclipse.jdt.core.dom.BreakStatement
 *  org.eclipse.jdt.core.dom.CastExpression
 *  org.eclipse.jdt.core.dom.CatchClause
 *  org.eclipse.jdt.core.dom.CharacterLiteral
 *  org.eclipse.jdt.core.dom.ClassInstanceCreation
 *  org.eclipse.jdt.core.dom.CompilationUnit
 *  org.eclipse.jdt.core.dom.ConditionalExpression
 *  org.eclipse.jdt.core.dom.ConstructorInvocation
 *  org.eclipse.jdt.core.dom.ContinueStatement
 *  org.eclipse.jdt.core.dom.DoStatement
 *  org.eclipse.jdt.core.dom.EmptyStatement
 *  org.eclipse.jdt.core.dom.EnhancedForStatement
 *  org.eclipse.jdt.core.dom.EnumConstantDeclaration
 *  org.eclipse.jdt.core.dom.EnumDeclaration
 *  org.eclipse.jdt.core.dom.ExpressionStatement
 *  org.eclipse.jdt.core.dom.FieldAccess
 *  org.eclipse.jdt.core.dom.FieldDeclaration
 *  org.eclipse.jdt.core.dom.ForStatement
 *  org.eclipse.jdt.core.dom.IfStatement
 *  org.eclipse.jdt.core.dom.ImportDeclaration
 *  org.eclipse.jdt.core.dom.InfixExpression
 *  org.eclipse.jdt.core.dom.Initializer
 *  org.eclipse.jdt.core.dom.InstanceofExpression
 *  org.eclipse.jdt.core.dom.Javadoc
 *  org.eclipse.jdt.core.dom.LabeledStatement
 *  org.eclipse.jdt.core.dom.LineComment
 *  org.eclipse.jdt.core.dom.MarkerAnnotation
 *  org.eclipse.jdt.core.dom.MemberRef
 *  org.eclipse.jdt.core.dom.MemberValuePair
 *  org.eclipse.jdt.core.dom.MethodDeclaration
 *  org.eclipse.jdt.core.dom.MethodInvocation
 *  org.eclipse.jdt.core.dom.MethodRef
 *  org.eclipse.jdt.core.dom.MethodRefParameter
 *  org.eclipse.jdt.core.dom.Modifier
 *  org.eclipse.jdt.core.dom.Name
 *  org.eclipse.jdt.core.dom.NormalAnnotation
 *  org.eclipse.jdt.core.dom.NullLiteral
 *  org.eclipse.jdt.core.dom.NumberLiteral
 *  org.eclipse.jdt.core.dom.PackageDeclaration
 *  org.eclipse.jdt.core.dom.ParameterizedType
 *  org.eclipse.jdt.core.dom.ParenthesizedExpression
 *  org.eclipse.jdt.core.dom.PostfixExpression
 *  org.eclipse.jdt.core.dom.PrefixExpression
 *  org.eclipse.jdt.core.dom.PrimitiveType
 *  org.eclipse.jdt.core.dom.QualifiedName
 *  org.eclipse.jdt.core.dom.QualifiedType
 *  org.eclipse.jdt.core.dom.ReturnStatement
 *  org.eclipse.jdt.core.dom.SimpleName
 *  org.eclipse.jdt.core.dom.SimpleType
 *  org.eclipse.jdt.core.dom.SingleMemberAnnotation
 *  org.eclipse.jdt.core.dom.SingleVariableDeclaration
 *  org.eclipse.jdt.core.dom.StringLiteral
 *  org.eclipse.jdt.core.dom.SuperConstructorInvocation
 *  org.eclipse.jdt.core.dom.SuperFieldAccess
 *  org.eclipse.jdt.core.dom.SuperMethodInvocation
 *  org.eclipse.jdt.core.dom.SwitchCase
 *  org.eclipse.jdt.core.dom.SwitchStatement
 *  org.eclipse.jdt.core.dom.SynchronizedStatement
 *  org.eclipse.jdt.core.dom.TagElement
 *  org.eclipse.jdt.core.dom.TextElement
 *  org.eclipse.jdt.core.dom.ThisExpression
 *  org.eclipse.jdt.core.dom.ThrowStatement
 *  org.eclipse.jdt.core.dom.TryStatement
 *  org.eclipse.jdt.core.dom.Type
 *  org.eclipse.jdt.core.dom.TypeDeclaration
 *  org.eclipse.jdt.core.dom.TypeDeclarationStatement
 *  org.eclipse.jdt.core.dom.TypeLiteral
 *  org.eclipse.jdt.core.dom.TypeParameter
 *  org.eclipse.jdt.core.dom.UnionType
 *  org.eclipse.jdt.core.dom.VariableDeclarationExpression
 *  org.eclipse.jdt.core.dom.VariableDeclarationFragment
 *  org.eclipse.jdt.core.dom.VariableDeclarationStatement
 *  org.eclipse.jdt.core.dom.WhileStatement
 *  org.eclipse.jdt.core.dom.WildcardType
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayAccess;
import org.eclipse.jdt.core.dom.ArrayCreation;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.AssertStatement;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BlockComment;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.BooleanLiteral;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CharacterLiteral;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.InstanceofExpression;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.LineComment;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.MethodRefParameter;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.NullLiteral;
import org.eclipse.jdt.core.dom.NumberLiteral;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ParenthesizedExpression;
import org.eclipse.jdt.core.dom.PostfixExpression;
import org.eclipse.jdt.core.dom.PrefixExpression;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.SynchronizedStatement;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.dom.TextElement;
import org.eclipse.jdt.core.dom.ThisExpression;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclarationStatement;
import org.eclipse.jdt.core.dom.TypeLiteral;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;

public class SourceBasedSourceGenerator
extends ASTVisitor {
    private static final String RUN_METHOD_NAME = "___run";
    private static final String EVAL_METHOD_NAME = "___eval";
    private static final String EVAL_FIELD_NAME = "___field";
    private String[] fLocalVariableTypeNames;
    private String[] fLocalVariableNames;
    private String fCodeSnippet;
    private boolean fRightTypeFound = false;
    private boolean fCreateInAStaticMethod;
    private boolean fEvaluateNextEndTypeDeclaration;
    private String fError;
    private IType fType;
    private StringBuffer fSource;
    private String fLastTypeName;
    private String fCompilationUnitName;
    private int fSnippetStartPosition;
    private int fRunMethodStartOffset;
    private int fRunMethodLength;
    private int fSourceMajorLevel;
    private int fSourceMinorLevel;
    private Set fTypeParameters = new HashSet();

    public SourceBasedSourceGenerator(IType type, boolean createInAStaticMethod, String[] localTypesNames, String[] localVariables, String codeSnippet, String sourceLevel) {
        this.fType = type;
        this.fLocalVariableTypeNames = localTypesNames;
        this.fLocalVariableNames = localVariables;
        this.fCodeSnippet = codeSnippet;
        this.fCreateInAStaticMethod = createInAStaticMethod;
        int index = sourceLevel.indexOf(46);
        String num = sourceLevel.substring(0, index);
        this.fSourceMajorLevel = Integer.valueOf(num);
        num = sourceLevel.substring(index + 1);
        this.fSourceMinorLevel = Integer.valueOf(num);
    }

    public String getSource() {
        if (this.fSource == null) {
            return null;
        }
        return this.fSource.toString();
    }

    public String getCompilationUnitName() {
        return this.fCompilationUnitName;
    }

    public int getSnippetStart() {
        return this.fSnippetStartPosition;
    }

    public int getRunMethodStart() {
        return this.fSnippetStartPosition - this.fRunMethodStartOffset;
    }

    public int getRunMethodLength() {
        return this.fRunMethodLength;
    }

    private boolean rightTypeFound() {
        return this.fRightTypeFound;
    }

    private void setRightTypeFound(boolean value) {
        this.fRightTypeFound = value;
    }

    public boolean hasError() {
        return this.fError != null;
    }

    public void setError(String errorDesc) {
        this.fError = errorDesc;
    }

    public String getError() {
        return this.fError;
    }

    private StringBuffer buildRunMethod(List bodyDeclarations) {
        StringBuffer buffer = new StringBuffer();
        if (this.fCreateInAStaticMethod) {
            buffer.append("static ");
        }
        if (this.isSourceLevelGreaterOrEqual(1, 5) && !this.fTypeParameters.isEmpty()) {
            Iterator iterator = this.fTypeParameters.iterator();
            buffer.append('<');
            while (iterator.hasNext()) {
                String name = (String)iterator.next();
                buffer.append(name);
                if (!iterator.hasNext()) continue;
                buffer.append(", ");
            }
            buffer.append('>');
        }
        buffer.append("void ");
        buffer.append(this.getUniqueMethodName(RUN_METHOD_NAME, bodyDeclarations));
        buffer.append('(');
        int i = 0;
        int length = this.fLocalVariableNames.length;
        while (i < length) {
            buffer.append(this.getDotName(this.fLocalVariableTypeNames[i]));
            buffer.append(' ');
            buffer.append(this.fLocalVariableNames[i]);
            if (i + 1 < length) {
                buffer.append(", ");
            }
            ++i;
        }
        buffer.append(") throws Throwable {");
        buffer.append('\n');
        this.fRunMethodStartOffset = this.fSnippetStartPosition = buffer.length() - 2;
        String codeSnippet = new String(this.fCodeSnippet).trim();
        buffer.append(codeSnippet);
        buffer.append('\n');
        buffer.append('}').append('\n');
        this.fRunMethodLength = buffer.length();
        return buffer;
    }

    private String getDotName(String typeName) {
        return typeName.replace('$', '.');
    }

    private boolean isRightType(ASTNode node) {
        SourceRange range = new SourceRange(node.getStartPosition(), node.getLength());
        try {
            return this.fType.getSourceRange().equals(range);
        }
        catch (JavaModelException e) {
            JDIDebugPlugin.log(e.getStatus());
            return false;
        }
    }

    private StringBuffer buildTypeBody(StringBuffer buffer, List list) {
        StringBuffer source = new StringBuffer();
        source.append('{').append('\n');
        if (buffer != null) {
            this.fSnippetStartPosition += source.length();
        }
        source.append(this.buildBody(buffer, list));
        source.append('}').append('\n');
        return source;
    }

    private StringBuffer buildEnumBody(StringBuffer buffer, List constantDeclarations, List bodyDeclarations) {
        StringBuffer source = new StringBuffer();
        source.append('{').append('\n');
        if (constantDeclarations.isEmpty()) {
            source.append(';').append('\n');
        } else {
            Iterator iter = constantDeclarations.iterator();
            while (iter.hasNext()) {
                source.append(((EnumConstantDeclaration)iter.next()).getName().getIdentifier());
                if (iter.hasNext()) {
                    source.append(',');
                } else {
                    source.append(';');
                }
                source.append('\n');
            }
        }
        if (buffer != null) {
            this.fSnippetStartPosition += source.length();
        }
        source.append(this.buildBody(buffer, bodyDeclarations));
        source.append('}').append('\n');
        return source;
    }

    private StringBuffer buildBody(StringBuffer buffer, List list) {
        StringBuffer source = new StringBuffer();
        if (buffer != null) {
            this.fSnippetStartPosition += source.length();
            source.append(buffer.toString());
        }
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            EnumDeclaration enumDeclaration;
            BodyDeclaration bodyDeclaration = (BodyDeclaration)iterator.next();
            if (bodyDeclaration instanceof FieldDeclaration) {
                source.append(this.buildFieldDeclaration((FieldDeclaration)bodyDeclaration));
                continue;
            }
            if (bodyDeclaration instanceof MethodDeclaration) {
                source.append(this.buildMethodDeclaration((MethodDeclaration)bodyDeclaration));
                continue;
            }
            if (bodyDeclaration instanceof TypeDeclaration) {
                TypeDeclaration typeDeclaration = (TypeDeclaration)bodyDeclaration;
                if (typeDeclaration.getName().getIdentifier().equals(this.fLastTypeName)) continue;
                source.append(this.buildTypeDeclaration(null, typeDeclaration));
                continue;
            }
            if (!(bodyDeclaration instanceof EnumDeclaration) || (enumDeclaration = (EnumDeclaration)bodyDeclaration).getName().getIdentifier().equals(this.fLastTypeName)) continue;
            source.append(this.buildEnumDeclaration(null, enumDeclaration));
        }
        return source;
    }

    private StringBuffer buildFieldDeclaration(FieldDeclaration fieldDeclaration) {
        StringBuffer source = new StringBuffer();
        source.append(Flags.toString((int)fieldDeclaration.getModifiers()));
        source.append(' ');
        source.append(this.getDotName(this.getTypeName(fieldDeclaration.getType())));
        source.append(' ');
        boolean first = true;
        Iterator iterator = fieldDeclaration.fragments().iterator();
        while (iterator.hasNext()) {
            VariableDeclarationFragment variableDeclarationFragment = (VariableDeclarationFragment)iterator.next();
            if (first) {
                first = false;
            } else {
                source.append(',');
            }
            source.append(variableDeclarationFragment.getName().getIdentifier());
            int i = 0;
            int dim = variableDeclarationFragment.getExtraDimensions();
            while (i < dim) {
                source.append('[').append(']');
                ++i;
            }
        }
        source.append(';').append('\n');
        return source;
    }

    private StringBuffer buildMethodDeclaration(MethodDeclaration methodDeclaration) {
        StringBuffer source = new StringBuffer();
        int modifiers = methodDeclaration.getModifiers();
        source.append(Flags.toString((int)modifiers));
        source.append(' ');
        this.appendTypeParameters(source, methodDeclaration.typeParameters());
        boolean isConstructor = methodDeclaration.isConstructor();
        if (!isConstructor) {
            source.append(this.getDotName(this.getTypeName(methodDeclaration.getReturnType2())));
            source.append(' ');
        }
        source.append(methodDeclaration.getName().getIdentifier());
        source.append(' ').append('(');
        boolean first = true;
        Iterator iterator = methodDeclaration.parameters().iterator();
        while (iterator.hasNext()) {
            SingleVariableDeclaration singleVariableDeclaration = (SingleVariableDeclaration)iterator.next();
            if (first) {
                first = false;
            } else {
                source.append(',');
            }
            source.append(this.getDotName(this.getTypeName(singleVariableDeclaration.getType())));
            if (singleVariableDeclaration.isVarargs()) {
                source.append("...");
            }
            source.append(' ');
            source.append(singleVariableDeclaration.getName().getIdentifier());
            this.appendExtraDimensions(source, singleVariableDeclaration.getExtraDimensions());
        }
        source.append(')');
        this.appendExtraDimensions(source, methodDeclaration.getExtraDimensions());
        first = true;
        iterator = methodDeclaration.thrownExceptions().iterator();
        while (iterator.hasNext()) {
            Name name = (Name)iterator.next();
            if (first) {
                first = false;
                source.append(" throws ");
            } else {
                source.append(',');
            }
            source.append(this.getQualifiedIdentifier(name));
        }
        if (Flags.isAbstract((int)modifiers) || Flags.isNative((int)modifiers)) {
            source.append(";\n");
        } else {
            source.append('{').append('\n');
            if (!isConstructor) {
                source.append(this.getReturnExpression(methodDeclaration.getReturnType2()));
            }
            source.append('}').append('\n');
        }
        return source;
    }

    private void appendExtraDimensions(StringBuffer source, int extraDimension) {
        if (extraDimension > 0) {
            source.append(' ');
            int i = 0;
            while (i < extraDimension) {
                source.append("[]");
                ++i;
            }
        }
    }

    private StringBuffer buildEnumDeclaration(StringBuffer buffer, EnumDeclaration enumDeclaration) {
        StringBuffer source = new StringBuffer();
        source.append(Flags.toString((int)enumDeclaration.getModifiers()));
        source.append(" enum ");
        source.append(enumDeclaration.getName().getIdentifier());
        Iterator iterator = enumDeclaration.superInterfaceTypes().iterator();
        if (iterator.hasNext()) {
            source.append(" implements ");
            source.append(this.getTypeName((Type)iterator.next()));
            while (iterator.hasNext()) {
                source.append(',');
                source.append(this.getTypeName((Type)iterator.next()));
            }
        }
        if (buffer != null) {
            this.fSnippetStartPosition += source.length();
        }
        source.append(this.buildEnumBody(buffer, enumDeclaration.enumConstants(), enumDeclaration.bodyDeclarations()));
        return source;
    }

    private StringBuffer buildTypeDeclaration(StringBuffer buffer, TypeDeclaration typeDeclaration) {
        Iterator iter;
        Type superClass;
        StringBuffer source = new StringBuffer();
        source.append(Flags.toString((int)typeDeclaration.getModifiers()));
        if (typeDeclaration.isInterface()) {
            source.append(" interface ");
        } else {
            source.append(" class ");
        }
        source.append(typeDeclaration.getName().getIdentifier());
        List typeParameters = typeDeclaration.typeParameters();
        if (!typeParameters.isEmpty() && this.isSourceLevelGreaterOrEqual(1, 5)) {
            Iterator iter2;
            source.append('<');
            Iterator iter3 = typeParameters.iterator();
            TypeParameter typeParameter = (TypeParameter)iter3.next();
            source.append(typeParameter.getName().getIdentifier());
            List typeBounds = typeParameter.typeBounds();
            if (!typeBounds.isEmpty()) {
                source.append(" extends ");
                iter2 = typeBounds.iterator();
                source.append(this.getTypeName((Type)iter2.next()));
                while (iter2.hasNext()) {
                    source.append('&');
                    source.append(this.getTypeName((Type)iter2.next()));
                }
            }
            while (iter3.hasNext()) {
                source.append(',');
                typeParameter = (TypeParameter)iter3.next();
                source.append(typeParameter.getName().getIdentifier());
                typeBounds = typeParameter.typeBounds();
                if (typeBounds.isEmpty()) continue;
                source.append(" extends ");
                iter2 = typeBounds.iterator();
                source.append(this.getTypeName((Type)iter2.next()));
                while (iter2.hasNext()) {
                    source.append('&');
                    source.append(this.getTypeName((Type)iter2.next()));
                }
            }
            source.append('>');
        }
        if ((superClass = typeDeclaration.getSuperclassType()) != null) {
            source.append(" extends ");
            source.append(this.getTypeName(superClass));
        }
        if ((iter = typeDeclaration.superInterfaceTypes().iterator()).hasNext()) {
            if (typeDeclaration.isInterface()) {
                source.append(" extends ");
            } else {
                source.append(" implements ");
            }
            source.append(this.getTypeName((Type)iter.next()));
            while (iter.hasNext()) {
                source.append(',');
                source.append(this.getTypeName((Type)iter.next()));
            }
        }
        if (buffer != null) {
            this.fSnippetStartPosition += source.length();
        }
        source.append(this.buildTypeBody(buffer, typeDeclaration.bodyDeclarations()));
        return source;
    }

    private StringBuffer buildCompilationUnit(StringBuffer buffer, CompilationUnit compilationUnit) {
        StringBuffer source = new StringBuffer();
        PackageDeclaration packageDeclaration = compilationUnit.getPackage();
        if (packageDeclaration != null) {
            source.append("package ");
            source.append(this.getQualifiedIdentifier(packageDeclaration.getName()));
            source.append(";\n");
        }
        Iterator iterator = compilationUnit.imports().iterator();
        while (iterator.hasNext()) {
            ImportDeclaration importDeclaration = (ImportDeclaration)iterator.next();
            source.append("import ");
            if (importDeclaration.isStatic()) {
                source.append("static ");
            }
            source.append(this.getQualifiedIdentifier(importDeclaration.getName()));
            if (importDeclaration.isOnDemand()) {
                source.append(".*");
            }
            source.append(";\n");
        }
        this.fSnippetStartPosition += source.length();
        source.append(buffer);
        iterator = compilationUnit.types().iterator();
        while (iterator.hasNext()) {
            AbstractTypeDeclaration typeDeclaration = (AbstractTypeDeclaration)iterator.next();
            if (Flags.isPublic((int)typeDeclaration.getModifiers())) {
                this.fCompilationUnitName = typeDeclaration.getName().getIdentifier();
            }
            if (this.fLastTypeName.equals(typeDeclaration.getName().getIdentifier())) continue;
            if (typeDeclaration instanceof TypeDeclaration) {
                source.append(this.buildTypeDeclaration(null, (TypeDeclaration)typeDeclaration));
                continue;
            }
            if (!(typeDeclaration instanceof EnumDeclaration)) continue;
            source.append(this.buildEnumDeclaration(null, (EnumDeclaration)typeDeclaration));
        }
        if (this.fCompilationUnitName == null) {
            this.fCompilationUnitName = "Eval";
        }
        return source;
    }

    private String getUniqueMethodName(String methodName, List bodyDeclarations) {
        Iterator iter = bodyDeclarations.iterator();
        while (iter.hasNext()) {
            MethodDeclaration method;
            String foundName;
            BodyDeclaration bodyDeclaration = (BodyDeclaration)iter.next();
            if (!(bodyDeclaration instanceof MethodDeclaration) || !(foundName = (method = (MethodDeclaration)bodyDeclaration).getName().getIdentifier()).startsWith(methodName)) continue;
            methodName = String.valueOf(foundName) + '_';
        }
        return methodName;
    }

    private String getUniqueFieldName(String fieldName, List bodyDeclarations) {
        Iterator iter = bodyDeclarations.iterator();
        while (iter.hasNext()) {
            BodyDeclaration bodyDeclaration = (BodyDeclaration)iter.next();
            if (!(bodyDeclaration instanceof FieldDeclaration)) continue;
            FieldDeclaration fieldDeclaration = (FieldDeclaration)bodyDeclaration;
            Iterator iterator = fieldDeclaration.fragments().iterator();
            while (iterator.hasNext()) {
                String foundName = ((VariableDeclarationFragment)iterator.next()).getName().getIdentifier();
                if (!foundName.startsWith(fieldName)) continue;
                fieldName = String.valueOf(foundName) + '_';
            }
        }
        return fieldName;
    }

    private String getQualifiedIdentifier(Name name) {
        String typeName = "";
        while (name.isQualifiedName()) {
            QualifiedName qualifiedName = (QualifiedName)name;
            typeName = "." + qualifiedName.getName().getIdentifier() + typeName;
            name = qualifiedName.getQualifier();
        }
        if (!name.isSimpleName()) {
            return null;
        }
        typeName = String.valueOf(((SimpleName)name).getIdentifier()) + typeName;
        return typeName;
    }

    public String getTypeName(Type type) {
        if (type.isSimpleType()) {
            String name = this.getQualifiedIdentifier(((SimpleType)type).getName());
            if (!this.isSourceLevelGreaterOrEqual(1, 5) && this.fTypeParameters.contains(name)) {
                return "Object";
            }
            return name;
        }
        if (type.isArrayType()) {
            return String.valueOf(this.getTypeName(((ArrayType)type).getComponentType())) + "[]";
        }
        if (type.isPrimitiveType()) {
            return ((PrimitiveType)type).getPrimitiveTypeCode().toString();
        }
        if (type.isQualifiedType()) {
            QualifiedType qualifiedType = (QualifiedType)type;
            return String.valueOf(this.getTypeName(qualifiedType.getQualifier())) + '.' + qualifiedType.getName().getIdentifier();
        }
        if (type.isParameterizedType()) {
            ParameterizedType parameterizedType = (ParameterizedType)type;
            StringBuffer buff = new StringBuffer(this.getTypeName(parameterizedType.getType()));
            Iterator iter = parameterizedType.typeArguments().iterator();
            if (iter.hasNext() && this.isSourceLevelGreaterOrEqual(1, 5)) {
                buff.append('<');
                buff.append(this.getTypeName((Type)iter.next()));
                while (iter.hasNext()) {
                    buff.append(',');
                    buff.append(this.getTypeName((Type)iter.next()));
                }
                buff.append('>');
            }
            return buff.toString();
        }
        if (type.isWildcardType()) {
            WildcardType wildcardType = (WildcardType)type;
            StringBuffer buff = new StringBuffer("?");
            Type bound = wildcardType.getBound();
            if (bound != null) {
                buff.append(wildcardType.isUpperBound() ? " extends " : " super ");
                buff.append(this.getTypeName(bound));
            }
            return buff.toString();
        }
        return null;
    }

    public String getReturnExpression(Type type) {
        if (type.isSimpleType() || type.isArrayType() || type.isQualifiedType() || type.isWildcardType() || type.isParameterizedType()) {
            return "return null;";
        }
        if (type.isPrimitiveType()) {
            String typeName = ((PrimitiveType)type).getPrimitiveTypeCode().toString();
            char char0 = typeName.charAt(0);
            if (char0 == 'v') {
                return "";
            }
            char char1 = typeName.charAt(1);
            if (char0 == 'b' && char1 == 'o') {
                return "return false;";
            }
            return "return 0;";
        }
        return null;
    }

    public void endVisit(ClassInstanceCreation node) {
        if (this.hasError()) {
            return;
        }
        AnonymousClassDeclaration anonymousClassDeclaration = node.getAnonymousClassDeclaration();
        if (anonymousClassDeclaration != null) {
            if (!this.rightTypeFound() && this.isRightType((ASTNode)node)) {
                this.setRightTypeFound(true);
                this.fSource = this.buildRunMethod(anonymousClassDeclaration.bodyDeclarations());
                this.fEvaluateNextEndTypeDeclaration = true;
            }
            if (this.rightTypeFound()) {
                List bodyDeclarations = anonymousClassDeclaration.bodyDeclarations();
                StringBuffer source = this.buildTypeBody(this.fSource, bodyDeclarations);
                ASTNode parent = node.getParent();
                while (!(parent instanceof MethodDeclaration || parent instanceof FieldDeclaration || parent instanceof Initializer || parent == null)) {
                    parent = parent.getParent();
                }
                this.fSource = new StringBuffer();
                if (parent instanceof Initializer) {
                    this.createAnonymousEvalMethod(true, bodyDeclarations, this.getTypeName(node.getType()), source);
                } else if (parent instanceof MethodDeclaration) {
                    MethodDeclaration enclosingMethodDeclaration = (MethodDeclaration)parent;
                    this.createAnonymousEvalMethod(Flags.isStatic((int)enclosingMethodDeclaration.getModifiers()), bodyDeclarations, this.getTypeName(node.getType()), source);
                } else if (parent instanceof FieldDeclaration) {
                    FieldDeclaration enclosingFieldDeclaration = (FieldDeclaration)parent;
                    if (Flags.isStatic((int)enclosingFieldDeclaration.getModifiers())) {
                        this.fSource.append("static ");
                    }
                    Type type = this.getParentType(enclosingFieldDeclaration.getType());
                    this.fSource.append(this.getQualifiedIdentifier(((SimpleType)type).getName()));
                    this.fSource.append(' ');
                    this.fSource.append(this.getUniqueFieldName(EVAL_FIELD_NAME, bodyDeclarations));
                    this.fSource.append(" = new ");
                    this.fSource.append(this.getTypeName(node.getType()));
                    this.fSource.append("()");
                    this.fSnippetStartPosition += this.fSource.length();
                    this.fSource.append(source);
                    this.fSource.append(";\n");
                }
                this.fLastTypeName = "";
            }
        }
    }

    void createAnonymousEvalMethod(boolean isstatic, List bodydecls, String typename, StringBuffer body) {
        if (isstatic) {
            this.fSource.append("static ");
        }
        this.fSource.append("void ");
        this.fSource.append(this.getUniqueMethodName(EVAL_METHOD_NAME, bodydecls));
        this.fSource.append("() {\n");
        this.fSource.append("new ");
        this.fSource.append(typename);
        this.fSource.append("()");
        this.fSnippetStartPosition += this.fSource.length();
        this.fSource.append(body);
        this.fSource.append(";}\n");
    }

    private Type getParentType(Type type) {
        if (type instanceof ArrayType) {
            return this.getParentType(((ArrayType)type).getComponentType());
        }
        if (type instanceof ParameterizedType) {
            return this.getParentType(((ParameterizedType)type).getType());
        }
        return type;
    }

    public void endVisit(CompilationUnit node) {
        if (this.hasError()) {
            return;
        }
        if (!this.rightTypeFound()) {
            this.fSource = null;
            return;
        }
        this.fSource = this.buildCompilationUnit(this.fSource, node);
    }

    public void endVisit(EnumDeclaration node) {
        if (this.hasError()) {
            return;
        }
        if (!this.rightTypeFound() && this.isRightType((ASTNode)node)) {
            this.setRightTypeFound(true);
            this.fSource = this.buildRunMethod(node.bodyDeclarations());
            this.fEvaluateNextEndTypeDeclaration = true;
        }
        if (!this.fEvaluateNextEndTypeDeclaration) {
            this.fEvaluateNextEndTypeDeclaration = true;
            return;
        }
        if (this.rightTypeFound()) {
            StringBuffer source = this.buildEnumDeclaration(this.fSource, node);
            if (node.isLocalTypeDeclaration()) {
                ASTNode parent = node.getParent();
                while (!(parent instanceof MethodDeclaration)) {
                    parent = parent.getParent();
                }
                MethodDeclaration enclosingMethodDeclaration = (MethodDeclaration)parent;
                this.fSource = new StringBuffer();
                if (Flags.isStatic((int)enclosingMethodDeclaration.getModifiers())) {
                    this.fSource.append("static ");
                }
                this.fSource.append("void ___eval() {\n");
                this.fSnippetStartPosition += this.fSource.length();
                this.fSource.append(source);
                this.fSource.append("}\n");
                this.fLastTypeName = "";
            } else {
                this.fSource = source;
                this.fLastTypeName = node.getName().getIdentifier();
            }
        }
    }

    public void endVisit(TypeDeclaration node) {
        if (this.hasError()) {
            return;
        }
        if (!this.rightTypeFound() && this.isRightType((ASTNode)node)) {
            this.setRightTypeFound(true);
            this.fSource = this.buildRunMethod(node.bodyDeclarations());
            this.fEvaluateNextEndTypeDeclaration = true;
        }
        if (!this.fEvaluateNextEndTypeDeclaration) {
            this.fEvaluateNextEndTypeDeclaration = true;
            return;
        }
        if (this.rightTypeFound()) {
            StringBuffer source = this.buildTypeDeclaration(this.fSource, node);
            if (node.isLocalTypeDeclaration()) {
                ASTNode parent = node.getParent();
                while (!(parent instanceof MethodDeclaration)) {
                    parent = parent.getParent();
                }
                MethodDeclaration enclosingMethodDeclaration = (MethodDeclaration)parent;
                this.fSource = new StringBuffer();
                if (Flags.isStatic((int)enclosingMethodDeclaration.getModifiers())) {
                    this.fSource.append("static ");
                }
                this.fSource.append("void ___eval() {\n");
                this.fSnippetStartPosition += this.fSource.length();
                this.fSource.append(source);
                this.fSource.append("}\n");
                this.fLastTypeName = "";
            } else {
                this.fSource = source;
                this.fLastTypeName = node.getName().getIdentifier();
            }
        }
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        return false;
    }

    public boolean visit(AnnotationTypeMemberDeclaration node) {
        return false;
    }

    public boolean visit(AnonymousClassDeclaration node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ArrayAccess node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ArrayCreation node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ArrayInitializer node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ArrayType node) {
        return !this.rightTypeFound();
    }

    public boolean visit(AssertStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(Assignment node) {
        return !this.rightTypeFound();
    }

    public boolean visit(Block node) {
        return !this.rightTypeFound();
    }

    public boolean visit(BlockComment node) {
        return false;
    }

    public boolean visit(BooleanLiteral node) {
        return !this.rightTypeFound();
    }

    public boolean visit(BreakStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(CastExpression node) {
        return !this.rightTypeFound();
    }

    public boolean visit(CatchClause node) {
        return !this.rightTypeFound();
    }

    public boolean visit(CharacterLiteral node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ClassInstanceCreation node) {
        return !this.rightTypeFound();
    }

    public boolean visit(CompilationUnit node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ConditionalExpression node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ConstructorInvocation node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ContinueStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(DoStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(EmptyStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(EnhancedForStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(EnumConstantDeclaration node) {
        return !this.rightTypeFound();
    }

    public boolean visit(EnumDeclaration node) {
        if (this.rightTypeFound()) {
            this.fEvaluateNextEndTypeDeclaration = false;
            return false;
        }
        return true;
    }

    public boolean visit(ExpressionStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(FieldAccess node) {
        return !this.rightTypeFound();
    }

    public boolean visit(FieldDeclaration node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ForStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(IfStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ImportDeclaration node) {
        return !this.rightTypeFound();
    }

    public boolean visit(InfixExpression node) {
        return !this.rightTypeFound();
    }

    public boolean visit(Initializer node) {
        return !this.rightTypeFound();
    }

    public boolean visit(InstanceofExpression node) {
        return !this.rightTypeFound();
    }

    public boolean visit(Javadoc node) {
        return !this.rightTypeFound();
    }

    public boolean visit(LabeledStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(LineComment node) {
        return false;
    }

    public boolean visit(MarkerAnnotation node) {
        return false;
    }

    public boolean visit(MemberRef node) {
        return false;
    }

    public boolean visit(MemberValuePair node) {
        return false;
    }

    public boolean visit(MethodDeclaration node) {
        List typeParameters = node.typeParameters();
        if (!typeParameters.isEmpty()) {
            Iterator iterator = typeParameters.iterator();
            while (iterator.hasNext()) {
                TypeParameter typeParameter = (TypeParameter)iterator.next();
                this.fTypeParameters.add(typeParameter.toString());
            }
        }
        return !this.rightTypeFound();
    }

    public boolean visit(MethodInvocation node) {
        return !this.rightTypeFound();
    }

    public boolean visit(MethodRef node) {
        return false;
    }

    public boolean visit(MethodRefParameter node) {
        return false;
    }

    public boolean visit(Modifier node) {
        return false;
    }

    public boolean visit(NormalAnnotation node) {
        return false;
    }

    public boolean visit(NullLiteral node) {
        return !this.rightTypeFound();
    }

    public boolean visit(NumberLiteral node) {
        return !this.rightTypeFound();
    }

    public boolean visit(PackageDeclaration node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ParameterizedType node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ParenthesizedExpression node) {
        return !this.rightTypeFound();
    }

    public boolean visit(PostfixExpression node) {
        return !this.rightTypeFound();
    }

    public boolean visit(PrefixExpression node) {
        return !this.rightTypeFound();
    }

    public boolean visit(PrimitiveType node) {
        return !this.rightTypeFound();
    }

    public boolean visit(QualifiedName node) {
        return !this.rightTypeFound();
    }

    public boolean visit(QualifiedType node) {
        return false;
    }

    public boolean visit(ReturnStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(SimpleName node) {
        return !this.rightTypeFound();
    }

    public boolean visit(SimpleType node) {
        return !this.rightTypeFound();
    }

    public boolean visit(SingleMemberAnnotation node) {
        return false;
    }

    public boolean visit(SingleVariableDeclaration node) {
        return !this.rightTypeFound();
    }

    public boolean visit(StringLiteral node) {
        return !this.rightTypeFound();
    }

    public boolean visit(SuperConstructorInvocation node) {
        return !this.rightTypeFound();
    }

    public boolean visit(SuperFieldAccess node) {
        return !this.rightTypeFound();
    }

    public boolean visit(SuperMethodInvocation node) {
        return !this.rightTypeFound();
    }

    public boolean visit(SwitchCase node) {
        return !this.rightTypeFound();
    }

    public boolean visit(SwitchStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(SynchronizedStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(TagElement node) {
        return false;
    }

    public boolean visit(TextElement node) {
        return false;
    }

    public boolean visit(ThisExpression node) {
        return !this.rightTypeFound();
    }

    public boolean visit(ThrowStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(TryStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(UnionType node) {
        return !this.rightTypeFound();
    }

    public boolean visit(TypeDeclaration node) {
        List typeParameters = node.typeParameters();
        if (!typeParameters.isEmpty()) {
            Iterator iterator = typeParameters.iterator();
            while (iterator.hasNext()) {
                TypeParameter typeParameter = (TypeParameter)iterator.next();
                this.fTypeParameters.add(typeParameter.getName().getIdentifier());
            }
        }
        if (this.rightTypeFound()) {
            this.fEvaluateNextEndTypeDeclaration = false;
            return false;
        }
        return true;
    }

    public boolean visit(TypeDeclarationStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(TypeLiteral node) {
        return !this.rightTypeFound();
    }

    public boolean visit(TypeParameter node) {
        return false;
    }

    public boolean visit(VariableDeclarationExpression node) {
        return !this.rightTypeFound();
    }

    public boolean visit(VariableDeclarationFragment node) {
        return !this.rightTypeFound();
    }

    public boolean visit(VariableDeclarationStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(WhileStatement node) {
        return !this.rightTypeFound();
    }

    public boolean visit(WildcardType node) {
        return false;
    }

    public boolean isSourceLevelGreaterOrEqual(int major, int minor) {
        return this.fSourceMajorLevel > major || this.fSourceMajorLevel == major && this.fSourceMinorLevel >= minor;
    }

    private void appendTypeParameters(StringBuffer source, List typeParameters) {
        if (!typeParameters.isEmpty() && this.isSourceLevelGreaterOrEqual(1, 5)) {
            Iterator iter2;
            source.append('<');
            Iterator iter = typeParameters.iterator();
            TypeParameter typeParameter = (TypeParameter)iter.next();
            source.append(typeParameter.getName().getIdentifier());
            List typeBounds = typeParameter.typeBounds();
            if (!typeBounds.isEmpty()) {
                source.append(" extends ");
                iter2 = typeBounds.iterator();
                source.append(this.getTypeName((Type)iter2.next()));
                while (iter2.hasNext()) {
                    source.append('&');
                    source.append(this.getTypeName((Type)iter2.next()));
                }
            }
            while (iter.hasNext()) {
                source.append(',');
                typeParameter = (TypeParameter)iter.next();
                source.append(typeParameter.getName().getIdentifier());
                typeBounds = typeParameter.typeBounds();
                if (typeBounds.isEmpty()) continue;
                source.append(" extends ");
                iter2 = typeBounds.iterator();
                source.append(this.getTypeName((Type)iter2.next()));
                while (iter2.hasNext()) {
                    source.append('&');
                    source.append(this.getTypeName((Type)iter2.next()));
                }
            }
            source.append('>');
            source.append(' ');
        }
    }
}

