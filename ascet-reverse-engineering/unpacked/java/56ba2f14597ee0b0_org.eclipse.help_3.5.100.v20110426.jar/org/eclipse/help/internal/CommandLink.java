/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal;

import org.eclipse.help.ICommandLink;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class CommandLink
extends UAElement
implements ICommandLink {
    public static final String NAME = "command";
    public static final String ATTRIBUTE_LABEL = "label";
    public static final String ATTRIBUTE_SERIALIZATION = "serialization";

    public CommandLink(ICommandLink src) {
        super(NAME, src);
        this.setLabel(src.getLabel());
        this.setSerialization(src.getSerialization());
    }

    public CommandLink(Element src) {
        super(src);
    }

    public String getLabel() {
        return this.getAttribute(ATTRIBUTE_LABEL);
    }

    public String getSerialization() {
        return this.getAttribute(ATTRIBUTE_SERIALIZATION);
    }

    public void setLabel(String label) {
        this.setAttribute(ATTRIBUTE_LABEL, label);
    }

    public void setSerialization(String serialization) {
        this.setAttribute(ATTRIBUTE_SERIALIZATION, serialization);
    }
}

