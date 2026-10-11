/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage;

public class PersistedPath {
    private static final String DOUBLE_SLASH = "//";
    private final String key;
    private final String path;

    public PersistedPath(String path, String key) {
        this.key = key;
        this.path = path;
    }

    public String getKey() {
        return this.key;
    }

    public String getPath() {
        return this.path;
    }

    public String toString() {
        int pathLength;
        int n = pathLength = this.path == null ? 0 : this.path.length();
        String result = this.key.indexOf(47) == -1 ? (pathLength == 0 ? this.key : String.valueOf(this.path) + '/' + this.key) : (pathLength == 0 ? DOUBLE_SLASH + this.key : String.valueOf(this.path) + DOUBLE_SLASH + this.key);
        return result;
    }

    public PersistedPath(String fullPath) {
        int index = fullPath.indexOf(DOUBLE_SLASH);
        if (index == -1) {
            int lastIndex = fullPath.lastIndexOf(47);
            if (lastIndex == -1) {
                this.path = null;
                this.key = fullPath;
            } else {
                this.path = fullPath.substring(0, lastIndex);
                this.key = fullPath.substring(lastIndex + 1);
            }
        } else {
            this.path = fullPath.substring(0, index);
            this.key = fullPath.substring(index + 2);
        }
    }
}

