/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadoc;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants;

public class CompletionOnJavadocTag
extends JavadocSingleNameReference
implements JavadocTagConstants,
CompletionOnJavadoc {
    public int completionFlags = 1;
    public static final char[][][] NO_CHAR_CHAR_CHAR = new char[0][][];
    private char[][][] possibleTags = NO_CHAR_CHAR_CHAR;

    public CompletionOnJavadocTag(char[] source, long pos, int tagStart, int tagEnd, char[][][] possibleTags, boolean orphan) {
        super(source, pos, tagStart, tagEnd);
        this.possibleTags = possibleTags;
        if (orphan) {
            this.completionFlags |= 0x80;
        }
    }

    public void addCompletionFlags(int flags) {
        this.completionFlags |= flags;
    }

    public int getCompletionFlags() {
        return this.completionFlags;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        int length;
        char[][] inlineTags;
        int length2;
        char[][] blockTags;
        output.append("<CompleteOnJavadocTag:");
        output.append('@');
        if (this.token != null) {
            super.printExpression(indent, output);
        }
        if ((blockTags = this.possibleTags[0]) != null && (length2 = blockTags.length) > 0) {
            output.append("\npossible block tags:");
            int i = 0;
            while (i < length2) {
                output.append("\n\t- ");
                output.append(blockTags[i]);
                ++i;
            }
            output.append('\n');
        }
        if ((inlineTags = this.possibleTags[1]) != null && (length = inlineTags.length) > 0) {
            output.append("\npossible inline tags:");
            int i = 0;
            while (i < length) {
                output.append("\n\t- ");
                output.append(inlineTags[i]);
                ++i;
            }
            output.append('\n');
        }
        return output.append('>');
    }

    public void filterPossibleTags(Scope scope) {
        if (this.possibleTags == null || this.possibleTags.length == 0 || (this.completionFlags & 0x80) != 0) {
            return;
        }
        int kind = scope.kind;
        char[][] specifiedTags = null;
        switch (kind) {
            case 4: {
                CompilationUnitDeclaration compilationUnit = scope.referenceCompilationUnit();
                if (compilationUnit != null && compilationUnit.types.length > 0 && compilationUnit.types[0].name == CompletionParser.FAKE_TYPE_NAME) {
                    specifiedTags = CLASS_TAGS;
                    break;
                }
                specifiedTags = COMPILATION_UNIT_TAGS;
                break;
            }
            case 3: {
                specifiedTags = CLASS_TAGS;
                break;
            }
            case 2: {
                MethodScope methodScope = (MethodScope)scope;
                if (methodScope.referenceMethod() == null) {
                    if (methodScope.initializedField == null) {
                        specifiedTags = PACKAGE_TAGS;
                        break;
                    }
                    specifiedTags = FIELD_TAGS;
                    break;
                }
                specifiedTags = METHOD_TAGS;
                break;
            }
            default: {
                return;
            }
        }
        int kinds = this.possibleTags.length;
        int k = 0;
        while (k < kinds) {
            int length = this.possibleTags[k].length;
            int specLenth = specifiedTags.length;
            char[][] filteredTags = new char[length][];
            int size = 0;
            int i = 0;
            while (i < length) {
                char[] possibleTag = this.possibleTags[k][i];
                int j = 0;
                block11: while (j < specLenth) {
                    if (possibleTag[0] == specifiedTags[j][0] && CharOperation.equals(possibleTag, specifiedTags[j])) {
                        if (possibleTag == TAG_PARAM) {
                            switch (scope.kind) {
                                case 3: {
                                    if (scope.compilerOptions().sourceLevel < 0x310000L || !((ClassScope)scope).referenceContext.binding.isGenericType()) break block11;
                                    filteredTags[size++] = possibleTag;
                                    break;
                                }
                                case 4: {
                                    if (scope.compilerOptions().sourceLevel < 0x310000L) break block11;
                                    filteredTags[size++] = possibleTag;
                                    break;
                                }
                                default: {
                                    filteredTags[size++] = possibleTag;
                                    break;
                                }
                            }
                            break;
                        }
                        filteredTags[size++] = possibleTag;
                        break;
                    }
                    ++j;
                }
                ++i;
            }
            if (size < length) {
                char[][] cArrayArray = new char[size][];
                this.possibleTags[k] = cArrayArray;
                System.arraycopy(filteredTags, 0, cArrayArray, 0, size);
            }
            ++k;
        }
    }

    public char[][] getPossibleBlockTags() {
        return this.possibleTags[0];
    }

    public char[][] getPossibleInlineTags() {
        return this.possibleTags[1];
    }
}

