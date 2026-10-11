/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

public class ToolEntry {
    public String host0 = null;
    public String port0 = null;
    public String host = null;
    public int port = 0;

    public ToolEntry() {
    }

    public ToolEntry(String h, int p) {
        this.host = h;
        this.port = p;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ToolEntry)) {
            return false;
        }
        if (((ToolEntry)obj).port != this.port) {
            return false;
        }
        return ((ToolEntry)obj).host.equalsIgnoreCase(this.host);
    }

    public int hashCode() {
        return this.port + this.host.hashCode();
    }
}

