/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.projection.Segment;

public class Fragment
extends Position {
    public Segment segment;

    public Fragment(int offset, int length) {
        super(offset, length);
    }
}

