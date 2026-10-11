/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.events;

import org.eclipse.core.runtime.IPath;

public class NodeIDMap {
    private static final int[] SIZES = new int[]{13, 29, 71, 173, 349, 733, 1511, 3079, 6133, 16381, 32653, 65543, 131111, 262139, 524287, 1051601};
    private static final double LOAD_FACTOR = 0.75;
    private static final long LARGE_NUMBER = 2654435761L;
    int sizeOffset = 0;
    protected int elementCount = 0;
    protected long[] ids = new long[SIZES[this.sizeOffset]];
    protected IPath[] oldPaths = new IPath[SIZES[this.sizeOffset]];
    protected IPath[] newPaths = new IPath[SIZES[this.sizeOffset]];

    protected void expand() {
        int newLength;
        try {
            newLength = SIZES[++this.sizeOffset];
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            newLength = this.ids.length * 2;
        }
        long[] grownIds = new long[newLength];
        IPath[] grownOldPaths = new IPath[newLength];
        IPath[] grownNewPaths = new IPath[newLength];
        int maxArrayIndex = newLength - 1;
        int i = 0;
        while (i < this.ids.length) {
            long id = this.ids[i];
            if (id != 0L) {
                int hash = this.hashFor(id, newLength);
                while (grownIds[hash] != 0L) {
                    if (++hash <= maxArrayIndex) continue;
                    hash = 0;
                }
                grownIds[hash] = id;
                grownOldPaths[hash] = this.oldPaths[i];
                grownNewPaths[hash] = this.newPaths[i];
            }
            ++i;
        }
        this.ids = grownIds;
        this.oldPaths = grownOldPaths;
        this.newPaths = grownNewPaths;
    }

    private int getIndex(long searchID) {
        int hash;
        int len = this.ids.length;
        int i = hash = this.hashFor(searchID, len);
        while (i < len) {
            if (this.ids[i] == searchID) {
                return i;
            }
            if (this.ids[i] == 0L) {
                return -1;
            }
            ++i;
        }
        i = 0;
        while (i < hash - 1) {
            if (this.ids[i] == searchID) {
                return i;
            }
            if (this.ids[i] == 0L) {
                return -1;
            }
            ++i;
        }
        return -1;
    }

    public IPath getNewPath(long nodeID) {
        int index = this.getIndex(nodeID);
        if (index == -1) {
            return null;
        }
        return this.newPaths[index];
    }

    public IPath getOldPath(long nodeID) {
        int index = this.getIndex(nodeID);
        if (index == -1) {
            return null;
        }
        return this.oldPaths[index];
    }

    private int hashFor(long id, int size) {
        return (int)Math.abs(id * 2654435761L % (long)size);
    }

    public boolean isEmpty() {
        return this.elementCount == 0;
    }

    private void put(long id, IPath oldPath, IPath newPath) {
        int hash;
        if (oldPath == null && newPath == null) {
            return;
        }
        int i = hash = this.hashFor(id, this.ids.length);
        while (i < this.ids.length) {
            if (this.ids[i] == id) {
                if (oldPath != null) {
                    this.oldPaths[i] = oldPath;
                }
                if (newPath != null) {
                    this.newPaths[i] = newPath;
                }
                return;
            }
            if (this.ids[i] == 0L) {
                this.ids[i] = id;
                if (oldPath != null) {
                    this.oldPaths[i] = oldPath;
                }
                if (newPath != null) {
                    this.newPaths[i] = newPath;
                }
                ++this.elementCount;
                if (this.shouldGrow()) {
                    this.expand();
                }
                return;
            }
            ++i;
        }
        i = 0;
        while (i < hash - 1) {
            if (this.ids[i] == id) {
                if (oldPath != null) {
                    this.oldPaths[i] = oldPath;
                }
                if (newPath != null) {
                    this.newPaths[i] = newPath;
                }
                return;
            }
            if (this.ids[i] == 0L) {
                this.ids[i] = id;
                if (oldPath != null) {
                    this.oldPaths[i] = oldPath;
                }
                if (newPath != null) {
                    this.newPaths[i] = newPath;
                }
                ++this.elementCount;
                if (this.shouldGrow()) {
                    this.expand();
                }
                return;
            }
            ++i;
        }
        this.expand();
        this.put(id, oldPath, newPath);
    }

    public void putOldPath(long id, IPath path) {
        this.put(id, path, null);
    }

    public void putNewPath(long id, IPath path) {
        this.put(id, null, path);
    }

    private boolean shouldGrow() {
        return (double)this.elementCount > (double)this.ids.length * 0.75;
    }
}

