/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.text.edits.TextEdit;

public final class TextEditCopier {
    private TextEdit fEdit;
    private Map fCopies;

    public TextEditCopier(TextEdit edit) {
        Assert.isNotNull((Object)edit);
        this.fEdit = edit;
        this.fCopies = new HashMap();
    }

    public TextEdit perform() {
        TextEdit result = this.doCopy(this.fEdit);
        if (result != null) {
            Iterator iter = this.fCopies.keySet().iterator();
            while (iter.hasNext()) {
                TextEdit edit = (TextEdit)iter.next();
                edit.postProcessCopy(this);
            }
        }
        return result;
    }

    public TextEdit getCopy(TextEdit original) {
        Assert.isNotNull((Object)original);
        return (TextEdit)this.fCopies.get(original);
    }

    private TextEdit doCopy(TextEdit edit) {
        TextEdit result = edit.doCopy();
        List children = edit.internalGetChildren();
        if (children != null) {
            ArrayList<TextEdit> newChildren = new ArrayList<TextEdit>(children.size());
            Iterator iter = children.iterator();
            while (iter.hasNext()) {
                TextEdit childCopy = this.doCopy((TextEdit)iter.next());
                childCopy.internalSetParent(result);
                newChildren.add(childCopy);
            }
            result.internalSetChildren(newChildren);
        }
        this.addCopy(edit, result);
        return result;
    }

    private void addCopy(TextEdit original, TextEdit copy) {
        this.fCopies.put(original, copy);
    }
}

