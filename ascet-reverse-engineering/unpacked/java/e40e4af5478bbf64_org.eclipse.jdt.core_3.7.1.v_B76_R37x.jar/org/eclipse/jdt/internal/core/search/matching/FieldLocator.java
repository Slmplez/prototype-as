/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.FieldDeclarationMatch;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfAccessedFieldsPattern;
import org.eclipse.jdt.internal.core.search.matching.FieldPattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.VariableLocator;

public class FieldLocator
extends VariableLocator {
    protected boolean isDeclarationOfAccessedFieldsPattern;

    public FieldLocator(FieldPattern pattern) {
        super(pattern);
        this.isDeclarationOfAccessedFieldsPattern = this.pattern instanceof DeclarationOfAccessedFieldsPattern;
    }

    protected int fineGrain() {
        return this.pattern.fineGrain;
    }

    public int match(ASTNode node, MatchingNodeSet nodeSet) {
        int declarationsLevel = 0;
        if (this.pattern.findReferences && node instanceof ImportReference) {
            ImportReference importRef = (ImportReference)node;
            int length = importRef.tokens.length - 1;
            if (importRef.isStatic() && (importRef.bits & 0x20000) == 0 && this.matchesName(this.pattern.name, importRef.tokens[length])) {
                char[][] compoundName = new char[length][];
                System.arraycopy(importRef.tokens, 0, compoundName, 0, length);
                FieldPattern fieldPattern = (FieldPattern)this.pattern;
                char[] declaringType = CharOperation.concat(fieldPattern.declaringQualification, fieldPattern.declaringSimpleName, '.');
                if (this.matchesName(declaringType, CharOperation.concatWith(compoundName, '.'))) {
                    declarationsLevel = this.pattern.mustResolve ? 2 : 3;
                }
            }
        }
        return nodeSet.addMatch(node, declarationsLevel);
    }

    public int match(FieldDeclaration node, MatchingNodeSet nodeSet) {
        int referencesLevel = 0;
        if (this.pattern.findReferences && this.pattern.writeAccess && !this.pattern.readAccess && node.initialization != null && this.matchesName(this.pattern.name, node.name)) {
            referencesLevel = this.pattern.mustResolve ? 2 : 3;
        }
        int declarationsLevel = 0;
        if (this.pattern.findDeclarations) {
            switch (node.getKind()) {
                case 1: 
                case 3: {
                    if (!this.matchesName(this.pattern.name, node.name) || !this.matchesTypeReference(((FieldPattern)this.pattern).typeSimpleName, node.type)) break;
                    declarationsLevel = this.pattern.mustResolve ? 2 : 3;
                }
            }
        }
        return nodeSet.addMatch(node, referencesLevel >= declarationsLevel ? referencesLevel : declarationsLevel);
    }

    protected int matchContainer() {
        if (this.pattern.findReferences || this.pattern.fineGrain != 0) {
            return 15;
        }
        return 2;
    }

    protected int matchField(FieldBinding field, boolean matchName) {
        int typeLevel;
        if (field == null) {
            return 1;
        }
        if (matchName && !this.matchesName(this.pattern.name, field.readableName())) {
            return 0;
        }
        FieldPattern fieldPattern = (FieldPattern)this.pattern;
        ReferenceBinding receiverBinding = field.declaringClass;
        if (receiverBinding == null) {
            if (field == ArrayBinding.ArrayLength) {
                return fieldPattern.declaringQualification == null && fieldPattern.declaringSimpleName == null ? 3 : 0;
            }
            return 1;
        }
        int declaringLevel = this.resolveLevelForType(fieldPattern.declaringSimpleName, fieldPattern.declaringQualification, receiverBinding);
        if (declaringLevel == 0) {
            return 0;
        }
        if (fieldPattern.declaringSimpleName == null) {
            return declaringLevel;
        }
        FieldBinding fieldBinding = field;
        if (field instanceof ParameterizedFieldBinding) {
            fieldBinding = ((ParameterizedFieldBinding)field).originalField;
        }
        return declaringLevel > (typeLevel = this.resolveLevelForType(fieldBinding.type)) ? typeLevel : declaringLevel;
    }

    protected void matchLevelAndReportImportRef(ImportReference importRef, Binding binding, MatchLocator locator) throws CoreException {
        if (importRef.isStatic() && binding instanceof FieldBinding) {
            super.matchLevelAndReportImportRef(importRef, binding, locator);
        }
    }

    protected int matchReference(Reference node, MatchingNodeSet nodeSet, boolean writeOnlyAccess) {
        if (node instanceof FieldReference) {
            if (this.matchesName(this.pattern.name, ((FieldReference)node).token)) {
                return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
            }
            return 0;
        }
        return super.matchReference(node, nodeSet, writeOnlyAccess);
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        this.matchReportReference(reference, element, null, null, elementBinding, accuracy, locator);
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, IJavaElement localElement, IJavaElement[] otherElements, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        if (this.isDeclarationOfAccessedFieldsPattern) {
            if (accuracy != 0) {
                return;
            }
            DeclarationOfAccessedFieldsPattern declPattern = (DeclarationOfAccessedFieldsPattern)this.pattern;
            while (element != null && !declPattern.enclosingElement.equals(element)) {
                element = element.getParent();
            }
            if (element != null) {
                if (reference instanceof FieldReference) {
                    this.reportDeclaration(((FieldReference)reference).binding, locator, declPattern.knownFields);
                } else if (reference instanceof QualifiedNameReference) {
                    QualifiedNameReference qNameRef = (QualifiedNameReference)reference;
                    Binding nameBinding = qNameRef.binding;
                    if (nameBinding instanceof FieldBinding) {
                        this.reportDeclaration((FieldBinding)nameBinding, locator, declPattern.knownFields);
                    }
                    int otherMax = qNameRef.otherBindings == null ? 0 : qNameRef.otherBindings.length;
                    int i = 0;
                    while (i < otherMax) {
                        this.reportDeclaration(qNameRef.otherBindings[i], locator, declPattern.knownFields);
                        ++i;
                    }
                } else if (reference instanceof SingleNameReference) {
                    this.reportDeclaration((FieldBinding)((SingleNameReference)reference).binding, locator, declPattern.knownFields);
                }
            }
        } else if (reference instanceof ImportReference) {
            ImportReference importRef = (ImportReference)reference;
            long[] positions = importRef.sourcePositions;
            int lastIndex = importRef.tokens.length - 1;
            int start = (int)(positions[lastIndex] >>> 32);
            int end = (int)positions[lastIndex];
            this.match = locator.newFieldReferenceMatch(element, localElement, elementBinding, accuracy, start, end - start + 1, importRef);
            locator.report(this.match);
        } else if (reference instanceof FieldReference) {
            FieldReference fieldReference = (FieldReference)reference;
            long position = fieldReference.nameSourcePosition;
            int start = (int)(position >>> 32);
            int end = (int)position;
            this.match = locator.newFieldReferenceMatch(element, localElement, elementBinding, accuracy, start, end - start + 1, fieldReference);
            locator.report(this.match);
        } else if (reference instanceof SingleNameReference) {
            int offset = reference.sourceStart;
            this.match = locator.newFieldReferenceMatch(element, localElement, elementBinding, accuracy, offset, reference.sourceEnd - offset + 1, reference);
            locator.report(this.match);
        } else if (reference instanceof QualifiedNameReference) {
            int indexOfFirstFieldBinding;
            QualifiedNameReference qNameRef = (QualifiedNameReference)reference;
            int length = qNameRef.tokens.length;
            SearchMatch[] matches = new SearchMatch[length];
            Binding nameBinding = qNameRef.binding;
            int n = indexOfFirstFieldBinding = qNameRef.indexOfFirstFieldBinding > 0 ? qNameRef.indexOfFirstFieldBinding - 1 : 0;
            if (this.matchesName(this.pattern.name, qNameRef.tokens[indexOfFirstFieldBinding]) && !(nameBinding instanceof LocalVariableBinding)) {
                FieldBinding fieldBinding;
                FieldBinding fieldBinding2 = fieldBinding = nameBinding instanceof FieldBinding ? (FieldBinding)nameBinding : null;
                if (fieldBinding == null) {
                    matches[indexOfFirstFieldBinding] = locator.newFieldReferenceMatch(element, localElement, elementBinding, accuracy, -1, -1, reference);
                } else {
                    switch (this.matchField(fieldBinding, false)) {
                        case 3: {
                            matches[indexOfFirstFieldBinding] = locator.newFieldReferenceMatch(element, localElement, elementBinding, 0, -1, -1, reference);
                            break;
                        }
                        case 1: {
                            this.match = locator.newFieldReferenceMatch(element, localElement, elementBinding, 1, -1, -1, reference);
                            if (fieldBinding.type != null && fieldBinding.type.isParameterizedType() && this.pattern.hasTypeArguments()) {
                                this.updateMatch((ParameterizedTypeBinding)fieldBinding.type, this.pattern.getTypeArguments(), locator);
                            }
                            matches[indexOfFirstFieldBinding] = this.match;
                        }
                    }
                }
            }
            int i = indexOfFirstFieldBinding + 1;
            while (i < length) {
                char[] token = qNameRef.tokens[i];
                if (this.matchesName(this.pattern.name, token)) {
                    FieldBinding otherBinding;
                    FieldBinding fieldBinding = otherBinding = qNameRef.otherBindings == null ? null : qNameRef.otherBindings[i - (indexOfFirstFieldBinding + 1)];
                    if (otherBinding == null) {
                        matches[i] = locator.newFieldReferenceMatch(element, localElement, elementBinding, accuracy, -1, -1, reference);
                    } else {
                        switch (this.matchField(otherBinding, false)) {
                            case 3: {
                                matches[i] = locator.newFieldReferenceMatch(element, localElement, elementBinding, 0, -1, -1, reference);
                                break;
                            }
                            case 1: {
                                this.match = locator.newFieldReferenceMatch(element, localElement, elementBinding, 1, -1, -1, reference);
                                if (otherBinding.type != null && otherBinding.type.isParameterizedType() && this.pattern.hasTypeArguments()) {
                                    this.updateMatch((ParameterizedTypeBinding)otherBinding.type, this.pattern.getTypeArguments(), locator);
                                }
                                matches[i] = this.match;
                            }
                        }
                    }
                }
                ++i;
            }
            locator.reportAccurateFieldReference(matches, qNameRef);
        }
    }

    protected void updateMatch(ParameterizedTypeBinding parameterizedBinding, char[][][] patternTypeArguments, MatchLocator locator) {
        if (locator.unitScope == null) {
            return;
        }
        this.updateMatch(parameterizedBinding, patternTypeArguments, false, 0, locator);
        if (!this.match.isExact()) {
            this.match.setRule(0);
        }
    }

    protected void reportDeclaration(FieldBinding fieldBinding, MatchLocator locator, SimpleSet knownFields) throws CoreException {
        if (fieldBinding == ArrayBinding.ArrayLength) {
            return;
        }
        ReferenceBinding declaringClass = fieldBinding.declaringClass;
        IType type = locator.lookupType(declaringClass);
        if (type == null) {
            return;
        }
        char[] bindingName = fieldBinding.name;
        IField field = type.getField(new String(bindingName));
        if (knownFields.addIfNotIncluded(field) == null) {
            return;
        }
        IResource resource = type.getResource();
        boolean isBinary = type.isBinary();
        IBinaryType info = null;
        if (isBinary) {
            if (resource == null) {
                resource = type.getJavaProject().getProject();
            }
            info = locator.getBinaryInfo((ClassFile)type.getClassFile(), resource);
            locator.reportBinaryMemberDeclaration(resource, field, fieldBinding, info, 0);
        } else {
            ClassScope scope;
            if (declaringClass instanceof ParameterizedTypeBinding) {
                declaringClass = ((ParameterizedTypeBinding)declaringClass).genericType();
            }
            if ((scope = ((SourceTypeBinding)declaringClass).scope) != null) {
                TypeDeclaration typeDecl = scope.referenceContext;
                FieldDeclaration fieldDecl = null;
                FieldDeclaration[] fieldDecls = typeDecl.fields;
                int length = fieldDecls == null ? 0 : fieldDecls.length;
                int i = 0;
                while (i < length) {
                    if (CharOperation.equals(bindingName, fieldDecls[i].name)) {
                        fieldDecl = fieldDecls[i];
                        break;
                    }
                    ++i;
                }
                if (fieldDecl != null) {
                    int offset = fieldDecl.sourceStart;
                    this.match = new FieldDeclarationMatch(((JavaElement)((Object)field)).resolved(fieldBinding), 0, offset, fieldDecl.sourceEnd - offset + 1, locator.getParticipant(), resource);
                    locator.report(this.match);
                }
            }
        }
    }

    protected int referenceType() {
        return 8;
    }

    public int resolveLevel(ASTNode possiblelMatchingNode) {
        if (this.pattern.findReferences || this.pattern.fineGrain != 0) {
            if (possiblelMatchingNode instanceof FieldReference) {
                return this.matchField(((FieldReference)possiblelMatchingNode).binding, true);
            }
            if (possiblelMatchingNode instanceof NameReference) {
                return this.resolveLevel((NameReference)possiblelMatchingNode);
            }
        }
        if (possiblelMatchingNode instanceof FieldDeclaration) {
            return this.matchField(((FieldDeclaration)possiblelMatchingNode).binding, true);
        }
        return 0;
    }

    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof FieldBinding)) {
            return 0;
        }
        return this.matchField((FieldBinding)binding, true);
    }

    protected int resolveLevel(NameReference nameRef) {
        if (nameRef instanceof SingleNameReference) {
            return this.resolveLevel(nameRef.binding);
        }
        Binding binding = nameRef.binding;
        QualifiedNameReference qNameRef = (QualifiedNameReference)nameRef;
        FieldBinding fieldBinding = null;
        if (binding instanceof FieldBinding) {
            int level;
            fieldBinding = (FieldBinding)binding;
            char[] bindingName = fieldBinding.name;
            int lastDot = CharOperation.lastIndexOf('.', bindingName);
            if (lastDot > -1) {
                bindingName = CharOperation.subarray(bindingName, lastDot + 1, bindingName.length);
            }
            if (this.matchesName(this.pattern.name, bindingName) && (level = this.matchField(fieldBinding, false)) != 0) {
                return level;
            }
        }
        int otherMax = qNameRef.otherBindings == null ? 0 : qNameRef.otherBindings.length;
        int i = 0;
        while (i < otherMax) {
            FieldBinding otherBinding;
            int level;
            char[] token = qNameRef.tokens[i + qNameRef.indexOfFirstFieldBinding];
            if (this.matchesName(this.pattern.name, token) && (level = this.matchField(otherBinding = qNameRef.otherBindings[i], false)) != 0) {
                return level;
            }
            ++i;
        }
        return 0;
    }

    protected int resolveLevelForType(TypeBinding typeBinding) {
        FieldPattern fieldPattern = (FieldPattern)this.pattern;
        TypeBinding fieldTypeBinding = typeBinding;
        if (fieldTypeBinding != null && fieldTypeBinding.isParameterizedType()) {
            fieldTypeBinding = typeBinding.erasure();
        }
        return this.resolveLevelForType(fieldPattern.typeSimpleName, fieldPattern.typeQualification, fieldPattern.getTypeArguments(), 0, fieldTypeBinding);
    }
}

