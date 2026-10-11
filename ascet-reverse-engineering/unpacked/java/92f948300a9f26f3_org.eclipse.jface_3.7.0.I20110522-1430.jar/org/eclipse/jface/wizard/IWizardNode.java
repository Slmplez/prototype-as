/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.wizard;

import org.eclipse.jface.wizard.IWizard;
import org.eclipse.swt.graphics.Point;

public interface IWizardNode {
    public void dispose();

    public Point getExtent();

    public IWizard getWizard();

    public boolean isContentCreated();
}

