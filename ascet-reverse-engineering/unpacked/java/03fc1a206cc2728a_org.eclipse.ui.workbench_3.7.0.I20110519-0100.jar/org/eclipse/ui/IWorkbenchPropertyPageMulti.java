/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.preference.IPreferencePage
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.preference.IPreferencePage;

public interface IWorkbenchPropertyPageMulti
extends IPreferencePage {
    public void setElements(IAdaptable[] var1);
}

