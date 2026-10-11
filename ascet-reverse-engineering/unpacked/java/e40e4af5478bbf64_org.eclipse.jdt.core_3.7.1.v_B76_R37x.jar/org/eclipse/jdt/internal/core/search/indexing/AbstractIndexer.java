/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.matching.ConstructorPattern;
import org.eclipse.jdt.internal.core.search.matching.FieldPattern;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;

public abstract class AbstractIndexer
implements IIndexConstants {
    SearchDocument document;

    public AbstractIndexer(SearchDocument document) {
        this.document = document;
    }

    public void addAnnotationTypeDeclaration(int modifiers, char[] packageName, char[] name, char[][] enclosingTypeNames, boolean secondary) {
        this.addTypeDeclaration(modifiers, packageName, name, enclosingTypeNames, secondary);
        this.addIndexEntry(SUPER_REF, SuperTypeReferencePattern.createIndexKey(modifiers, packageName, name, enclosingTypeNames, null, 'A', CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_ANNOTATION, '.'), 'A'));
    }

    public void addAnnotationTypeReference(char[] typeName) {
        this.addIndexEntry(ANNOTATION_REF, CharOperation.lastSegment(typeName, '.'));
    }

    public void addClassDeclaration(int modifiers, char[] packageName, char[] name, char[][] enclosingTypeNames, char[] superclass, char[][] superinterfaces, char[][] typeParameterSignatures, boolean secondary) {
        this.addTypeDeclaration(modifiers, packageName, name, enclosingTypeNames, secondary);
        if (superclass != null) {
            superclass = this.erasure(superclass);
            this.addTypeReference(superclass);
        }
        this.addIndexEntry(SUPER_REF, SuperTypeReferencePattern.createIndexKey(modifiers, packageName, name, enclosingTypeNames, typeParameterSignatures, 'C', superclass, 'C'));
        if (superinterfaces != null) {
            int i = 0;
            int max = superinterfaces.length;
            while (i < max) {
                char[] superinterface = this.erasure(superinterfaces[i]);
                this.addTypeReference(superinterface);
                this.addIndexEntry(SUPER_REF, SuperTypeReferencePattern.createIndexKey(modifiers, packageName, name, enclosingTypeNames, typeParameterSignatures, 'C', superinterface, 'I'));
                ++i;
            }
        }
    }

    private char[] erasure(char[] typeName) {
        int genericStart = CharOperation.indexOf('<', typeName);
        if (genericStart > -1) {
            typeName = CharOperation.subarray(typeName, 0, genericStart);
        }
        return typeName;
    }

    public void addConstructorDeclaration(char[] typeName, int argCount, char[] signature, char[][] parameterTypes, char[][] parameterNames, int modifiers, char[] packageName, int typeModifiers, char[][] exceptionTypes, int extraFlags) {
        int i;
        this.addIndexEntry(CONSTRUCTOR_DECL, ConstructorPattern.createDeclarationIndexKey(typeName, argCount, signature, parameterTypes, parameterNames, modifiers, packageName, typeModifiers, extraFlags));
        if (parameterTypes != null) {
            i = 0;
            while (i < argCount) {
                this.addTypeReference(parameterTypes[i]);
                ++i;
            }
        }
        if (exceptionTypes != null) {
            i = 0;
            int max = exceptionTypes.length;
            while (i < max) {
                this.addTypeReference(exceptionTypes[i]);
                ++i;
            }
        }
    }

    public void addConstructorReference(char[] typeName, int argCount) {
        char[] simpleTypeName = CharOperation.lastSegment(typeName, '.');
        this.addTypeReference(simpleTypeName);
        this.addIndexEntry(CONSTRUCTOR_REF, ConstructorPattern.createIndexKey(simpleTypeName, argCount));
        char[] innermostTypeName = CharOperation.lastSegment(simpleTypeName, '$');
        if (innermostTypeName != simpleTypeName) {
            this.addIndexEntry(CONSTRUCTOR_REF, ConstructorPattern.createIndexKey(innermostTypeName, argCount));
        }
    }

    public void addDefaultConstructorDeclaration(char[] typeName, char[] packageName, int typeModifiers, int extraFlags) {
        this.addIndexEntry(CONSTRUCTOR_DECL, ConstructorPattern.createDefaultDeclarationIndexKey(CharOperation.lastSegment(typeName, '.'), packageName, typeModifiers, extraFlags));
    }

    public void addEnumDeclaration(int modifiers, char[] packageName, char[] name, char[][] enclosingTypeNames, char[] superclass, char[][] superinterfaces, boolean secondary) {
        this.addTypeDeclaration(modifiers, packageName, name, enclosingTypeNames, secondary);
        this.addIndexEntry(SUPER_REF, SuperTypeReferencePattern.createIndexKey(modifiers, packageName, name, enclosingTypeNames, null, 'E', superclass, 'C'));
        if (superinterfaces != null) {
            int i = 0;
            int max = superinterfaces.length;
            while (i < max) {
                char[] superinterface = this.erasure(superinterfaces[i]);
                this.addTypeReference(superinterface);
                this.addIndexEntry(SUPER_REF, SuperTypeReferencePattern.createIndexKey(modifiers, packageName, name, enclosingTypeNames, null, 'E', superinterface, 'I'));
                ++i;
            }
        }
    }

    public void addFieldDeclaration(char[] typeName, char[] fieldName) {
        this.addIndexEntry(FIELD_DECL, FieldPattern.createIndexKey(fieldName));
        this.addTypeReference(typeName);
    }

    public void addFieldReference(char[] fieldName) {
        this.addNameReference(fieldName);
    }

    protected void addIndexEntry(char[] category, char[] key) {
        this.document.addIndexEntry(category, key);
    }

    public void addInterfaceDeclaration(int modifiers, char[] packageName, char[] name, char[][] enclosingTypeNames, char[][] superinterfaces, char[][] typeParameterSignatures, boolean secondary) {
        this.addTypeDeclaration(modifiers, packageName, name, enclosingTypeNames, secondary);
        if (superinterfaces != null) {
            int i = 0;
            int max = superinterfaces.length;
            while (i < max) {
                char[] superinterface = this.erasure(superinterfaces[i]);
                this.addTypeReference(superinterface);
                this.addIndexEntry(SUPER_REF, SuperTypeReferencePattern.createIndexKey(modifiers, packageName, name, enclosingTypeNames, typeParameterSignatures, 'I', superinterface, 'I'));
                ++i;
            }
        }
    }

    public void addMethodDeclaration(char[] methodName, char[][] parameterTypes, char[] returnType, char[][] exceptionTypes) {
        int i;
        int argCount = parameterTypes == null ? 0 : parameterTypes.length;
        this.addIndexEntry(METHOD_DECL, MethodPattern.createIndexKey(methodName, argCount));
        if (parameterTypes != null) {
            i = 0;
            while (i < argCount) {
                this.addTypeReference(parameterTypes[i]);
                ++i;
            }
        }
        if (exceptionTypes != null) {
            i = 0;
            int max = exceptionTypes.length;
            while (i < max) {
                this.addTypeReference(exceptionTypes[i]);
                ++i;
            }
        }
        if (returnType != null) {
            this.addTypeReference(returnType);
        }
    }

    public void addMethodReference(char[] methodName, int argCount) {
        this.addIndexEntry(METHOD_REF, MethodPattern.createIndexKey(methodName, argCount));
    }

    public void addNameReference(char[] name) {
        this.addIndexEntry(REF, name);
    }

    protected void addTypeDeclaration(int modifiers, char[] packageName, char[] name, char[][] enclosingTypeNames, boolean secondary) {
        char[] indexKey = TypeDeclarationPattern.createIndexKey(modifiers, name, packageName, enclosingTypeNames, secondary);
        if (secondary) {
            JavaModelManager.getJavaModelManager().secondaryTypeAdding(this.document.getPath(), name == null ? CharOperation.NO_CHAR : name, packageName == null ? CharOperation.NO_CHAR : packageName);
        }
        this.addIndexEntry(TYPE_DECL, indexKey);
    }

    public void addTypeReference(char[] typeName) {
        this.addNameReference(CharOperation.lastSegment(typeName, '.'));
    }

    public abstract void indexDocument();
}

