/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter.comment;

public interface IJavaDocTagConstants {
    public static final char[][] JAVADOC_SINGLE_BREAK_TAG = new char[][]{"br".toCharArray()};
    public static final char[][] JAVADOC_CODE_TAGS = new char[][]{"pre".toCharArray()};
    public static final char[][] JAVADOC_BREAK_TAGS = new char[][]{"dd".toCharArray(), "dt".toCharArray(), "li".toCharArray(), "td".toCharArray(), "th".toCharArray(), "h1".toCharArray(), "h2".toCharArray(), "h3".toCharArray(), "h4".toCharArray(), "h5".toCharArray(), "h6".toCharArray(), "q".toCharArray()};
    public static final char[][] JAVADOC_IMMUTABLE_TAGS = new char[][]{"code".toCharArray(), "em".toCharArray(), "pre".toCharArray(), "q".toCharArray(), "tt".toCharArray()};
    public static final char[][] JAVADOC_NEWLINE_TAGS = new char[][]{"dd".toCharArray(), "dt".toCharArray(), "li".toCharArray(), "td".toCharArray(), "th".toCharArray(), "tr".toCharArray(), "h1".toCharArray(), "h2".toCharArray(), "h3".toCharArray(), "h4".toCharArray(), "h5".toCharArray(), "h6".toCharArray(), "q".toCharArray()};
    public static final char[][] JAVADOC_PARAM_TAGS = new char[][]{"@exception".toCharArray(), "@param".toCharArray(), "@serialField".toCharArray(), "@throws".toCharArray()};
    public static final char[][] JAVADOC_SEPARATOR_TAGS = new char[][]{"dl".toCharArray(), "hr".toCharArray(), "nl".toCharArray(), "p".toCharArray(), "pre".toCharArray(), "ul".toCharArray(), "ol".toCharArray(), "table".toCharArray(), "tr".toCharArray()};
    public static final char JAVADOC_TAG_PREFIX = '@';
    public static final char LINK_TAG_POSTFIX = '}';
    public static final String LINK_TAG_PREFIX_STRING = "{@";
    public static final char[] LINK_TAG_PREFIX = "{@".toCharArray();
    public static final char[][] COMMENT_ROOT_TAGS = new char[][]{"@deprecated".toCharArray(), "@see".toCharArray(), "@since".toCharArray(), "@version".toCharArray()};
    public static final char COMMENT_TAG_PREFIX = '@';
    public static final String BLOCK_HEADER = "/*";
    public static final int BLOCK_HEADER_LENGTH = "/*".length();
    public static final String JAVADOC_HEADER = "/**";
    public static final int JAVADOC_HEADER_LENGTH = "/**".length();
    public static final String BLOCK_LINE_PREFIX = " * ";
    public static final int BLOCK_LINE_PREFIX_LENGTH = " * ".length();
    public static final String BLOCK_FOOTER = "*/";
    public static final int BLOCK_FOOTER_LENGTH = "*/".length();
    public static final String LINE_COMMENT_PREFIX = "// ";
    public static final int LINE_COMMENT_PREFIX_LENGTH = "// ".length();
    public static final String JAVADOC_STAR = "*";
    public static final int JAVADOC_TAGS_INDEX_MASK = 65535;
    public static final int JAVADOC_TAGS_ID_MASK = 65280;
    public static final int JAVADOC_SINGLE_BREAK_TAG_ID = 256;
    public static final int JAVADOC_CODE_TAGS_ID = 512;
    public static final int JAVADOC_BREAK_TAGS_ID = 1024;
    public static final int JAVADOC_IMMUTABLE_TAGS_ID = 2048;
    public static final int JAVADOC_SEPARATOR_TAGS_ID = 4096;
    public static final int JAVADOC_SINGLE_TAGS_ID = 256;
    public static final int JAVADOC_CLOSED_TAG = 65536;
}

