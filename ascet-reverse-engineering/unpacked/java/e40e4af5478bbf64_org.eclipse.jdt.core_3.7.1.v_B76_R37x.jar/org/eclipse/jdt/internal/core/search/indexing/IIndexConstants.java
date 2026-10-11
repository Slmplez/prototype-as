/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.indexing;

public interface IIndexConstants {
    public static final char[] REF = "ref".toCharArray();
    public static final char[] ANNOTATION_REF = "annotationRef".toCharArray();
    public static final char[] METHOD_REF = "methodRef".toCharArray();
    public static final char[] CONSTRUCTOR_REF = "constructorRef".toCharArray();
    public static final char[] SUPER_REF = "superRef".toCharArray();
    public static final char[] TYPE_DECL = "typeDecl".toCharArray();
    public static final char[] METHOD_DECL = "methodDecl".toCharArray();
    public static final char[] CONSTRUCTOR_DECL = "constructorDecl".toCharArray();
    public static final char[] FIELD_DECL = "fieldDecl".toCharArray();
    public static final char[] OBJECT = "Object".toCharArray();
    public static final char[][] COUNTS = new char[][]{{'/', '0'}, {'/', '1'}, {'/', '2'}, {'/', '3'}, {'/', '4'}, {'/', '5'}, {'/', '6'}, {'/', '7'}, {'/', '8'}, {'/', '9'}};
    public static final char[] DEFAULT_CONSTRUCTOR = new char[]{'/', '#'};
    public static final char CLASS_SUFFIX = 'C';
    public static final char INTERFACE_SUFFIX = 'I';
    public static final char ENUM_SUFFIX = 'E';
    public static final char ANNOTATION_TYPE_SUFFIX = 'A';
    public static final char TYPE_SUFFIX = '\u0000';
    public static final char CLASS_AND_ENUM_SUFFIX = '\t';
    public static final char CLASS_AND_INTERFACE_SUFFIX = '\n';
    public static final char INTERFACE_AND_ANNOTATION_SUFFIX = '\u000b';
    public static final char SEPARATOR = '/';
    public static final char PARAMETER_SEPARATOR = ',';
    public static final char SECONDARY_SUFFIX = 'S';
    public static final char[] ONE_STAR = new char[]{'*'};
    public static final char[][] ONE_STAR_CHAR = new char[][]{ONE_STAR};
    public static final char ZERO_CHAR = '0';
    public static final char[] ONE_ZERO = new char[]{'0'};
    public static final char[][] ONE_ZERO_CHAR = new char[][]{ONE_ZERO};
    public static final int PKG_REF_PATTERN = 1;
    public static final int PKG_DECL_PATTERN = 2;
    public static final int TYPE_REF_PATTERN = 4;
    public static final int TYPE_DECL_PATTERN = 8;
    public static final int SUPER_REF_PATTERN = 16;
    public static final int CONSTRUCTOR_PATTERN = 32;
    public static final int FIELD_PATTERN = 64;
    public static final int METHOD_PATTERN = 128;
    public static final int OR_PATTERN = 256;
    public static final int LOCAL_VAR_PATTERN = 512;
    public static final int TYPE_PARAM_PATTERN = 1024;
    public static final int AND_PATTERN = 2048;
    public static final int ANNOT_REF_PATTERN = 4096;
}

