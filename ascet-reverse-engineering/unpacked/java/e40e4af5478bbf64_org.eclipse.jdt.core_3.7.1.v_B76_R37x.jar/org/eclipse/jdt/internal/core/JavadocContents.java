/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToIntArray;
import org.eclipse.jdt.internal.core.BinaryMethod;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class JavadocContents {
    private static final int[] UNKNOWN_FORMAT = new int[0];
    private BinaryType type;
    private char[] content;
    private int childrenStart;
    private boolean hasComputedChildrenSections = false;
    private int indexOfFieldDetails;
    private int indexOfConstructorDetails;
    private int indexOfMethodDetails;
    private int indexOfEndOfClassData;
    private int indexOfFieldsBottom;
    private int indexOfAllMethodsTop;
    private int indexOfAllMethodsBottom;
    private int[] typeDocRange;
    private HashtableOfObjectToIntArray fieldDocRanges;
    private HashtableOfObjectToIntArray methodDocRanges;
    private int[] fieldAnchorIndexes;
    private int fieldAnchorIndexesCount;
    private int fieldLastAnchorFoundIndex;
    private int[] methodAnchorIndexes;
    private int methodAnchorIndexesCount;
    private int methodLastAnchorFoundIndex;
    private int[] unknownFormatAnchorIndexes;
    private int unknownFormatAnchorIndexesCount;
    private int unknownFormatLastAnchorFoundIndex;
    private int[] tempAnchorIndexes;
    private int tempAnchorIndexesCount;
    private int tempLastAnchorFoundIndex;

    public JavadocContents(BinaryType type, String content) {
        this.type = type;
        this.content = content != null ? content.toCharArray() : null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getTypeDoc() throws JavaModelException {
        if (this.content == null) {
            return null;
        }
        JavadocContents javadocContents = this;
        synchronized (javadocContents) {
            if (this.typeDocRange == null) {
                this.computeTypeRange();
            }
        }
        if (this.typeDocRange != null) {
            if (this.typeDocRange == UNKNOWN_FORMAT) {
                throw new JavaModelException(new JavaModelStatus(1009, this.type));
            }
            return String.valueOf(CharOperation.subarray(this.content, this.typeDocRange[0], this.typeDocRange[1]));
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getFieldDoc(IField child) throws JavaModelException {
        if (this.content == null) {
            return null;
        }
        int[] range = null;
        JavadocContents javadocContents = this;
        synchronized (javadocContents) {
            if (this.fieldDocRanges == null) {
                this.fieldDocRanges = new HashtableOfObjectToIntArray();
            } else {
                range = this.fieldDocRanges.get(child);
            }
            if (range == null) {
                range = this.computeFieldRange(child);
                this.fieldDocRanges.put(child, range);
            }
        }
        if (range != null) {
            if (range == UNKNOWN_FORMAT) {
                throw new JavaModelException(new JavaModelStatus(1009, child));
            }
            return String.valueOf(CharOperation.subarray(this.content, range[0], range[1]));
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getMethodDoc(IMethod child) throws JavaModelException {
        if (this.content == null) {
            return null;
        }
        int[] range = null;
        JavadocContents javadocContents = this;
        synchronized (javadocContents) {
            if (this.methodDocRanges == null) {
                this.methodDocRanges = new HashtableOfObjectToIntArray();
            } else {
                range = this.methodDocRanges.get(child);
            }
            if (range == null) {
                range = this.computeMethodRange(child);
                this.methodDocRanges.put(child, range);
            }
        }
        if (range != null) {
            if (range == UNKNOWN_FORMAT) {
                throw new JavaModelException(new JavaModelStatus(1009, child));
            }
            return String.valueOf(CharOperation.subarray(this.content, range[0], range[1]));
        }
        return null;
    }

    private int[] computeChildRange(char[] anchor, int indexOfSectionBottom) throws JavaModelException {
        int index;
        if (this.tempAnchorIndexesCount > 0) {
            int i = 0;
            while (i < this.tempAnchorIndexesCount) {
                int anchorEndStart = this.tempAnchorIndexes[i];
                if (anchorEndStart != -1 && CharOperation.prefixEquals(anchor, this.content, false, anchorEndStart)) {
                    this.tempAnchorIndexes[i] = -1;
                    return this.computeChildRange(anchorEndStart, anchor, indexOfSectionBottom);
                }
                ++i;
            }
        }
        int fromIndex = this.tempLastAnchorFoundIndex;
        while ((index = CharOperation.indexOf(JavadocConstants.ANCHOR_PREFIX_START, this.content, false, fromIndex)) != -1 && (index < indexOfSectionBottom || indexOfSectionBottom == -1)) {
            int anchorEndStart;
            fromIndex = index + 1;
            this.tempLastAnchorFoundIndex = anchorEndStart = index + JavadocConstants.ANCHOR_PREFIX_START_LENGHT;
            if (CharOperation.prefixEquals(anchor, this.content, false, anchorEndStart)) {
                return this.computeChildRange(anchorEndStart, anchor, indexOfSectionBottom);
            }
            if (this.tempAnchorIndexes.length == this.tempAnchorIndexesCount) {
                this.tempAnchorIndexes = new int[this.tempAnchorIndexesCount + 20];
                System.arraycopy(this.tempAnchorIndexes, 0, this.tempAnchorIndexes, 0, this.tempAnchorIndexesCount);
            }
            this.tempAnchorIndexes[this.tempAnchorIndexesCount++] = anchorEndStart;
        }
        return null;
    }

    private int[] computeChildRange(int anchorEndStart, char[] anchor, int indexOfBottom) {
        int[] range = null;
        if (indexOfBottom != -1) {
            int indexOfEndLink = CharOperation.indexOf(JavadocConstants.ANCHOR_SUFFIX, this.content, false, anchorEndStart + anchor.length);
            if (indexOfEndLink != -1) {
                int indexOfNextElement = CharOperation.indexOf(JavadocConstants.ANCHOR_PREFIX_START, this.content, false, indexOfEndLink);
                int javadocStart = indexOfEndLink + JavadocConstants.ANCHOR_SUFFIX_LENGTH;
                int javadocEnd = indexOfNextElement == -1 ? indexOfBottom : Math.min(indexOfNextElement, indexOfBottom);
                range = new int[]{javadocStart, javadocEnd};
            } else {
                range = UNKNOWN_FORMAT;
            }
        } else {
            range = UNKNOWN_FORMAT;
        }
        return range;
    }

    private void computeChildrenSections() {
        int lastIndex = CharOperation.indexOf(JavadocConstants.SEPARATOR_START, this.content, false, this.childrenStart);
        lastIndex = lastIndex == -1 ? this.childrenStart : lastIndex;
        this.indexOfFieldDetails = CharOperation.indexOf(JavadocConstants.FIELD_DETAIL, this.content, false, lastIndex);
        lastIndex = this.indexOfFieldDetails == -1 ? lastIndex : this.indexOfFieldDetails;
        this.indexOfConstructorDetails = CharOperation.indexOf(JavadocConstants.CONSTRUCTOR_DETAIL, this.content, false, lastIndex);
        lastIndex = this.indexOfConstructorDetails == -1 ? lastIndex : this.indexOfConstructorDetails;
        this.indexOfMethodDetails = CharOperation.indexOf(JavadocConstants.METHOD_DETAIL, this.content, false, lastIndex);
        lastIndex = this.indexOfMethodDetails == -1 ? lastIndex : this.indexOfMethodDetails;
        this.indexOfEndOfClassData = CharOperation.indexOf(JavadocConstants.END_OF_CLASS_DATA, this.content, false, lastIndex);
        this.indexOfFieldsBottom = this.indexOfConstructorDetails != -1 ? this.indexOfConstructorDetails : (this.indexOfMethodDetails != -1 ? this.indexOfMethodDetails : this.indexOfEndOfClassData);
        this.indexOfAllMethodsTop = this.indexOfConstructorDetails != -1 ? this.indexOfConstructorDetails : this.indexOfMethodDetails;
        this.indexOfAllMethodsBottom = this.indexOfEndOfClassData;
        this.hasComputedChildrenSections = true;
    }

    private int[] computeFieldRange(IField field) throws JavaModelException {
        if (!this.hasComputedChildrenSections) {
            this.computeChildrenSections();
        }
        StringBuffer buffer = new StringBuffer(field.getElementName());
        buffer.append("\"");
        char[] anchor = String.valueOf(buffer).toCharArray();
        int[] range = null;
        if (this.indexOfFieldDetails == -1 || this.indexOfFieldsBottom == -1) {
            if (this.unknownFormatAnchorIndexes == null) {
                this.unknownFormatAnchorIndexes = new int[this.type.getChildren().length];
                this.unknownFormatAnchorIndexesCount = 0;
                this.unknownFormatLastAnchorFoundIndex = this.childrenStart;
            }
            this.tempAnchorIndexes = this.unknownFormatAnchorIndexes;
            this.tempAnchorIndexesCount = this.unknownFormatAnchorIndexesCount;
            this.tempLastAnchorFoundIndex = this.unknownFormatLastAnchorFoundIndex;
            range = this.computeChildRange(anchor, this.indexOfFieldsBottom);
            this.unknownFormatLastAnchorFoundIndex = this.tempLastAnchorFoundIndex;
            this.unknownFormatAnchorIndexesCount = this.tempAnchorIndexesCount;
            this.unknownFormatAnchorIndexes = this.tempAnchorIndexes;
        } else {
            if (this.fieldAnchorIndexes == null) {
                this.fieldAnchorIndexes = new int[this.type.getFields().length];
                this.fieldAnchorIndexesCount = 0;
                this.fieldLastAnchorFoundIndex = this.indexOfFieldDetails;
            }
            this.tempAnchorIndexes = this.fieldAnchorIndexes;
            this.tempAnchorIndexesCount = this.fieldAnchorIndexesCount;
            this.tempLastAnchorFoundIndex = this.fieldLastAnchorFoundIndex;
            range = this.computeChildRange(anchor, this.indexOfFieldsBottom);
            this.fieldLastAnchorFoundIndex = this.tempLastAnchorFoundIndex;
            this.fieldAnchorIndexesCount = this.tempAnchorIndexesCount;
            this.fieldAnchorIndexes = this.tempAnchorIndexes;
        }
        return range;
    }

    private int[] computeMethodRange(IMethod method) throws JavaModelException {
        if (!this.hasComputedChildrenSections) {
            this.computeChildrenSections();
        }
        char[] anchor = this.computeMethodAnchorPrefixEnd((BinaryMethod)method).toCharArray();
        int[] range = null;
        if (this.indexOfAllMethodsTop == -1 || this.indexOfAllMethodsBottom == -1) {
            if (this.unknownFormatAnchorIndexes == null) {
                this.unknownFormatAnchorIndexes = new int[this.type.getChildren().length];
                this.unknownFormatAnchorIndexesCount = 0;
                this.unknownFormatLastAnchorFoundIndex = this.childrenStart;
            }
            this.tempAnchorIndexes = this.unknownFormatAnchorIndexes;
            this.tempAnchorIndexesCount = this.unknownFormatAnchorIndexesCount;
            this.tempLastAnchorFoundIndex = this.unknownFormatLastAnchorFoundIndex;
            range = this.computeChildRange(anchor, this.indexOfFieldsBottom);
            this.unknownFormatLastAnchorFoundIndex = this.tempLastAnchorFoundIndex;
            this.unknownFormatAnchorIndexesCount = this.tempAnchorIndexesCount;
            this.unknownFormatAnchorIndexes = this.tempAnchorIndexes;
        } else {
            if (this.methodAnchorIndexes == null) {
                this.methodAnchorIndexes = new int[this.type.getFields().length];
                this.methodAnchorIndexesCount = 0;
                this.methodLastAnchorFoundIndex = this.indexOfAllMethodsTop;
            }
            this.tempAnchorIndexes = this.methodAnchorIndexes;
            this.tempAnchorIndexesCount = this.methodAnchorIndexesCount;
            this.tempLastAnchorFoundIndex = this.methodLastAnchorFoundIndex;
            range = this.computeChildRange(anchor, this.indexOfAllMethodsBottom);
            this.methodLastAnchorFoundIndex = this.tempLastAnchorFoundIndex;
            this.methodAnchorIndexesCount = this.tempAnchorIndexesCount;
            this.methodAnchorIndexes = this.tempAnchorIndexes;
        }
        return range;
    }

    private String computeMethodAnchorPrefixEnd(BinaryMethod method) throws JavaModelException {
        BinaryType declaringType;
        String typeQualifiedName = null;
        if (this.type.isMember()) {
            IType currentType = this.type;
            StringBuffer buffer = new StringBuffer();
            while (currentType != null) {
                buffer.insert(0, currentType.getElementName());
                currentType = currentType.getDeclaringType();
                if (currentType == null) continue;
                buffer.insert(0, '.');
            }
            typeQualifiedName = new String(buffer.toString());
        } else {
            typeQualifiedName = this.type.getElementName();
        }
        String methodName = method.getElementName();
        if (method.isConstructor()) {
            methodName = typeQualifiedName;
        }
        IBinaryMethod info = (IBinaryMethod)method.getElementInfo();
        char[] genericSignature = info.getGenericSignature();
        String anchor = null;
        if (genericSignature != null) {
            anchor = Util.toAnchor(0, genericSignature = CharOperation.replaceOnCopy(genericSignature, '/', '.'), methodName, Flags.isVarargs(method.getFlags()));
            if (anchor == null) {
                throw new JavaModelException(new JavaModelStatus(1009, method));
            }
        } else {
            anchor = Signature.toString(method.getSignature().replace('/', '.'), methodName, null, true, false, Flags.isVarargs(method.getFlags()));
        }
        if ((declaringType = this.type).isMember()) {
            int depth = 0;
            if (!Flags.isStatic(declaringType.getFlags())) {
                ++depth;
            }
            if (depth != 0) {
                int index;
                int indexOfComma;
                int indexOfOpeningParen = anchor.indexOf(40);
                if (indexOfOpeningParen == -1) {
                    return null;
                }
                if ((indexOfComma = anchor.indexOf(44, index = indexOfOpeningParen++)) != -1) {
                    index = indexOfComma + 2;
                }
                anchor = String.valueOf(anchor.substring(0, indexOfOpeningParen)) + anchor.substring(index);
            }
        }
        return String.valueOf(anchor) + "\"";
    }

    private void computeTypeRange() throws JavaModelException {
        int indexOfStartOfClassData = CharOperation.indexOf(JavadocConstants.START_OF_CLASS_DATA, this.content, false);
        if (indexOfStartOfClassData == -1) {
            this.typeDocRange = UNKNOWN_FORMAT;
            return;
        }
        int indexOfNextSeparator = CharOperation.indexOf(JavadocConstants.SEPARATOR_START, this.content, false, indexOfStartOfClassData);
        if (indexOfNextSeparator == -1) {
            this.typeDocRange = UNKNOWN_FORMAT;
            return;
        }
        int indexOfNextSummary = CharOperation.indexOf(JavadocConstants.NESTED_CLASS_SUMMARY, this.content, false, indexOfNextSeparator);
        if (indexOfNextSummary == -1 && this.type.isEnum()) {
            indexOfNextSummary = CharOperation.indexOf(JavadocConstants.ENUM_CONSTANT_SUMMARY, this.content, false, indexOfNextSeparator);
        }
        if (indexOfNextSummary == -1 && this.type.isAnnotation() && (indexOfNextSummary = CharOperation.indexOf(JavadocConstants.ANNOTATION_TYPE_REQUIRED_MEMBER_SUMMARY, this.content, false, indexOfNextSeparator)) == -1) {
            indexOfNextSummary = CharOperation.indexOf(JavadocConstants.ANNOTATION_TYPE_OPTIONAL_MEMBER_SUMMARY, this.content, false, indexOfNextSeparator);
        }
        if (indexOfNextSummary == -1) {
            indexOfNextSummary = CharOperation.indexOf(JavadocConstants.FIELD_SUMMARY, this.content, false, indexOfNextSeparator);
        }
        if (indexOfNextSummary == -1) {
            indexOfNextSummary = CharOperation.indexOf(JavadocConstants.CONSTRUCTOR_SUMMARY, this.content, false, indexOfNextSeparator);
        }
        if (indexOfNextSummary == -1) {
            indexOfNextSummary = CharOperation.indexOf(JavadocConstants.METHOD_SUMMARY, this.content, false, indexOfNextSeparator);
        }
        if (indexOfNextSummary == -1) {
            indexOfNextSummary = CharOperation.indexOf(JavadocConstants.END_OF_CLASS_DATA, this.content, false, indexOfNextSeparator);
        } else {
            this.childrenStart = indexOfNextSummary + 1;
        }
        if (indexOfNextSummary == -1) {
            this.typeDocRange = UNKNOWN_FORMAT;
            return;
        }
        int start = indexOfStartOfClassData + JavadocConstants.START_OF_CLASS_DATA_LENGTH;
        int indexOfFirstParagraph = CharOperation.indexOf("<P>".toCharArray(), this.content, false, start);
        if (indexOfFirstParagraph != -1 && indexOfFirstParagraph < indexOfNextSummary) {
            start = indexOfFirstParagraph;
        }
        this.typeDocRange = new int[]{start, indexOfNextSummary};
    }
}

