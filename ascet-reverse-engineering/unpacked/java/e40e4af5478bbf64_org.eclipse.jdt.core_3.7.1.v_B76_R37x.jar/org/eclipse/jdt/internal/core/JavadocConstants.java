/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

public interface JavadocConstants {
    public static final String ANCHOR_PREFIX_END = "\"";
    public static final char[] ANCHOR_PREFIX_START = "<A NAME=\"".toCharArray();
    public static final int ANCHOR_PREFIX_START_LENGHT = ANCHOR_PREFIX_START.length;
    public static final char[] ANCHOR_SUFFIX = "</A>".toCharArray();
    public static final int ANCHOR_SUFFIX_LENGTH = ANCHOR_SUFFIX.length;
    public static final char[] CONSTRUCTOR_DETAIL = "<!-- ========= CONSTRUCTOR DETAIL ======== -->".toCharArray();
    public static final char[] CONSTRUCTOR_SUMMARY = "<!-- ======== CONSTRUCTOR SUMMARY ======== -->".toCharArray();
    public static final char[] FIELD_DETAIL = "<!-- ============ FIELD DETAIL =========== -->".toCharArray();
    public static final char[] FIELD_SUMMARY = "<!-- =========== FIELD SUMMARY =========== -->".toCharArray();
    public static final char[] ENUM_CONSTANT_SUMMARY = "<!-- =========== ENUM CONSTANT SUMMARY =========== -->".toCharArray();
    public static final char[] ANNOTATION_TYPE_REQUIRED_MEMBER_SUMMARY = "<!-- =========== ANNOTATION TYPE REQUIRED MEMBER SUMMARY =========== -->".toCharArray();
    public static final char[] ANNOTATION_TYPE_OPTIONAL_MEMBER_SUMMARY = "<!-- =========== ANNOTATION TYPE OPTIONAL MEMBER SUMMARY =========== -->".toCharArray();
    public static final char[] END_OF_CLASS_DATA = "<!-- ========= END OF CLASS DATA ========= -->".toCharArray();
    public static final String HTML_EXTENSION = ".html";
    public static final String INDEX_FILE_NAME = "index.html";
    public static final char[] METHOD_DETAIL = "<!-- ============ METHOD DETAIL ========== -->".toCharArray();
    public static final char[] METHOD_SUMMARY = "<!-- ========== METHOD SUMMARY =========== -->".toCharArray();
    public static final char[] NESTED_CLASS_SUMMARY = "<!-- ======== NESTED CLASS SUMMARY ======== -->".toCharArray();
    public static final String PACKAGE_FILE_NAME = "package-summary.html";
    public static final char[] SEPARATOR_START = "<!-- =".toCharArray();
    public static final char[] START_OF_CLASS_DATA = "<!-- ======== START OF CLASS DATA ======== -->".toCharArray();
    public static final int START_OF_CLASS_DATA_LENGTH = START_OF_CLASS_DATA.length;
}

