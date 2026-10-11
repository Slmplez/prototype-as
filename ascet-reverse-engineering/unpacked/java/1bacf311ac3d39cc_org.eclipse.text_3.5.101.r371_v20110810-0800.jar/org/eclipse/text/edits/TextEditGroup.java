/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.TextEdit;

public class TextEditGroup {
    private String fDescription;
    private List fEdits;

    public TextEditGroup(String name) {
        Assert.isNotNull((Object)name);
        this.fDescription = name;
        this.fEdits = new ArrayList(3);
    }

    public TextEditGroup(String name, TextEdit edit) {
        Assert.isNotNull((Object)name);
        Assert.isNotNull((Object)edit);
        this.fDescription = name;
        this.fEdits = new ArrayList(1);
        this.fEdits.add(edit);
    }

    public TextEditGroup(String name, TextEdit[] edits) {
        Assert.isNotNull((Object)name);
        Assert.isNotNull((Object)edits);
        this.fDescription = name;
        this.fEdits = new ArrayList<TextEdit>(Arrays.asList(edits));
    }

    public String getName() {
        return this.fDescription;
    }

    public void addTextEdit(TextEdit edit) {
        this.fEdits.add(edit);
    }

    public boolean removeTextEdit(TextEdit edit) {
        return this.fEdits.remove(edit);
    }

    public void clearTextEdits() {
        this.fEdits.clear();
    }

    public boolean isEmpty() {
        return this.fEdits.isEmpty();
    }

    public TextEdit[] getTextEdits() {
        return this.fEdits.toArray(new TextEdit[this.fEdits.size()]);
    }

    public IRegion getRegion() {
        int size = this.fEdits.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return ((TextEdit)this.fEdits.get(0)).getRegion();
        }
        return TextEdit.getCoverage(this.fEdits.toArray(new TextEdit[this.fEdits.size()]));
    }
}

