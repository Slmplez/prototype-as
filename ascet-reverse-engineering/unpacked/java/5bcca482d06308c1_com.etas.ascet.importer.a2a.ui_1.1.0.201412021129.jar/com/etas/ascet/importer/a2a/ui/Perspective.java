/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ui.IPageLayout
 *  org.eclipse.ui.IPerspectiveFactory
 */
package com.etas.ascet.importer.a2a.ui;

import org.eclipse.ui.IPageLayout;
import org.eclipse.ui.IPerspectiveFactory;

public class Perspective
implements IPerspectiveFactory {
    public static final String ID = "com.etas.ascet.importer.a2a.ui.perspective";

    public void createInitialLayout(IPageLayout layout) {
        layout.setEditorAreaVisible(false);
    }
}

