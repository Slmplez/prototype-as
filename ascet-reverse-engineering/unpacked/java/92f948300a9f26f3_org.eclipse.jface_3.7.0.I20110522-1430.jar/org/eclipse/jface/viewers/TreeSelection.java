/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.CustomHashtable;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.ITreeSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreePath;

public class TreeSelection
extends StructuredSelection
implements ITreeSelection {
    private TreePath[] paths;
    private CustomHashtable element2TreePaths;
    public static final TreeSelection EMPTY = new TreeSelection();
    private static final TreePath[] EMPTY_TREE_PATHS = new TreePath[0];

    public TreeSelection(TreePath[] paths) {
        this(new InitializeData(paths, null));
    }

    public TreeSelection(TreePath[] paths, IElementComparer comparer) {
        this(new InitializeData(paths, comparer));
    }

    public TreeSelection(TreePath treePath) {
        TreePath[] treePathArray;
        if (treePath != null) {
            TreePath[] treePathArray2 = new TreePath[1];
            treePathArray = treePathArray2;
            treePathArray2[0] = treePath;
        } else {
            treePathArray = EMPTY_TREE_PATHS;
        }
        this(treePathArray, null);
    }

    public TreeSelection(TreePath treePath, IElementComparer comparer) {
        TreePath[] treePathArray;
        if (treePath != null) {
            TreePath[] treePathArray2 = new TreePath[1];
            treePathArray = treePathArray2;
            treePathArray2[0] = treePath;
        } else {
            treePathArray = EMPTY_TREE_PATHS;
        }
        this(treePathArray, comparer);
    }

    private TreeSelection(InitializeData data) {
        super(data.selection);
        this.paths = null;
        this.element2TreePaths = null;
        this.paths = data.paths;
        this.element2TreePaths = data.element2TreePaths;
    }

    public TreeSelection() {
        this.paths = null;
        this.element2TreePaths = null;
    }

    public IElementComparer getElementComparer() {
        if (this.element2TreePaths == null) {
            return null;
        }
        return this.element2TreePaths.getComparer();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TreeSelection)) {
            return super.equals(obj);
        }
        TreeSelection selection = (TreeSelection)obj;
        int size = this.getPaths().length;
        if (selection.getPaths().length == size) {
            IElementComparer comparerOrNull;
            IElementComparer iElementComparer = comparerOrNull = this.getElementComparer() == selection.getElementComparer() ? this.getElementComparer() : null;
            if (size > 0) {
                int i = 0;
                while (i < this.paths.length) {
                    if (!this.paths[i].equals(selection.paths[i], comparerOrNull)) {
                        return false;
                    }
                    ++i;
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int code = this.getClass().hashCode();
        if (this.paths != null) {
            int i = 0;
            while (i < this.paths.length) {
                code = code * 17 + this.paths[i].hashCode(this.getElementComparer());
                ++i;
            }
        }
        return code;
    }

    public TreePath[] getPaths() {
        return this.paths == null ? EMPTY_TREE_PATHS : (TreePath[])this.paths.clone();
    }

    public TreePath[] getPathsFor(Object element) {
        Object value;
        Object object = value = this.element2TreePaths == null ? null : this.element2TreePaths.get(element);
        if (value == null) {
            return EMPTY_TREE_PATHS;
        }
        if (value instanceof TreePath) {
            return new TreePath[]{(TreePath)value};
        }
        if (value instanceof List) {
            List l = (List)value;
            return l.toArray(new TreePath[l.size()]);
        }
        Assert.isTrue((boolean)false, (String)"Unhandled case");
        return null;
    }

    private static class InitializeData {
        List selection;
        TreePath[] paths;
        CustomHashtable element2TreePaths;

        private InitializeData(TreePath[] paths, IElementComparer comparer) {
            this.paths = new TreePath[paths.length];
            System.arraycopy(paths, 0, this.paths, 0, paths.length);
            this.element2TreePaths = new CustomHashtable(comparer);
            int size = paths.length;
            this.selection = new ArrayList(size);
            int i = 0;
            while (i < size) {
                Object lastSegment = paths[i].getLastSegment();
                Object mapped = this.element2TreePaths.get(lastSegment);
                if (mapped == null) {
                    this.selection.add(lastSegment);
                    this.element2TreePaths.put(lastSegment, paths[i]);
                } else if (mapped instanceof List) {
                    ((List)mapped).add(paths[i]);
                } else {
                    ArrayList<Object> newMapped = new ArrayList<Object>(2);
                    newMapped.add(mapped);
                    newMapped.add(paths[i]);
                    this.element2TreePaths.put(lastSegment, newMapped);
                }
                ++i;
            }
        }
    }
}

