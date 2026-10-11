/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.internal.SerializableCompatibility;

public final class Point
implements SerializableCompatibility {
    public int x;
    public int y;
    static final long serialVersionUID = 3257002163938146354L;

    public Point(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Point)) {
            return false;
        }
        Point p = (Point)object;
        return p.x == this.x && p.y == this.y;
    }

    public int hashCode() {
        return this.x ^ this.y;
    }

    public String toString() {
        return "Point {" + this.x + ", " + this.y + "}";
    }
}

