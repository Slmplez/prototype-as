/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

public class DocumentRewriteSessionType {
    public static final DocumentRewriteSessionType UNRESTRICTED = new DocumentRewriteSessionType();
    public static final DocumentRewriteSessionType UNRESTRICTED_SMALL = new DocumentRewriteSessionType();
    public static final DocumentRewriteSessionType SEQUENTIAL = new DocumentRewriteSessionType();
    public static final DocumentRewriteSessionType STRICTLY_SEQUENTIAL = new DocumentRewriteSessionType();

    private DocumentRewriteSessionType() {
    }
}

