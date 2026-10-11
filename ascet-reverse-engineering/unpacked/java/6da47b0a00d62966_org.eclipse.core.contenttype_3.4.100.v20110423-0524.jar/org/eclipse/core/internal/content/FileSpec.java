/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.content;

class FileSpec {
    static final int BASIC_TYPE = 12;
    private String text;
    private int type;

    public FileSpec(String text, int type) {
        this.text = text;
        this.type = type;
    }

    public String getText() {
        return this.text;
    }

    public int getType() {
        return this.type;
    }

    public static int getBasicType(int type) {
        return 0xC & type;
    }

    public boolean equals(Object other) {
        if (!(other instanceof FileSpec)) {
            return false;
        }
        FileSpec otherFileSpec = (FileSpec)other;
        return this.equals(this.text, otherFileSpec.getType(), false);
    }

    public boolean equals(String text, int otherType, boolean strict) {
        return (!strict && FileSpec.getBasicType(this.type) == FileSpec.getBasicType(otherType) || this.type == otherType) && this.text.equalsIgnoreCase(text);
    }

    public int hashCode() {
        return this.text.hashCode();
    }

    public static String getMappingKeyFor(String fileSpecText) {
        return fileSpecText.toLowerCase();
    }

    public String toString() {
        return this.getText();
    }
}

