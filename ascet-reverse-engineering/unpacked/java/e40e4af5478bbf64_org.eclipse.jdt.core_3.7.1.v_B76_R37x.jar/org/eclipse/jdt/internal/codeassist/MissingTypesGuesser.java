/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.ISearchRequestor;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.core.SearchableEnvironment;

public class MissingTypesGuesser
extends ASTVisitor {
    private CompletionEngine.CompletionProblemFactory problemFactory;
    private SearchableEnvironment nameEnvironment;
    private HashMap substituedTypes;
    private HashMap originalTypes;
    private int combinationsCount;

    public MissingTypesGuesser(CompletionEngine completionEngine) {
        this.problemFactory = completionEngine.problemFactory;
        this.nameEnvironment = completionEngine.nameEnvironment;
    }

    private boolean computeMissingElements(QualifiedTypeReference[] substituedTypeNodes, char[][][] originalTypeNames, Binding[] missingElements, int[] missingElementsStarts, int[] missingElementsEnds) {
        int length = substituedTypeNodes.length;
        int i = 0;
        while (i < length) {
            ReferenceBinding missingElement;
            QualifiedTypeReference substituedType = substituedTypeNodes[i];
            if (substituedType.resolvedType == null) {
                return false;
            }
            ReferenceBinding erasure = (ReferenceBinding)substituedType.resolvedType.leafComponentType().erasure();
            int depthToRemove = originalTypeNames[i].length - 1;
            if (depthToRemove == 0) {
                missingElement = erasure;
            } else {
                int depth = erasure.depth() + 1;
                if (depth > depthToRemove) {
                    missingElement = erasure.enclosingTypeAt(depthToRemove);
                } else {
                    return false;
                }
            }
            missingElements[i] = missingElement;
            missingElementsStarts[i] = substituedType.sourceStart;
            missingElementsEnds[i] = substituedType.sourceEnd + 1;
            ++i;
        }
        return true;
    }

    private TypeReference convert(ArrayQualifiedTypeReference typeRef) {
        if (typeRef.resolvedType != null) {
            if (typeRef.resolvedType.isValidBinding()) {
                ArrayQualifiedTypeReference convertedType = new ArrayQualifiedTypeReference(typeRef.tokens, typeRef.dimensions(), typeRef.sourcePositions);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = typeRef.sourceEnd;
                return convertedType;
            }
            if ((typeRef.resolvedType.problemId() & 1) != 0) {
                if (((ReferenceBinding)typeRef.resolvedType.leafComponentType()).compoundName.length != 1) {
                    return null;
                }
                char[][] typeName = typeRef.getTypeName();
                char[][][] typeNames = this.findTypeNames(typeName);
                if (typeNames == null || typeNames.length == 0) {
                    return null;
                }
                ArrayQualifiedTypeReference convertedType = new ArrayQualifiedTypeReference(typeNames[0], typeRef.dimensions(), new long[typeNames[0].length]);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = (int)(typeRef.sourcePositions[0] & 0xFFFFFFFFL);
                this.substituedTypes.put(convertedType, typeNames);
                this.originalTypes.put(convertedType, typeName);
                this.combinationsCount *= typeNames.length;
                return convertedType;
            }
        }
        return null;
    }

    private TypeReference convert(ArrayTypeReference typeRef) {
        if (typeRef.resolvedType != null) {
            if (typeRef.resolvedType.isValidBinding()) {
                ArrayTypeReference convertedType = new ArrayTypeReference(typeRef.token, typeRef.dimensions, 0L);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = typeRef.originalSourceEnd;
                return convertedType;
            }
            if ((typeRef.resolvedType.problemId() & 1) != 0) {
                char[][] typeName = typeRef.getTypeName();
                char[][][] typeNames = this.findTypeNames(typeName);
                if (typeNames == null || typeNames.length == 0) {
                    return null;
                }
                ArrayQualifiedTypeReference convertedType = new ArrayQualifiedTypeReference(typeNames[0], typeRef.dimensions, new long[typeNames[0].length]);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = typeRef.originalSourceEnd;
                this.substituedTypes.put(convertedType, typeNames);
                this.originalTypes.put(convertedType, typeName);
                this.combinationsCount *= typeNames.length;
                return convertedType;
            }
        }
        return null;
    }

    private TypeReference convert(ParameterizedQualifiedTypeReference typeRef) {
        if (typeRef.resolvedType != null) {
            TypeReference[][] typeArguments = typeRef.typeArguments;
            int length = typeArguments.length;
            TypeReference[][] convertedTypeArguments = new TypeReference[length][];
            int i = 0;
            while (i < length) {
                if (typeArguments[i] != null) {
                    int length2 = typeArguments[i].length;
                    convertedTypeArguments[i] = new TypeReference[length2];
                    int j = 0;
                    while (j < length2) {
                        convertedTypeArguments[i][j] = this.convert(typeArguments[i][j]);
                        if (convertedTypeArguments[i][j] == null) {
                            return null;
                        }
                        ++j;
                    }
                }
                ++i;
            }
            if (typeRef.resolvedType.isValidBinding()) {
                ParameterizedQualifiedTypeReference convertedType = new ParameterizedQualifiedTypeReference(typeRef.tokens, convertedTypeArguments, typeRef.dimensions(), new long[typeRef.tokens.length]);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = typeRef.sourceEnd;
                return convertedType;
            }
            if ((typeRef.resolvedType.problemId() & 1) != 0) {
                if (((ReferenceBinding)typeRef.resolvedType.leafComponentType()).compoundName.length != 1) {
                    return null;
                }
                char[][] typeName = typeRef.getTypeName();
                char[][][] typeNames = this.findTypeNames(typeName);
                if (typeNames == null || typeNames.length == 0) {
                    return null;
                }
                TypeReference[][] newConvertedTypeArguments = new TypeReference[typeNames[0].length][];
                int k = newConvertedTypeArguments.length - 1;
                int l = convertedTypeArguments.length - 1;
                while (k > -1 && l > -1) {
                    newConvertedTypeArguments[k] = convertedTypeArguments[l];
                    --k;
                    --l;
                }
                ParameterizedQualifiedTypeReference convertedType = new ParameterizedQualifiedTypeReference(typeNames[0], newConvertedTypeArguments, typeRef.dimensions(), new long[typeNames[0].length]);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = (int)(typeRef.sourcePositions[0] & 0xFFFFFFFFL);
                this.substituedTypes.put(convertedType, typeNames);
                this.originalTypes.put(convertedType, typeName);
                this.combinationsCount *= typeNames.length;
                return convertedType;
            }
        }
        return null;
    }

    private TypeReference convert(ParameterizedSingleTypeReference typeRef) {
        if (typeRef.resolvedType != null) {
            TypeReference[] typeArguments = typeRef.typeArguments;
            int length = typeArguments.length;
            TypeReference[] convertedTypeArguments = new TypeReference[length];
            int i = 0;
            while (i < length) {
                convertedTypeArguments[i] = this.convert(typeArguments[i]);
                if (convertedTypeArguments[i] == null) {
                    return null;
                }
                ++i;
            }
            if (typeRef.resolvedType.isValidBinding()) {
                ParameterizedSingleTypeReference convertedType = new ParameterizedSingleTypeReference(typeRef.token, convertedTypeArguments, typeRef.dimensions, 0L);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = typeRef.sourceEnd;
                return convertedType;
            }
            if ((typeRef.resolvedType.problemId() & 1) != 0) {
                char[][] typeName = typeRef.getTypeName();
                char[][][] typeNames = this.findTypeNames(typeName);
                if (typeNames == null || typeNames.length == 0) {
                    return null;
                }
                TypeReference[][] allConvertedTypeArguments = new TypeReference[typeNames[0].length][];
                allConvertedTypeArguments[allConvertedTypeArguments.length - 1] = convertedTypeArguments;
                ParameterizedQualifiedTypeReference convertedType = new ParameterizedQualifiedTypeReference(typeNames[0], allConvertedTypeArguments, typeRef.dimensions, new long[typeNames[0].length]);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = typeRef.sourceEnd;
                this.substituedTypes.put(convertedType, typeNames);
                this.originalTypes.put(convertedType, typeName);
                this.combinationsCount *= typeNames.length;
                return convertedType;
            }
        }
        return null;
    }

    private TypeReference convert(QualifiedTypeReference typeRef) {
        if (typeRef.resolvedType != null) {
            if (typeRef.resolvedType.isValidBinding()) {
                QualifiedTypeReference convertedType = new QualifiedTypeReference(typeRef.tokens, typeRef.sourcePositions);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = typeRef.sourceEnd;
                return convertedType;
            }
            if ((typeRef.resolvedType.problemId() & 1) != 0) {
                if (((ReferenceBinding)typeRef.resolvedType).compoundName.length != 1) {
                    return null;
                }
                char[][] typeName = typeRef.getTypeName();
                char[][][] typeNames = this.findTypeNames(typeName);
                if (typeNames == null || typeNames.length == 0) {
                    return null;
                }
                QualifiedTypeReference convertedType = new QualifiedTypeReference(typeNames[0], new long[typeNames[0].length]);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = (int)(typeRef.sourcePositions[0] & 0xFFFFFFFFL);
                this.substituedTypes.put(convertedType, typeNames);
                this.originalTypes.put(convertedType, typeName);
                this.combinationsCount *= typeNames.length;
                return convertedType;
            }
        }
        return null;
    }

    private TypeReference convert(SingleTypeReference typeRef) {
        if (typeRef.resolvedType != null) {
            if (typeRef.resolvedType.isValidBinding()) {
                SingleTypeReference convertedType = new SingleTypeReference(typeRef.token, 0L);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = typeRef.sourceEnd;
                return convertedType;
            }
            if ((typeRef.resolvedType.problemId() & 1) != 0) {
                char[][] typeName = typeRef.getTypeName();
                char[][][] typeNames = this.findTypeNames(typeName);
                if (typeNames == null || typeNames.length == 0) {
                    return null;
                }
                QualifiedTypeReference convertedType = new QualifiedTypeReference(typeNames[0], new long[typeNames[0].length]);
                convertedType.sourceStart = typeRef.sourceStart;
                convertedType.sourceEnd = typeRef.sourceEnd;
                this.substituedTypes.put(convertedType, typeNames);
                this.originalTypes.put(convertedType, typeName);
                this.combinationsCount *= typeNames.length;
                return convertedType;
            }
        }
        return null;
    }

    private TypeReference convert(TypeReference typeRef) {
        if (typeRef instanceof ParameterizedSingleTypeReference) {
            return this.convert((ParameterizedSingleTypeReference)typeRef);
        }
        if (typeRef instanceof ParameterizedQualifiedTypeReference) {
            return this.convert((ParameterizedQualifiedTypeReference)typeRef);
        }
        if (typeRef instanceof ArrayTypeReference) {
            return this.convert((ArrayTypeReference)typeRef);
        }
        if (typeRef instanceof ArrayQualifiedTypeReference) {
            return this.convert((ArrayQualifiedTypeReference)typeRef);
        }
        if (typeRef instanceof Wildcard) {
            return this.convert((Wildcard)typeRef);
        }
        if (typeRef instanceof SingleTypeReference) {
            return this.convert((SingleTypeReference)typeRef);
        }
        if (typeRef instanceof QualifiedTypeReference) {
            return this.convert((QualifiedTypeReference)typeRef);
        }
        return null;
    }

    private TypeReference convert(Wildcard typeRef) {
        TypeReference bound = typeRef.bound;
        TypeReference convertedBound = null;
        if (bound != null && (convertedBound = this.convert(bound)) == null) {
            return null;
        }
        Wildcard convertedType = new Wildcard(typeRef.kind);
        convertedType.bound = convertedBound;
        convertedType.sourceStart = typeRef.sourceStart;
        convertedType.sourceEnd = typeRef.sourceEnd;
        return convertedType;
    }

    private char[][][] findTypeNames(char[][] missingTypeName) {
        char[] missingSimpleName = missingTypeName[missingTypeName.length - 1];
        final boolean isQualified = missingTypeName.length > 1;
        final char[] missingFullyQualifiedName = isQualified ? CharOperation.concatWith(missingTypeName, '.') : null;
        final ArrayList results = new ArrayList();
        ISearchRequestor storage = new ISearchRequestor(){

            public void acceptConstructor(int modifiers, char[] simpleTypeName, int parameterCount, char[] signature, char[][] parameterTypes, char[][] parameterNames, int typeModifiers, char[] packageName, int extraFlags, String path, AccessRestriction access) {
            }

            public void acceptPackage(char[] packageName) {
            }

            public void acceptType(char[] packageName, char[] typeName, char[][] enclosingTypeNames, int modifiers, AccessRestriction accessRestriction) {
                char[] fullyQualifiedName = CharOperation.concat(packageName, CharOperation.concat(CharOperation.concatWith(enclosingTypeNames, '.'), typeName, '.'), '.');
                if (isQualified && !CharOperation.endsWith(fullyQualifiedName, missingFullyQualifiedName)) {
                    return;
                }
                char[][] compoundName = CharOperation.splitOn('.', fullyQualifiedName);
                results.add(compoundName);
            }
        };
        this.nameEnvironment.findExactTypes(missingSimpleName, true, 0, storage);
        if (results.size() == 0) {
            return null;
        }
        return (char[][][])results.toArray((T[])new char[results.size()][0][0]);
    }

    private char[][] getOriginal(TypeReference typeRef) {
        return (char[][])this.originalTypes.get(typeRef);
    }

    private QualifiedTypeReference[] getSubstituedTypes() {
        Set types = this.substituedTypes.keySet();
        return types.toArray(new QualifiedTypeReference[types.size()]);
    }

    private char[][][] getSubstitution(TypeReference typeRef) {
        return (char[][][])this.substituedTypes.get(typeRef);
    }

    public void guess(TypeReference typeRef, Scope scope, GuessedTypeRequestor requestor) {
        this.substituedTypes = new HashMap();
        this.originalTypes = new HashMap();
        this.combinationsCount = 1;
        TypeReference convertedType = this.convert(typeRef);
        if (convertedType == null) {
            return;
        }
        QualifiedTypeReference[] substituedTypeNodes = this.getSubstituedTypes();
        int length = substituedTypeNodes.length;
        int[] substitutionsIndexes = new int[substituedTypeNodes.length];
        char[][][][] subtitutions = new char[substituedTypeNodes.length][][][];
        char[][][] originalTypeNames = new char[substituedTypeNodes.length][][];
        int i = 0;
        while (i < substituedTypeNodes.length) {
            subtitutions[i] = this.getSubstitution(substituedTypeNodes[i]);
            originalTypeNames[i] = this.getOriginal(substituedTypeNodes[i]);
            ++i;
        }
        ResolutionCleaner resolutionCleaner = new ResolutionCleaner();
        int i2 = 0;
        while (i2 < this.combinationsCount) {
            int[] missingElementsEnds;
            int[] missingElementsStarts;
            Binding[] missingElements;
            this.nextSubstitution(substituedTypeNodes, subtitutions, substitutionsIndexes);
            this.problemFactory.startCheckingProblems();
            TypeBinding guessedType = null;
            switch (scope.kind) {
                case 1: 
                case 2: {
                    resolutionCleaner.cleanUp(convertedType, (BlockScope)scope);
                    guessedType = convertedType.resolveType((BlockScope)scope);
                    break;
                }
                case 3: {
                    resolutionCleaner.cleanUp(convertedType, (ClassScope)scope);
                    guessedType = convertedType.resolveType((ClassScope)scope);
                }
            }
            this.problemFactory.stopCheckingProblems();
            if (!this.problemFactory.hasForbiddenProblems && guessedType != null && this.computeMissingElements(substituedTypeNodes, originalTypeNames, missingElements = new Binding[length], missingElementsStarts = new int[length], missingElementsEnds = new int[length])) {
                requestor.accept(guessedType.capture(scope, typeRef.sourceEnd), missingElements, missingElementsStarts, missingElementsEnds, this.problemFactory.hasAllowedProblems);
            }
            ++i2;
        }
    }

    private void nextSubstitution(QualifiedTypeReference[] substituedTypeNodes, char[][][][] subtitutions, int[] substitutionsIndexes) {
        int length = substituedTypeNodes.length;
        int i = 0;
        while (i < length) {
            if (substitutionsIndexes[i] < subtitutions[i].length - 1) {
                int n = i;
                substitutionsIndexes[n] = substitutionsIndexes[n] + 1;
                break;
            }
            substitutionsIndexes[i] = 0;
            ++i;
        }
        i = 0;
        while (i < length) {
            QualifiedTypeReference qualifiedTypeReference = substituedTypeNodes[i];
            qualifiedTypeReference.tokens = subtitutions[i][substitutionsIndexes[i]];
            qualifiedTypeReference.sourcePositions = new long[qualifiedTypeReference.tokens.length];
            if (qualifiedTypeReference instanceof ParameterizedQualifiedTypeReference) {
                ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference)qualifiedTypeReference;
                TypeReference[][] typeArguments = parameterizedQualifiedTypeReference.typeArguments;
                TypeReference[][] newTypeArguments = new TypeReference[qualifiedTypeReference.tokens.length][];
                int j = newTypeArguments.length - 1;
                int k = typeArguments.length - 1;
                while (j > -1 && k > -1) {
                    newTypeArguments[j] = typeArguments[k];
                    --j;
                    --k;
                }
            }
            ++i;
        }
    }

    public static interface GuessedTypeRequestor {
        public void accept(TypeBinding var1, Binding[] var2, int[] var3, int[] var4, boolean var5);
    }

    private static class ResolutionCleaner
    extends ASTVisitor {
        private HashtableOfObjectToInt bitsMap = new HashtableOfObjectToInt();
        private boolean firstCall = true;

        private void cleanUp(TypeReference typeReference) {
            if (this.firstCall) {
                this.bitsMap.put(typeReference, typeReference.bits);
            } else {
                typeReference.bits = this.bitsMap.get(typeReference);
            }
            typeReference.resolvedType = null;
        }

        private void cleanUp(ParameterizedSingleTypeReference typeReference) {
            this.cleanUp((TypeReference)typeReference);
            typeReference.bits &= 0xFFFBFFFF;
        }

        private void cleanUp(ParameterizedQualifiedTypeReference typeReference) {
            this.cleanUp((TypeReference)typeReference);
            typeReference.bits &= 0xFFFBFFFF;
        }

        public void cleanUp(TypeReference convertedType, BlockScope scope) {
            convertedType.traverse((ASTVisitor)this, scope);
            this.firstCall = false;
        }

        public void cleanUp(TypeReference convertedType, ClassScope scope) {
            convertedType.traverse((ASTVisitor)this, scope);
            this.firstCall = false;
        }

        public boolean visit(SingleTypeReference singleTypeReference, BlockScope scope) {
            this.cleanUp(singleTypeReference);
            return true;
        }

        public boolean visit(SingleTypeReference singleTypeReference, ClassScope scope) {
            this.cleanUp(singleTypeReference);
            return true;
        }

        public boolean visit(Wildcard wildcard, BlockScope scope) {
            this.cleanUp(wildcard);
            return true;
        }

        public boolean visit(Wildcard wildcard, ClassScope scope) {
            this.cleanUp(wildcard);
            return true;
        }

        public boolean visit(ArrayTypeReference arrayTypeReference, BlockScope scope) {
            this.cleanUp(arrayTypeReference);
            return true;
        }

        public boolean visit(ArrayTypeReference arrayTypeReference, ClassScope scope) {
            this.cleanUp(arrayTypeReference);
            return true;
        }

        public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, BlockScope scope) {
            this.cleanUp(parameterizedSingleTypeReference);
            return true;
        }

        public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, ClassScope scope) {
            this.cleanUp(parameterizedSingleTypeReference);
            return true;
        }

        public boolean visit(QualifiedTypeReference qualifiedTypeReference, BlockScope scope) {
            this.cleanUp(qualifiedTypeReference);
            return true;
        }

        public boolean visit(QualifiedTypeReference qualifiedTypeReference, ClassScope scope) {
            this.cleanUp(qualifiedTypeReference);
            return true;
        }

        public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, BlockScope scope) {
            this.cleanUp(arrayQualifiedTypeReference);
            return true;
        }

        public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, ClassScope scope) {
            this.cleanUp(arrayQualifiedTypeReference);
            return true;
        }

        public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, BlockScope scope) {
            this.cleanUp(parameterizedQualifiedTypeReference);
            return true;
        }

        public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, ClassScope scope) {
            this.cleanUp(parameterizedQualifiedTypeReference);
            return true;
        }
    }
}

