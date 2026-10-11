/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.fieldassist;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.fieldassist.IContentProposal;

public class ContentProposal
implements IContentProposal {
    private static final String EMPTY = "";
    private String content = "";
    private String label = "";
    private String description = "";
    private int cursorPosition = 0;

    public ContentProposal(String content) {
        this(content, content, null);
    }

    public ContentProposal(String content, String description) {
        this(content, content, description);
    }

    public ContentProposal(String content, String label, String description) {
        this(content, label, description, content.length());
    }

    public ContentProposal(String content, String label, String description, int cursorPosition) {
        Assert.isNotNull((Object)content);
        Assert.isNotNull((Object)label);
        Assert.isLegal((cursorPosition >= 0 && cursorPosition <= content.length() ? 1 : 0) != 0);
        this.content = content;
        this.label = label;
        this.description = description;
        this.cursorPosition = cursorPosition;
    }

    public String getContent() {
        return this.content;
    }

    public int getCursorPosition() {
        return this.cursorPosition;
    }

    public String getDescription() {
        return this.description;
    }

    public String getLabel() {
        return this.label;
    }
}

