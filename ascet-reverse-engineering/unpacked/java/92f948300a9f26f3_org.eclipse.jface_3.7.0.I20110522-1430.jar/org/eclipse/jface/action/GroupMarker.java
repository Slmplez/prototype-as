/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.AbstractGroupMarker;

public class GroupMarker
extends AbstractGroupMarker {
    public GroupMarker(String groupName) {
        super(groupName);
    }

    public boolean isVisible() {
        return false;
    }
}

