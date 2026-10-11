/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.PreferenceNode
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.preference.PreferenceNode;
import org.eclipse.ui.internal.IObjectContributor;
import org.eclipse.ui.internal.dialogs.PropertyPageManager;

public interface IPropertyPageContributor
extends IObjectContributor {
    public PreferenceNode contributePropertyPage(PropertyPageManager var1, Object var2);
}

