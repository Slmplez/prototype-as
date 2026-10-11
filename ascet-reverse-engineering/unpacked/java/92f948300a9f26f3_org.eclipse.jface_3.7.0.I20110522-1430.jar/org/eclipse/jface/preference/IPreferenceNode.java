/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.swt.graphics.Image;

public interface IPreferenceNode {
    public void add(IPreferenceNode var1);

    public void createPage();

    public void disposeResources();

    public IPreferenceNode findSubNode(String var1);

    public String getId();

    public Image getLabelImage();

    public String getLabelText();

    public IPreferencePage getPage();

    public IPreferenceNode[] getSubNodes();

    public IPreferenceNode remove(String var1);

    public boolean remove(IPreferenceNode var1);
}

