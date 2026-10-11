/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.extension;

import org.eclipse.help.IContentExtension;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class ContentExtension
extends UAElement
implements IContentExtension {
    public static final String NAME_CONTRIBUTION = "contribution";
    public static final String NAME_CONTRIBUTION_LEGACY = "topicExtension";
    public static final String NAME_REPLACEMENT = "replacement";
    public static final String NAME_REPLACEMENT_LEGACY = "topicReplace";
    public static final String ATTRIBUTE_CONTENT = "content";
    public static final String ATTRIBUTE_PATH = "path";

    public ContentExtension(IContentExtension src) {
        super(src.getType() == 0 ? NAME_CONTRIBUTION : NAME_REPLACEMENT, src);
        this.setContent(src.getContent());
        this.setPath(src.getPath());
    }

    public ContentExtension(Element src) {
        super(src);
    }

    public String getContent() {
        return this.getAttribute(ATTRIBUTE_CONTENT);
    }

    public String getPath() {
        return this.getAttribute(ATTRIBUTE_PATH);
    }

    public int getType() {
        String name = this.getElementName();
        return NAME_CONTRIBUTION.equals(name) || NAME_CONTRIBUTION_LEGACY.equals(name) ? 0 : 1;
    }

    public void setContent(String content) {
        this.setAttribute(ATTRIBUTE_CONTENT, content);
    }

    public void setPath(String path) {
        this.setAttribute(ATTRIBUTE_PATH, path);
    }
}

