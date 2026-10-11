/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.Position
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.text.Position;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IHyperlink;

public class ConsoleHyperlinkPosition
extends Position {
    public static final String HYPER_LINK_CATEGORY = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".CONSOLE_HYPERLINK_POSITION";
    private IHyperlink fLink = null;

    public ConsoleHyperlinkPosition(IHyperlink link, int offset, int length) {
        super(offset, length);
        this.fLink = link;
    }

    public IHyperlink getHyperLink() {
        return this.fLink;
    }

    public boolean equals(Object arg) {
        return arg instanceof ConsoleHyperlinkPosition && super.equals(arg) && this.getHyperLink().equals(((ConsoleHyperlinkPosition)((Object)arg)).getHyperLink());
    }

    public int hashCode() {
        return super.hashCode() + this.getHyperLink().hashCode();
    }
}

