/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.ui.progress;

import org.eclipse.core.runtime.QualifiedName;

public interface IProgressConstants {
    public static final String PROPERTY_PREFIX = "org.eclipse.ui.workbench.progress";
    public static final QualifiedName KEEP_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.progress", "keep");
    public static final QualifiedName KEEPONE_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.progress", "keepone");
    public static final QualifiedName ACTION_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.progress", "action");
    public static final QualifiedName ICON_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.progress", "icon");
    public static final String PROGRESS_VIEW_ID = "org.eclipse.ui.views.ProgressView";
    public static final QualifiedName PROPERTY_IN_DIALOG = new QualifiedName("org.eclipse.ui.workbench.progress", "inDialog");
    public static final QualifiedName NO_IMMEDIATE_ERROR_PROMPT_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.progress", "delayErrorPrompt");
}

