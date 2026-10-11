/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.views.log;

import java.io.PrintWriter;
import org.eclipse.ui.internal.views.log.AbstractEntry;

public class Group
extends AbstractEntry {
    private String name;

    public Group(String name) {
        this.name = name;
    }

    public void write(PrintWriter writer) {
        Object[] children = this.getChildren(null);
        int i = 0;
        while (i < children.length) {
            AbstractEntry entry = (AbstractEntry)((Object)children[i]);
            entry.write(writer);
            writer.println();
            ++i;
        }
    }

    public String toString() {
        return this.name;
    }
}

