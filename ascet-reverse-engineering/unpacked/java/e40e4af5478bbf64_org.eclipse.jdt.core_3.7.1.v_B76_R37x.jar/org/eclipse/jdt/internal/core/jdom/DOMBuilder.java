/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import java.util.ArrayList;
import java.util.Map;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMField;
import org.eclipse.jdt.core.jdom.IDOMImport;
import org.eclipse.jdt.core.jdom.IDOMInitializer;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.core.jdom.IDOMPackage;
import org.eclipse.jdt.core.jdom.IDOMType;
import org.eclipse.jdt.internal.compiler.DocumentElementParser;
import org.eclipse.jdt.internal.compiler.IDocumentElementRequestor;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.core.jdom.AbstractDOMBuilder;
import org.eclipse.jdt.internal.core.jdom.DOMCompilationUnit;
import org.eclipse.jdt.internal.core.jdom.DOMField;
import org.eclipse.jdt.internal.core.jdom.DOMImport;
import org.eclipse.jdt.internal.core.jdom.DOMInitializer;
import org.eclipse.jdt.internal.core.jdom.DOMMethod;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.jdom.DOMPackage;
import org.eclipse.jdt.internal.core.jdom.DOMType;

public class DOMBuilder
extends AbstractDOMBuilder
implements IDocumentElementRequestor {
    protected boolean fBuildingSingleMember = false;
    protected boolean fFinishedSingleMember = false;
    protected ArrayList fFields;
    Map options = JavaCore.getOptions();

    public void acceptImport(int declarationStart, int declarationEnd, int[] javaDocPositions, char[] name, int nameStart, boolean onDemand, int modifiers) {
        int[] sourceRange = new int[]{declarationStart, declarationEnd};
        int[] nameRange = new int[]{nameStart, declarationEnd - 1};
        String importName = new String(this.fDocument, nameRange[0], nameRange[1] + 1 - nameRange[0]);
        this.fNode = new DOMImport(this.fDocument, sourceRange, importName, nameRange, onDemand, modifiers);
        this.addChild(this.fNode);
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    public void acceptInitializer(int declarationStart, int declarationEnd, int[] javaDocPositions, int modifiers, int modifiersStart, int bodyStart, int bodyEnd) {
        int[] sourceRange = new int[]{declarationStart, declarationEnd};
        int[] commentRange = new int[]{-1, -1};
        if (javaDocPositions != null) {
            int length = javaDocPositions.length;
            commentRange[0] = javaDocPositions[length - 2];
            commentRange[1] = javaDocPositions[length - 1];
        }
        int[] modifiersRange = new int[]{-1, -1};
        if (modifiersStart >= declarationStart) {
            modifiersRange[0] = modifiersStart;
            modifiersRange[1] = bodyStart - 1;
        }
        this.fNode = new DOMInitializer(this.fDocument, sourceRange, commentRange, modifiers, modifiersRange, bodyStart);
        this.addChild(this.fNode);
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    public void acceptPackage(int declarationStart, int declarationEnd, int[] javaDocPositions, char[] name, int nameStartPosition) {
        int[] sourceRange = null;
        if (javaDocPositions != null) {
            int length = javaDocPositions.length;
            sourceRange = new int[]{javaDocPositions[length - 2], declarationEnd};
        } else {
            sourceRange = new int[]{declarationStart, declarationEnd};
        }
        int[] nameRange = new int[]{nameStartPosition, declarationEnd - 1};
        this.fNode = new DOMPackage(this.fDocument, sourceRange, CharOperation.charToString(name), nameRange);
        this.addChild(this.fNode);
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    public void acceptProblem(CategorizedProblem problem) {
        if (this.fBuildingSingleMember && this.fFinishedSingleMember) {
            return;
        }
        this.fAbort = true;
    }

    protected void addChild(IDOMNode child) {
        super.addChild(child);
        if (this.fStack.isEmpty() && this.fFields != null) {
            this.fFields.add(child);
        }
    }

    public IDOMCompilationUnit createCompilationUnit() {
        return new DOMCompilationUnit();
    }

    public IDOMCompilationUnit createCompilationUnit(ICompilationUnit compilationUnit) {
        this.initializeBuild(compilationUnit.getContents(), true, true, false);
        this.getParser(this.options).parseCompilationUnit(compilationUnit);
        return super.createCompilationUnit(compilationUnit);
    }

    public IDOMField createField(char[] sourceCode) {
        this.initializeBuild(sourceCode, false, false, true);
        this.getParser(this.options).parseField(sourceCode);
        if (this.fAbort || this.fNode == null) {
            return null;
        }
        if (this.fFieldCount > 1) {
            return null;
        }
        this.fNode.normalize(this);
        return (IDOMField)((Object)this.fNode);
    }

    public IDOMField[] createFields(char[] sourceCode) {
        this.initializeBuild(sourceCode, false, false, false);
        this.fFields = new ArrayList();
        this.getParser(this.options).parseField(sourceCode);
        if (this.fAbort) {
            return null;
        }
        IDOMField[] fields = new IDOMField[this.fFields.size()];
        this.fFields.toArray(fields);
        int i = 0;
        while (i < fields.length) {
            DOMNode node = (DOMNode)((Object)fields[i]);
            if (i < fields.length - 1) {
                DOMNode next;
                node.fNextNode = next = (DOMNode)((Object)fields[i + 1]);
                next.fPreviousNode = node;
            }
            ((DOMNode)((Object)fields[i])).normalize(this);
            ++i;
        }
        return fields;
    }

    public IDOMImport createImport() {
        return new DOMImport();
    }

    public IDOMImport createImport(char[] sourceCode) {
        this.initializeBuild(sourceCode, false, false, true);
        this.getParser(this.options).parseImport(sourceCode);
        if (this.fAbort || this.fNode == null) {
            return null;
        }
        this.fNode.normalize(this);
        return (IDOMImport)((Object)this.fNode);
    }

    public IDOMInitializer createInitializer(char[] sourceCode) {
        this.initializeBuild(sourceCode, false, false, true);
        this.getParser(this.options).parseInitializer(sourceCode);
        if (this.fAbort || this.fNode == null || !(this.fNode instanceof IDOMInitializer)) {
            return null;
        }
        this.fNode.normalize(this);
        return (IDOMInitializer)((Object)this.fNode);
    }

    public IDOMMethod createMethod(char[] sourceCode) {
        this.initializeBuild(sourceCode, false, false, true);
        this.getParser(this.options).parseMethod(sourceCode);
        if (this.fAbort || this.fNode == null) {
            return null;
        }
        this.fNode.normalize(this);
        return (IDOMMethod)((Object)this.fNode);
    }

    public IDOMPackage createPackage() {
        return new DOMPackage();
    }

    public IDOMPackage createPackage(char[] sourceCode) {
        this.initializeBuild(sourceCode, false, false, true);
        this.getParser(this.options).parsePackage(sourceCode);
        if (this.fAbort || this.fNode == null) {
            return null;
        }
        this.fNode.normalize(this);
        return (IDOMPackage)((Object)this.fNode);
    }

    public IDOMType createType(char[] sourceCode) {
        this.initializeBuild(sourceCode, false, true, false);
        this.getParser(this.options).parseType(sourceCode);
        if (this.fAbort) {
            return null;
        }
        if (this.fNode != null) {
            this.fNode.normalize(this);
        }
        if (this.fNode instanceof IDOMType) {
            return (IDOMType)((Object)this.fNode);
        }
        return null;
    }

    protected void enterAbstractMethod(int declarationStart, int[] javaDocPositions, int modifiers, int modifiersStart, char[] returnType, int returnTypeStart, int returnTypeEnd, int returnTypeDimensionCount, char[] name, int nameStart, int nameEnd, char[][] parameterTypes, int[] parameterTypeStarts, int[] parameterTypeEnds, char[][] parameterNames, int[] parameterNameStarts, int[] parameterNameEnds, int parametersEnd, int extendedReturnTypeDimensionCount, int extendedReturnTypeDimensionEnd, char[][] exceptionTypes, int[] exceptionTypeStarts, int[] exceptionTypeEnds, int bodyStart, boolean isConstructor) {
        int[] sourceRange = new int[]{declarationStart, -1};
        int[] nameRange = new int[]{nameStart, nameEnd};
        int[] commentRange = new int[]{-1, -1};
        if (javaDocPositions != null) {
            int length = javaDocPositions.length;
            commentRange[0] = javaDocPositions[length - 2];
            commentRange[1] = javaDocPositions[length - 1];
        }
        int[] modifiersRange = new int[]{-1, -1};
        if (modifiersStart > -1) {
            modifiersRange[0] = modifiersStart;
            modifiersRange[1] = isConstructor ? nameStart - 1 : returnTypeStart - 1;
        }
        int[] returnTypeRange = null;
        returnTypeRange = extendedReturnTypeDimensionCount > 0 ? new int[]{returnTypeStart, returnTypeEnd, parametersEnd + 1, extendedReturnTypeDimensionEnd} : new int[]{returnTypeStart, returnTypeEnd};
        int[] parameterRange = new int[]{nameEnd + 1, parametersEnd};
        int[] exceptionRange = new int[]{-1, -1};
        if (exceptionTypes != null && exceptionTypes.length > 0) {
            int exceptionCount = exceptionTypes.length;
            exceptionRange[0] = exceptionTypeStarts[0];
            exceptionRange[1] = exceptionTypeEnds[exceptionCount - 1];
        }
        int[] bodyRange = null;
        bodyRange = exceptionRange[1] > -1 ? new int[]{exceptionRange[1] + 1, -1} : new int[]{parametersEnd + 1, -1};
        this.fNode = new DOMMethod(this.fDocument, sourceRange, CharOperation.charToString(name), nameRange, commentRange, modifiers, modifiersRange, isConstructor, CharOperation.charToString(returnType), returnTypeRange, CharOperation.charArrayToStringArray(parameterTypes), CharOperation.charArrayToStringArray(parameterNames), parameterRange, CharOperation.charArrayToStringArray(exceptionTypes), exceptionRange, bodyRange);
        this.addChild(this.fNode);
        this.fStack.push(this.fNode);
    }

    public void enterClass(int declarationStart, int[] javaDocPositions, int modifiers, int modifiersStart, int keywordStart, char[] name, int nameStart, int nameEnd, char[] superclass, int superclassStart, int superclassEnd, char[][] superinterfaces, int[] superinterfaceStarts, int[] superinterfaceEnds, int bodyStart) {
        this.enterType(declarationStart, javaDocPositions, modifiers, modifiersStart, keywordStart, name, nameStart, nameEnd, superclass, superclassStart, superclassEnd, superinterfaces, superinterfaceStarts, superinterfaceEnds, bodyStart, true);
    }

    public void enterConstructor(int declarationStart, int[] javaDocPositions, int modifiers, int modifiersStart, char[] name, int nameStart, int nameEnd, char[][] parameterTypes, int[] parameterTypeStarts, int[] parameterTypeEnds, char[][] parameterNames, int[] parameterNameStarts, int[] parameterNameEnds, int parametersEnd, char[][] exceptionTypes, int[] exceptionTypeStarts, int[] exceptionTypeEnds, int bodyStart) {
        String nameString = new String(this.fDocument, nameStart, nameEnd - nameStart);
        int openParenPosition = nameString.indexOf(40);
        if (openParenPosition > -1) {
            nameEnd = nameStart + openParenPosition - 1;
        }
        this.enterAbstractMethod(declarationStart, javaDocPositions, modifiers, modifiersStart, null, -1, -1, 0, name, nameStart, nameEnd, parameterTypes, parameterTypeStarts, parameterTypeEnds, parameterNames, parameterNameStarts, parameterNameEnds, parametersEnd, 0, -1, exceptionTypes, exceptionTypeStarts, exceptionTypeEnds, bodyStart, true);
    }

    public void enterField(int declarationStart, int[] javaDocPositions, int modifiers, int modifiersStart, char[] type, int typeStart, int typeEnd, int typeDimensionCount, char[] name, int nameStart, int nameEnd, int extendedTypeDimensionCount, int extendedTypeDimensionEnd) {
        int[] sourceRange = new int[]{declarationStart, extendedTypeDimensionEnd > nameEnd ? extendedTypeDimensionEnd : nameEnd};
        int[] nameRange = new int[]{nameStart, nameEnd};
        int[] commentRange = new int[]{-1, -1};
        if (javaDocPositions != null) {
            int length = javaDocPositions.length;
            commentRange[0] = javaDocPositions[length - 2];
            commentRange[1] = javaDocPositions[length - 1];
        }
        int[] modifiersRange = new int[]{-1, -1};
        if (modifiersStart > -1) {
            modifiersRange[0] = modifiersStart;
            modifiersRange[1] = typeStart - 1;
        }
        int[] typeRange = new int[]{typeStart, typeEnd};
        boolean hasInitializer = false;
        int[] initializerRange = new int[]{-1, -1};
        boolean isVariableDeclarator = false;
        if (this.fNode instanceof DOMField) {
            DOMField field = (DOMField)this.fNode;
            if (field.fTypeRange[0] == typeStart) {
                isVariableDeclarator = true;
            }
        }
        this.fNode = new DOMField(this.fDocument, sourceRange, CharOperation.charToString(name), nameRange, commentRange, modifiers, modifiersRange, typeRange, CharOperation.charToString(type), hasInitializer, initializerRange, isVariableDeclarator);
        this.addChild(this.fNode);
        this.fStack.push(this.fNode);
    }

    public void enterInterface(int declarationStart, int[] javaDocPositions, int modifiers, int modifiersStart, int keywordStart, char[] name, int nameStart, int nameEnd, char[][] superinterfaces, int[] superinterfaceStarts, int[] superinterfaceEnds, int bodyStart) {
        this.enterType(declarationStart, javaDocPositions, modifiers, modifiersStart, keywordStart, name, nameStart, nameEnd, null, -1, -1, superinterfaces, superinterfaceStarts, superinterfaceEnds, bodyStart, false);
    }

    public void enterMethod(int declarationStart, int[] javaDocPositions, int modifiers, int modifiersStart, char[] returnType, int returnTypeStart, int returnTypeEnd, int returnTypeDimensionCount, char[] name, int nameStart, int nameEnd, char[][] parameterTypes, int[] parameterTypeStarts, int[] parameterTypeEnds, char[][] parameterNames, int[] parameterNameStarts, int[] parameterNameEnds, int parametersEnd, int extendedReturnTypeDimensionCount, int extendedReturnTypeDimensionEnd, char[][] exceptionTypes, int[] exceptionTypeStarts, int[] exceptionTypeEnds, int bodyStart) {
        this.enterAbstractMethod(declarationStart, javaDocPositions, modifiers, modifiersStart, returnType, returnTypeStart, returnTypeEnd, returnTypeDimensionCount, name, nameStart, nameEnd, parameterTypes, parameterTypeStarts, parameterTypeEnds, parameterNames, parameterNameStarts, parameterNameEnds, parametersEnd, extendedReturnTypeDimensionCount, extendedReturnTypeDimensionEnd, exceptionTypes, exceptionTypeStarts, exceptionTypeEnds, bodyStart, false);
    }

    protected void enterType(int declarationStart, int[] javaDocPositions, int modifiers, int modifiersStart, int keywordStart, char[] name, int nameStart, int nameEnd, char[] superclass, int superclassStart, int superclassEnd, char[][] superinterfaces, int[] superinterfaceStarts, int[] superinterfaceEnds, int bodyStart, boolean isClass) {
        if (this.fBuildingType) {
            int[] sourceRange = new int[]{declarationStart, -1};
            int[] commentRange = new int[]{-1, -1};
            if (javaDocPositions != null) {
                int length = javaDocPositions.length;
                commentRange[0] = javaDocPositions[length - 2];
                commentRange[1] = javaDocPositions[length - 1];
            }
            int[] modifiersRange = new int[]{-1, -1};
            if (modifiersStart > -1) {
                modifiersRange[0] = modifiersStart;
                modifiersRange[1] = modifiersStart > -1 ? keywordStart - 1 : -1;
            }
            int[] typeKeywordRange = new int[]{keywordStart, nameStart - 1};
            int[] nameRange = new int[]{nameStart, nameEnd};
            int[] extendsKeywordRange = new int[]{-1, -1};
            int[] superclassRange = new int[]{-1, -1};
            int[] implementsKeywordRange = new int[]{-1, -1};
            int[] interfacesRange = new int[]{-1, -1};
            if (isClass) {
                if (superclass != null) {
                    extendsKeywordRange[0] = nameEnd + 1;
                    extendsKeywordRange[1] = superclassStart - 1;
                    superclassRange[0] = superclassStart;
                    superclassRange[1] = superclassEnd;
                }
                if (superinterfaces != null && superinterfaces.length > 0) {
                    superclassRange[1] = superclassEnd;
                    implementsKeywordRange[0] = superclassEnd > -1 ? superclassEnd + 1 : nameEnd + 1;
                    implementsKeywordRange[1] = superinterfaceStarts[0] - 1;
                    interfacesRange[0] = superinterfaceStarts[0];
                    interfacesRange[1] = superinterfaceEnds[superinterfaces.length - 1];
                }
            } else if (superinterfaces != null && superinterfaces.length > 0) {
                extendsKeywordRange[0] = nameEnd + 1;
                extendsKeywordRange[1] = superinterfaceStarts[0] - 1;
                interfacesRange[0] = superinterfaceStarts[0];
                interfacesRange[1] = superinterfaceEnds[superinterfaces.length - 1];
            }
            int[] openBodyRange = new int[]{bodyStart, -1};
            int[] closeBodyRange = new int[]{-1, -1};
            this.fNode = new DOMType(this.fDocument, sourceRange, new String(name), nameRange, commentRange, modifiers, modifiersRange, typeKeywordRange, superclassRange, extendsKeywordRange, CharOperation.charArrayToStringArray(superinterfaces), interfacesRange, implementsKeywordRange, openBodyRange, closeBodyRange, isClass);
            this.addChild(this.fNode);
            this.fStack.push(this.fNode);
        }
    }

    protected void exitAbstractMethod(int bodyEnd, int declarationEnd) {
        DOMMethod method = (DOMMethod)this.fStack.pop();
        method.setSourceRangeEnd(declarationEnd);
        method.setBodyRangeEnd(bodyEnd + 1);
        this.fNode = method;
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    public void exitClass(int bodyEnd, int declarationEnd) {
        this.exitType(bodyEnd, declarationEnd);
    }

    public void exitConstructor(int bodyEnd, int declarationEnd) {
        this.exitAbstractMethod(bodyEnd, declarationEnd);
    }

    public void exitField(int bodyEnd, int declarationEnd) {
        DOMField field = (DOMField)this.fStack.pop();
        if (field.getEndPosition() < declarationEnd) {
            String initializer;
            int index;
            field.setSourceRangeEnd(declarationEnd);
            int nameEnd = field.fNameRange[1];
            if (nameEnd < bodyEnd && (index = (initializer = new String(this.fDocument, nameEnd + 1, bodyEnd - nameEnd)).indexOf(61)) > -1) {
                field.setHasInitializer(true);
                field.setInitializerRange(nameEnd + index + 2, bodyEnd);
            }
        }
        ++this.fFieldCount;
        this.fNode = field;
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    public void exitInterface(int bodyEnd, int declarationEnd) {
        this.exitType(bodyEnd, declarationEnd);
    }

    public void exitMethod(int bodyEnd, int declarationEnd) {
        this.exitAbstractMethod(bodyEnd, declarationEnd);
    }

    protected DocumentElementParser getParser(Map settings) {
        return new DocumentElementParser(this, new DefaultProblemFactory(), new CompilerOptions(settings));
    }

    protected void initializeBuild(char[] sourceCode, boolean buildingCompilationUnit, boolean buildingType, boolean singleMember) {
        super.initializeBuild(sourceCode, buildingCompilationUnit, buildingType);
        this.fBuildingSingleMember = singleMember;
        this.fFinishedSingleMember = false;
    }
}

